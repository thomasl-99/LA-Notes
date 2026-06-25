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

Ja — onze eerste klant in de wijnimport werd binnen 4 weken 23× per
week genoemd in Google AI Overviews, met 6 Perplexity-citaten in
niche-zoekopdrachten. Zie onze posts voor cijfers.

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
        "text": "Ja — bij onze eerste klant in de wijnimport: 23 zoekopdrachten per week in Google AI Overviews, 6 Perplexity-citaten binnen 4 weken."
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
