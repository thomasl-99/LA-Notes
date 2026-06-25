#!/usr/bin/env bash
# Maak een nieuwe post op basis van data uit _data/<klant>.md
# Ondersteunt types: maandelijks, nieuwsbrief, persbericht, evenement
#
# Gebruik:
#   ./scripts/maak-post.sh <klant> <YYYY-MM> [type] [onderwerp]
#
# Voorbeelden:
#   ./scripts/maak-post.sh simply-fish 2026-07
#   ./scripts/maak-post.sh simply-fish 2026-07 nieuwsbrief "nieuwe lunchkaart"
#   ./scripts/maak-post.sh vinitho 2026-08 import_update "piemonte-reis"
#   ./scripts/maak-post.sh simply-fish 2026-07 evenement "wijnavond 18-08"

set -euo pipefail

KLANT="${1:-}"
MAAND="${2:-}"
POST_TYPE="${3:-maandelijks}"
ONDERWERP="${4:-update}"

if [ -z "$KLANT" ] || [ -z "$MAAND" ]; then
  echo "Gebruik: $0 <klant> <YYYY-MM> [type] [onderwerp]"
  echo ""
  echo "Klanten:    simply-fish | vinitho | coast"
  echo "Types:      maandelijks | nieuwsbrief | persbericht | evenement"
  echo "            import_update | proeverij (vinitho-specifiek)"
  echo ""
  echo "Voorbeelden:"
  echo "  $0 simply-fish 2026-07"
  echo "  $0 simply-fish 2026-07 nieuwsbrief nieuwe-lunchkaart"
  echo "  $0 vinitho 2026-08 evenement wijnproeverij-piemonte"
  exit 1
fi

# Bestaat de klant in het klantenregister?
if [ ! -f "_data/klanten.md" ]; then
  echo "FOUT: _data/klanten.md bestaat niet."
  exit 1
fi

if ! grep -q "slug: ${KLANT}$" "_data/klanten.md"; then
  echo "FOUT: klant '${KLANT}' niet in _data/klanten.md."
  echo "Bekende klanten:"
  grep "slug:" "_data/klanten.md" | sed 's/.*slug: //; s/ *$//'
  exit 1
fi

# Is de klant actief?
SECTIE=$(awk -v klant="${KLANT}" '
  $0 ~ "slug: " klant { in_klant=1 }
  in_klant && /^  - slug:/ && $0 !~ "slug: " klant { in_klant=0 }
  in_klant && /actief:/ { gsub(/.*actief: */, ""); gsub(/ *$/, ""); print; exit }
' "_data/klanten.md")

if [ "$SECTIE" != "true" ]; then
  echo "FOUT: klant '${KLANT}' is niet actief (actief: ${SECTIE:-onbekend})."
  echo "Activeer in _data/klanten.md of gebruik een actieve klant."
  exit 1
fi

# Trek basisgegevens uit klantenregister
NAAM=$(awk -v klant="${KLANT}" '
  $0 ~ "slug: " klant { in_klant=1 }
  in_klant && /^  - slug:/ && $0 !~ "slug: " klant { in_klant=0 }
  in_klant && /naam:/ { gsub(/.*naam: */, ""); gsub(/[" ]*$/, ""); print; exit }
' "_data/klanten.md")

[ -z "$NAAM" ] && NAAM="$KLANT"

# Data-bestand (kan maandelijks zijn OF klant-specifiek data-bestand)
DATA_FILE="_data/${KLANT}.md"
[ ! -f "$DATA_FILE" ] && DATA_FILE="_data/klanten.md"

# Datum + bestandsnaam
JAAR="${MAAND%%-*}"
MAAND_NUMMER="${MAAND##*-}"
MAAND_NL=$(LC_ALL=C date -d "${MAAND}-01" +"%B" 2>/dev/null || echo "${MAAND}")
MAAND_LOWER=$(echo "$MAAND_NL" | tr '[:upper:]' '[:lower:]')

# Datum voor de post: 1e van de maand voor maandelijks, vandaag voor andere
if [ "$POST_TYPE" = "maandelijks" ]; then
  POST_DATUM="${MAAND}-01"
  BESTAND="_posts/${MAAND}-01-${KLANT}-${MAAND_LOWER}.md"
else
  POST_DATUM="$(date +%Y-%m-%d)"
  ONDERWERP_SLUG=$(echo "$ONDERWERP" | tr '[:upper:]' '[:lower:]' | tr ' ' '-' | tr -cd 'a-z0-9-')
  BESTAND="_posts/${POST_DATUM}-${KLANT}-${ONDERWERP_SLUG}.md"
fi

# Kies het juiste sjabloon
SJABLOON="_posts/_template-${POST_TYPE}.md"
if [ ! -f "$SJABLOON" ]; then
  echo "FOUT: sjabloon ${SJABLOON} bestaat niet."
  echo "Beschikbare types: $(ls _posts/_template-*.md | sed 's/.*_template-//; s/.md//' | tr '\n' ' ')"
  exit 1
fi

# Genereer de post uit sjabloon
cp "$SJABLOON" "$BESTAND"

# Vervang placeholders in de gekopieerde post
sed -i "s/\[KLANT\]/${NAAM}/g; s/YYYY-MM-DD/${POST_DATUM}/g" "$BESTAND"

# Specifieke vervangingen per type
case "$POST_TYPE" in
  maandelijks)
    sed -i "s/\[MAAND JAAR\]/${MAAND_NL^} ${JAAR}/g" "$BESTAND"
    # Voeg feiten in op basis van _data
    if [ -f "$DATA_FILE" ]; then
      START_LINE=$(grep -n "^  ${MAAND}:" "$DATA_FILE" 2>/dev/null | head -1 | cut -d: -f1)
      if [ -n "$START_LINE" ]; then
        END_LINE=$(awk -v start="$START_LINE" 'NR > start && /^  [0-9]{4}-[0-9]{2}:/ { print NR; exit }' "$DATA_FILE")
        [ -z "$END_LINE" ] && END_LINE="999"
        FEITEN=$(sed -n "${START_LINE},${END_LINE}p" "$DATA_FILE" | \
          grep 'tekst:' | \
          sed 's/.*tekst: *//; s/"//g; s/ *$//' | \
          grep -v '^$' | \
          sed 's/^/- /' || true)
        if [ -n "$FEITEN" ]; then
          # Vervang placeholder door feiten
          sed -i "/_Nog geen feiten ingevuld/,/^_/c\\${FEITEN}" "$BESTAND"
        fi
      fi
    fi
    ;;
  evenement)
    sed -i "s/\[EVENEMENT-NAAM\]/${ONDERWERP}/g" "$BESTAND"
    ;;
  *)
    # nieuwsbrief / persbericht — basis vervanging
    sed -i "s/\[KORTE TITEL: max 8 woorden\]/${ONDERWERP^}/g" "$BESTAND"
    sed -i "s/\[PERSBERICHT-TITEL: actief, max 12 woorden\]/${ONDERWERP^}/g" "$BESTAND"
    ;;
esac

echo ""
echo "✓ Post aangemaakt: ${BESTAND}"
echo "  Type: ${POST_TYPE}"
echo "  Klant: ${NAAM}"
echo "  Datum: ${POST_DATUM}"
echo ""
echo "Volgende stappen:"
echo "  1. Open ${BESTAND}"
echo "  2. Vul [HOOFDJES] in met eigen content"
echo "  3. Verwijder overbodige # commentaar-regels"
echo "  4. Controleer AI-summary (1 zin)"
echo "  5. Commit + push"
