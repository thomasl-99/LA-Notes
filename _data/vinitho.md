---
# Aanvullende data — Vinitho (Italiaanse wijnimport)
# Vul elke maand in wat relevant is.

basis:
  naam: Vinitho
  adres: Jan Teulingslaan 32, 1187SJ Amstelveen
  kvk: 97388505
  btw_tarief: 9  # wijn = 9%
  import_regio: [Piemonte, Toscane]
  distributeurs_it: []  # naam importeur Italië, of leeg

# Bezigheden per maand
bezigheden:
  2026-07:
    - tekst: ""
      type: nieuw_product  # of: import | proeverij | sluiting | bijzonderheid
    - tekst: ""
      type: import
  2026-08: []
  2026-09: []

# Nieuwe flessen / wijnen deze maand
# Alleen invullen als je ze echt hebt ingekocht
nieuwe_wijnen:
  2026-07:
    - naam: ""           # bijv. "Barbera d'Alba 2024 — Cascina X"
      regio: ""
      flesprijs_incl_btw:
      aantal_flessen:
      bron: leverancier_factuur | import_document | anders
  2026-08: []

# Statistieken (alleen als je ze meet — niet verzinnen)
stats:
  2026-06:
    flessen_verkocht:  # alleen als je 't bijhoudt
    klanten_nieuw:
    omzet_index:
  2026-07: {}

# Proeverijen / events
events:
  2026-07: []
  2026-08:
    - datum: ""
      type: proeverij  # of: importreis | beurs
      locatie: ""
      bijzonderheid: ""
  Q3-2026: []
