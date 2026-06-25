---
# KLANTENREGISTER — LA Notes
# Dit bestand groeit mee. Voeg een nieuwe klant toe als entry onder `klanten:`.
# Activeer = true als de klant maandelijkse posts krijgt.
# Activeer = false als je de klant nog niet bedient.

klanten:
  # === Simply Fish (visrestaurant) — actief ===
  - slug: simply-fish
    naam: Simply Fish
    type: horeca
    adres: Koninginneweg 212, 1075EL Amsterdam
    kvk:
    btw_tarief: 9
    website: simplyfish.nl
    telefoon: "+31 6 22 50 58 78"
    reserveren:
      url: "https://bookings.zenchef.com/results?rid=374081&pid=1001&shxpid=117174"
      telefoon: "+31 6 22 50 58 78"
    actief: true
    gestart: 2026-07
    contact:
      - naam: Thomas Langeberg
        rol: eigenaar
    post_types:
      - maandelijks
      - nieuwsbrief
      - persbericht
      - evenement

  # === Vinitho (Italiaanse wijnimport) — actief ===
  - slug: vinitho
    naam: Vinitho
    type: wijnimport
    adres: Jan Teulingslaan 32, 1187SJ Amstelveen
    kvk: 97388505
    btw_tarief: 9
    website: thomasl-99.github.io/Vinitho
    actief: true
    gestart: 2026-08
    contact:
      - naam: Thomas Langeberg
        rol: eigenaar
    post_types:
      - maandelijks
      - import_update
      - proeverij

  # === Coast (RVS WC-systeem) — nog niet ===
  - slug: coast
    naam: Coast
    type: productontwerp
    actief: false
    gestart:
    post_types: []
    reden_niet_actief: "Pre-order fase, wacht op productie-start"

# === TOEKOMSTIGE KLANTEN ===
# Voeg toe als:
#   - slug: bedrijfsnaam-zonder-spaties
#     naam: Bedrijfsnaam
#     type: horeca | wijnimport | dienst | productontwerp | winkel | overig
#     actief: false
#     gestart:
#     post_types: []
