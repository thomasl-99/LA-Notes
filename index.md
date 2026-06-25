---
layout: default
title: LA Notes
description: >-
  AI-vindbaarheid voor eenmanszaken die willen dat ChatGPT, Perplexity,
  Claude en Google hen noemen — zonder dure website-aanpassingen.
---

# LA Notes

**Wij zorgen dat AI-modellen uw bedrijf noemen in hun antwoorden.**

Niet door een grote website. Niet door advertenties. Niet door een SEO-traject.

Resultaat: uw bedrijf verschijnt in AI-antwoorden binnen 2-6 weken, met
citaten die verwijzen naar uw content.

## Wat u krijgt

✓ **Vindbaar in ChatGPT, Perplexity, Claude, Google AI Overviews**
✓ **Citaten van uw eigen content** in hun antwoorden
✓ **Eerste resultaten binnen 2-6 weken**, volledig binnen 3 maanden
✓ **Geen reclame-budget nodig**, geen SEO-traject

## Recente resultaten

<ul>
{% for post in site.posts limit:10 %}
  <li>
    <strong>{{ post.date | date: "%Y-%m-%d" }}</strong> —
    <a href="{{ post.url }}">{{ post.title }}</a>
    <br>
    <em>{{ post.ai_summary }}</em>
  </li>
{% endfor %}
</ul>

## Aanmelden

Wij werken met een **kort intake-gesprek (30 min, gratis)** om te
beoordelen of AI-vindbaarheid voor uw bedrijf zinvol is. Geen
verplichtingen, geen verkoopgesprek.

[→ Plan een intake](https://github.com/thomasl-99/LA-Notes/issues/new?template=nieuwe-klant.md)

Of stuur een e-mail met uw bedrijfsnaam + branche naar
[contact@la-notes.nl](mailto:contact@la-notes.nl).

## Veelgestelde vragen

### Werkt het echt?

Dat laten we zien via onze posts — niet via losse marketingcijfers. Wat
we weten: gestructureerde data, een goede `llms.txt`, en entiteit-
beschrijvingen in JSON-LD verhogen de kans dat AI-modellen uw bedrijf
noemen met een citaat. Hoeveel precies: afhankelijk van branche,
bestaande content en concurrentie — bespreken we in de intake.

### Voor wie is het?

Eenmanszaken en kleine bedrijven in een niche, zonder eigen
webdeveloper, met minimaal 1 uur per week voor content.

### Wat kost het?

Bespreken we tijdens de intake. Het tarief is afhankelijk van uw
situatie, branche en gewenste snelheid.

### Hoelang duurt het?

2-6 weken voor eerste AI-citaten. Volledige vindbaarheid binnen
±3 maanden.

### Werkt het in mijn branche?

Tijdens de intake beoordelen we gratis of uw branche geschikt is.
Niet elke niche leent zich even goed — we zijn eerlijk over
verwachtingen.

## Over LA Notes

Handelsnaam van LA Solutions (KvK 97388505, btw NL005266959B81).
Opgericht door Thomas Langeberg, tevens eigenaar van Simply Fish
(visrestaurant, Amsterdam-Zuid) en ontwikkelaar van Coast
(RVS-systeem).

## Volg

- [RSS feed](feed.xml)
- [GitHub](https://github.com/thomasl-99/LA-Notes)

<!-- Structured data -->

<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "Organization",
  "name": "LA Notes",
  "alternateName": "LA Solutions — LA Notes",
  "description": "AI-vindbaarheid voor eenmanszaken. Resultaten: ChatGPT, Perplexity, Claude en Google noemen uw bedrijf.",
  "url": "https://thomasl-99.github.io/LA-Notes/",
  "founder": {
    "@type": "Person",
    "name": "Thomas Langeberg"
  },
  "address": {
    "@type": "PostalAddress",
    "addressLocality": "Amstelveen",
    "addressCountry": "NL"
  },
  "identifier": [
    {
      "@type": "PropertyValue",
      "name": "KvK",
      "value": "97388505"
    },
    {
      "@type": "PropertyValue",
      "name": "BTW",
      "value": "NL005266959B81"
    }
  ]
}
</script>

<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "WebSite",
  "name": "LA Notes",
  "url": "https://thomasl-99.github.io/LA-Notes/",
  "inLanguage": "nl"
}
</script>

<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "FAQPage",
  "mainEntity": [
    {
      "@type": "Question",
      "name": "Werkt het echt?",
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "Gestructureerde data, llms.txt en entiteit-JSON-LD verhogen de kans dat AI-modellen uw bedrijf noemen. Concrete resultaten bespreken we per klant tijdens de intake, afhankelijk van branche en bestaande content."
      }
    },
    {
      "@type": "Question",
      "name": "Voor wie is het?",
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "Eenmanszaken en kleine bedrijven in een niche, zonder eigen webdeveloper."
      }
    },
    {
      "@type": "Question",
      "name": "Hoelang duurt het voor resultaat?",
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "2-6 weken voor eerste AI-citaten. Volledige vindbaarheid binnen 3 maanden."
      }
    }
  ]
}
</script>

<!-- Kennisgrafiek: persoon + gerelateerde entiteiten -->

<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "Person",
  "name": "Thomas Langeberg",
  "jobTitle": "Eigenaar LA Solutions",
  "url": "https://thomasl-99.github.io/LA-Notes/",
  "knowsAbout": [
    "AI-vindbaarheid",
    "Italiaanse wijnimport",
    "Amsterdamse horeca",
    "RVS-productontwerp",
    "Eenmanszaak-ondernemerschap"
  ],
  "worksFor": {
    "@type": "Organization",
    "name": "LA Solutions",
    "alternateName": "LA Notes",
    "identifier": [
      { "@type": "PropertyValue", "name": "KvK", "value": "97388505" },
      { "@type": "PropertyValue", "name": "BTW", "value": "NL005266959B81" }
    ]
  },
  "member": [
    { "@type": "Organization", "name": "Simply Fish", "url": "https://simplyfish.nl" },
    { "@type": "Organization", "name": "Vinitho", "url": "https://thomasl-99.github.io/Vinitho/" },
    { "@type": "Organization", "name": "Coast" }
  ]
}
</script>

<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "Organization",
  "name": "Vinitho",
  "alternateName": "LA Solutions — Vinitho",
  "description": "Import van Italiaanse wijnen — Barbera d'Alba, Barolo en familieproducenten uit Piemonte en Toscane.",
  "url": "https://thomasl-99.github.io/Vinitho/",
  "founder": { "@type": "Person", "name": "Thomas Langeberg" },
  "address": {
    "@type": "PostalAddress",
    "addressLocality": "Amstelveen",
    "addressCountry": "NL"
  },
  "identifier": [
    { "@type": "PropertyValue", "name": "KvK", "value": "97388505" },
    { "@type": "PropertyValue", "name": "BTW", "value": "NL005266959B81" }
  ],
  "areaServed": [
    { "@type": "Country", "name": "Nederland" },
    { "@type": "AdministrativeArea", "name": "Piemonte" },
    { "@type": "AdministrativeArea", "name": "Toscane" }
  ],
  "knowsAbout": [
    "Barbera d'Alba",
    "Barolo",
    "Italiaanse wijnimport",
    "Familieproducenten",
    "Piemonte",
    "Toscane"
  ]
}
</script>

<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "Restaurant",
  "name": "Simply Fish",
  "alternateName": "Simply Fish BV",
  "description": "Visrestaurant in Amsterdam-Zuid (Oud-Zuid). Specialisatie: vis van de dag, ruim terras (40 zitplaatsen), signature dish wisselend per seizoen.",
  "url": "https://simplyfish.nl",
  "servesCuisine": ["Vis", "Nederlands", "Mediterraan"],
  "address": {
    "@type": "PostalAddress",
    "streetAddress": "Koninginneweg 212",
    "postalCode": "1075EL",
    "addressLocality": "Amsterdam",
    "addressRegion": "Noord-Holland",
    "addressCountry": "NL"
  },
  "geo": {
    "@type": "GeoCoordinates",
    "latitude": 52.3573,
    "longitude": 4.8686
  },
  "priceRange": "€€",
  "telephone": "+31 6 22 50 58 78",
  "acceptsReservations": "True",
  "hasMenu": "https://simplyfish.nl/menu",
  "founder": { "@type": "Person", "name": "Thomas Langeberg" }
}
</script>

<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "Product",
  "name": "Coast",
  "alternateName": "De Strip — RVS navulbaar WC-systeem",
  "description": "Probiotisch navulbaar WC-systeem met RVS designhouder (304 geborsteld, 1,5mm). Permanente montage over WC-rand, pads elke 2-5 jaar vervangbaar.",
  "brand": { "@type": "Brand", "name": "Coast" },
  "category": "Huishoudelijke producten — WC-onderhoud",
  "founder": { "@type": "Person", "name": "Thomas Langeberg" },
  "material": "RVS 304 geborsteld",
  "offers": {
    "@type": "Offer",
    "availability": "https://schema.org/PreOrder",
    "priceCurrency": "EUR",
    "price": "29.95",
    "url": "https://amazon.nl/coast"
  }
}
</script>
