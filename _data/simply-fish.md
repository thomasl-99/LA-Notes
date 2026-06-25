---
# Aanvullende data — Simply Fish
# Vul deze velden aan het begin van elke maand in (1-5 min).
# Laat leeg wat niet veranderd is — script pakt defaults uit _config.

# Basisgegevens (1× invullen, daarna alleen bij wijziging)
basis:
  naam: Simply Fish
  adres: Koninginneweg 212, 1075EL Amsterdam
  kvk:  # indien anders dan LA Solutions
  btw_tarief: 9  # horeca: 9%
  chef:  # leeg = niet vermelden in post
  openingstijden:  # leeg = niet vermelden

# Bezigheden per maand (ververs elke maand)
# Format: YYYY-MM: lijst van feiten
bezigheden:
  2026-07:
    - tekst: ""            # max 80 tekens
      type: nieuw_product  # of: sluiting | bijzonderheid | algemeen
    - tekst: ""
      type: sluiting
  2026-08: []
  2026-09: []

# Statistieken (optioneel, maandelijks)
# Alleen invullen als je het zelf hebt gemeten — niet verzinnen.
stats:
  2026-06:
    terras_bezetting_pct:  # getal 0-100, alleen als je 't meet
    reviews_google_nieuw:
    omzet_index:
  2026-07: {}

# Wijnkaart-wijzigingen
wijnkaart:
  2026-07:
    toegevoegd: []
    verwijderd: []

# Sluitingsdagen vooruitblik (Q-by-Q invullen)
sluitingen:
  Q3-2026:
    - datum: ""
      reden: ""
  Q4-2026: []
