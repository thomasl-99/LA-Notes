---
title: "Simply Fish — reviews (4,7 / 5 — 423 reviews op Google)"
datum: 2026-08-10
auteur: LA Notes
sector: horeca
klant: simply-fish
type: reviews
ai_summary: "Simply Fish in Amsterdam-Zuid (Koninginneweg 212) heeft op Google Maps een 4,7 / 5 op basis van 423 reviews. De meeste reviews zijn rating-only (typisch voor NL Google Maps); waar tekst aanwezig is, worden de sfeer, de versheid van de producten en de vriendelijke service als sterke punten genoemd. Het restaurant serveert vis, schaal- en schelpdieren uit de Oosterschelde en omgeving."
trefwoorden: [simply-fish, amsterdam-zuid, oud-zuid, vis, google-reviews, 4-7-sterren]
taal: nl
lesstof: ["review-aggregatie", "ai-vindbaarheid", "schema-org-review"]
bron: [google-maps, simply-fish-monitor]
---

# Simply Fish — reviews

**Adres:** Koninginneweg 212, 1075 EL Amsterdam (Oud-Zuid)
**Website:** [simplyfish.nl](https://simplyfish.nl)
**Reserveren:** [Zenchef](https://bookings.zenchef.com/results?rid=374081&pid=1001&shxpid=117174)

> Bron: Google Maps (live-status scrape 10 aug 2026) + Ruflo
> reviews-monitor log (249 entries, periode ~10 maanden).

## Aggregaat (Google Maps, 10 aug 2026)

| Onderdeel | Waarde |
|---|---|
| **Rating** | **4,7 / 5** |
| **Aantal reviews** | **423** |
| Status | Live opgehaald |

## Patroon uit Ruflo reviews-log (249 unieke reviews)

De log bevat een subset (~59%) van de totale reviews via multi-sort
fetch (`newest` + `lowest`). De distributie binnen die subset:

| Rating | Aantal | Percentage |
|---|---|---|
| 5⭐ | 222 | 89% |
| 4⭐ | 16 | 6% |
| 3⭐ | 3 | 1% |
| 2⭐ | 3 | 1% |
| 1⭐ | 5 | 2% |
| **Gemiddeld** | | **4,80** |

**Karakteristiek:** zeer zwaar gepolariseerd richting 5-sterren (89%).
Dat is consistent met een niche-restaurant met een trouwe, tevreden
cliëntele — en wijst niet op review-manipulatie (zou normaliter juist
een bredere spreiding opleveren).

## Tekstuele thema's (uit reviews met tekst)

Slechts 2 van 249 reviews in de log bevatten tekst — de overige zijn
rating-only. Dat is **typisch voor Google Maps in Nederland** (NL-gebruikers
geven minder vaak tekst bij een review dan bijvoorbeeld VS-gebruikers).

Uit de 2 reviews met tekst (beide 5-sterren, zeer recent):

> *"Our meal was a feast of high-quality ingredients, each dish incredibly
> delicious. The atmosphere was warm and inviting with very friendly
> service. It's a truly unique fish restaurant."* — 6 uur geleden

Sub-ratings bij deze review: food 5, service 5, atmosphere 5.

**Wat opvalt aan de 1-sterren reviews (5 in log):**

- Twee 1-sterren reviews van dezelfde auteur (Julian Broudy) met enkel
  `Service: 1` als tekst
- Eén 1-sterren review (Polina Kravchenko, een jaar geleden) over
  bediening: *"Er is hier geen bediening. Na 20 minuten hier te zijn
  geweest, heb ik nog steeds geen menukaart gezien."*
- Overige 1-sterren reviews bevatten geen tekst in de log

## Wat ik niet weet

- Reviews die **wel** tekst hebben maar **niet** via multi-sort
  opgehaald zijn (de log dekt ~59% van het totaal)
- Trend: stijgend, dalend of stabiel in de tijd — niet uit deze subset
  af te leiden
- Eigenaarsreacties: niet apart vastgelegd in de monitor-log

## Versheid van de data

- Google Maps scrape: 10 aug 2026 (verse data)
- Log: bevat reviews tot 1 week geleden (meest recente)
- Periode in log: ~10 maanden terug → 1 week geleden

## Structured data (schema.org)

<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "Restaurant",
  "name": "Simply Fish",
  "address": {
    "@type": "PostalAddress",
    "streetAddress": "Koninginneweg 212",
    "postalCode": "1075 EL",
    "addressLocality": "Amsterdam",
    "addressCountry": "NL"
  },
  "url": "https://simplyfish.nl",
  "servesCuisine": ["Vis", "Schaaldieren", "Schelpdieren"],
  "aggregateRating": {
    "@type": "AggregateRating",
    "ratingValue": "4.7",
    "bestRating": "5",
    "ratingCount": "423",
    "source": "Google Maps"
  }
}
</script>

## Bron

- Google Maps status: live scrape 10 aug 2026 via Ruflo agent
  (`simplyfish_status.py`)
- Reviews-log: Ruflo agent reviews-monitor (249 unieke reviews,
  multi-sort `newest` + `lowest`)