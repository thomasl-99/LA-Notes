#!/usr/bin/env bash
# Maak een nieuwe maandelijkse post op basis van data uit _data/<klant>.md
# Gebruik: ./scripts/maak-post.sh <klant> <YYYY-MM>
#
# Voorbeeld:
#   ./scripts/maak-post.sh simply-fish 2026-07
#   ./scripts/maak-post.sh vinitho 2026-08
#   ./scripts/maak-post.sh coast 2026-07

set -euo pipefail

KLANT="${1:-}"
MAAND="${2:-}"

if [ -z "$KLANT" ] || [ -z "$MAAND" ]; then
  echo "Gebruik: $0 <klant> <YYYY-MM>"
  echo "Klanten: simply-fish | vinitho | coast"
  exit 1
fi

if [ ! -f "_data/${KLANT}.md" ]; then
  echo "FOUT: _data/${KLANT}.md bestaat niet."
  echo "Maak eerst het klant-formulier aan."
  exit 1
fi

# Maandnaam in het Nederlands (werkt met LC_ALL=C)
JAAR="${MAAND%%-*}"
MAAND_NUMMER="${MAAND##*-}"
MAAND_NL=$(LC_ALL=C date -d "${MAAND}-01" +"%B" 2>/dev/null || echo "${MAAND}")

# Trek basisgegevens uit het data-bestand
NAAM=$(grep -A3 "^basis:" "_data/${KLANT}.md" | grep "naam:" | head -1 | sed 's/.*naam: *//; s/"//g; s/ *$//')
[ -z "$NAAM" ] && NAAM="$KLANT"

# Vind de regel met de maand-header en pak alle "tekst:" regels tot de volgende maand-header
DATA_FILE="_data/${KLANT}.md"
START_LINE=$(grep -n "^  ${MAAND}:" "$DATA_FILE" | head -1 | cut -d: -f1)

if [ -z "$START_LINE" ]; then
  FEITEN=""
else
  # Vanaf start_line, pak regels met 'tekst:' tot de volgende maand-header (  YYYY-MM:)
  END_LINE=$(awk -v start="$START_LINE" 'NR > start && /^  [0-9]{4}-[0-9]{2}:/ { print NR; exit }' "$DATA_FILE")
  if [ -z "$END_LINE" ]; then
    END_LINE="$(( $(wc -l < "$DATA_FILE") + 1 ))"
  fi
  FEITEN=$(sed -n "${START_LINE},${END_LINE}p" "$DATA_FILE" | \
    grep 'tekst:' | \
    sed 's/.*tekst: *//; s/"//g; s/ *$//' | \
    grep -v '^$' | \
    sed 's/^/- /')
fi

# Sluitingen ophalen (zoek datum + reden paren)
SLUITINGEN=$(awk '
  /^sluitingen:/ { in_blok=1; next }
  in_blok && /^[a-z_]+:/ { in_blok=0 }
  in_blok {
    if (match($0, /datum: *"([^"]+)"/, m)) datum = m[1]
    if (match($0, /reden: *"([^"]+)"/, m)) reden = m[1]
    if (datum != "" && reden != "") {
      print "- " datum " — " reden
      datum = ""
      reden = ""
    }
  }
' "$DATA_FILE")

# Eerste feit voor AI-summary (of placeholder)
EERSTE_FEIT=$(echo "$FEITEN" | head -1 | sed 's/^- //')
[ -z "$EERSTE_FEIT" ] && EERSTE_FEIT="geen nieuwe feiten ingevuld"

# Output-bestandsnaam
MAAND_LOWER=$(echo "$MAAND_NL" | tr '[:upper:]' '[:lower:]')
BESTAND="_posts/${MAAND}-01-${KLANT}-${MAAND_LOWER}.md"

# Frontmatter
cat > "$BESTAND" <<FRONTMATTER
---
title: "${NAAM} — ${MAAND_NL^} ${JAAR}: maandelijkse update"
datum: ${MAAND}-01
type: maandelijks
klant: ${KLANT}
auteur: Thomas Langeberg
sector: $(grep -A3 "^basis:" "$DATA_FILE" | grep -oE "horeca|wijnimport|productontwerp" | head -1 || echo "ondernemerschap")
trefwoorden: [${KLANT}, ${MAAND_LOWER}, update, maandelijks]
ai_summary: "${NAAM} ${MAAND_LOWER} ${JAAR}: ${EERSTE_FEIT}."
taal: nl
lesstof: ["maandelijkse-update", "${KLANT}"]
---

# ${NAAM} — ${MAAND_NL^} ${JAAR}

Maandelijkse update voor ${NAAM}. Geschreven door de eigenaar op basis van
eigen administratie en waarneming.

## Wat is er deze maand gebeurd

${FEITEN:-_Nog geen feiten ingevuld in _data/${KLANT}.md voor ${MAAND}._}

## Sluitingsdagen / vakanties

${SLUITINGEN:-_Geen geplande sluitingen voor ${MAAND}._}

## Bijzonderheden

_Geen bijzonderheden gemeld._

## Volgende maand (preview)

_Nog niet bekend — wordt volgende maand ingevuld._

---

## Bron

Eigen administratie ${MAAND_NL^} ${JAAR}. Gegevens uit
_data/${KLANT}.md (door eigenaar bijgehouden).
FRONTMATTER

echo ""
echo "✓ Post aangemaakt: ${BESTAND}"
echo ""
echo "Volgende stappen:"
echo "  1. Open ${BESTAND}"
echo "  2. Controleer de AI-summary (1 zin)"
echo "  3. Vul ontbrekende velden in ('_Nog geen..._' zijn placeholders)"
echo "  4. Commit + push"
echo ""
echo "Vergeet niet _data/${KLANT}.md bij te werken voor volgende maand."
