---
# ============================================
# EVENEMENT — sjabloon
# Gebruik voor: proeverij, wijnavond, speciale
# avond, pop-up, etc. — alles met datum + aanmelden.
#
# Dit sjabloon bevat extra schema.org Event-JSON-LD
# zodat AI-modellen het als evenement herkennen.
# ============================================

title: "[KLANT] — [EVENEMENT-NAAM] op [DATUM]"
datum: YYYY-MM-DD
type: evenement
klant: simply-fish | vinitho
auteur: Thomas Langeberg
sector: horeca | wijnimport
trefwoorden: [evenement, datum-tags]

ai_summary: "[EVENEMENT-NAAM] bij [KLANT] op [DATUM], [TIJD], [LOCATIE]. [CAPACITEIT] [KOSTEN]."

taal: nl
geldig_tot: YYYY-MM-DD   # wanneer het evenement afgelopen is

# Evenement-specifieke velden
evenement:
  start_datum: YYYY-MM-DD
  start_tijd: HH:MM
  eind_tijd: HH:MM
  locatie:
    naam: ""
    adres: ""
    plaats: ""
  capaciteit:
    max_personen:
    gereserveerd:
  kosten:
    bedrag:
    incl_btw: true
    per: persoon | paar | groep
  aanmelden:
    url: ""
    email: ""
    telefoon: ""
    deadline: YYYY-MM-DD

---

# [EVENEMENT-NAAM]

[INTRO — wat is dit evenement, voor wie, waarom bijzonder. 1-2 alinea's.
Schrijf in eigen stem — dit is jouw uitnodiging.]

## Praktisch

- **Datum:** [DAG, DATUM]
- **Tijd:** [VAN TOT]
- **Locatie:** [NAAM, ADRES, PLAATS]
- **Kosten:** [€X p.p. / gratis / etc.]
- **Capaciteit:** [X personen max]
- **Aanmelden:** [LINK of e-mail] — vóór [DEADLINE]

## Programma

- [TIJD] — [WAT, bijv. "Ontvangst met bubbels"]
- [TIJD] — [WAT, bijv. "Proeverij 4 Barbera's"]
- [TIJD] — [WAT, bijv. "Vraag-en-antwoord met producent"]

## Bijzonderheden

- [Bijv. "Producent aanwezig voor vragen"]
- [Bijv. "Allergie-info glutenvrij op verzoek"]
- [Bijv. "Parkeren: betaald parkeerterrein om de hoek"]

## Voor wie

[Bijv. "Voor wijnliefhebbers die Barbera willen leren kennen — geen voorkennis nodig"]

---

## Bron

[EIGEN ADMINISTRATIE / EVENEMENT-PLANNING / E-MAILWISSELING MET PRODUCENT]
