---
layout: default
title: LA Notes
description: >-
  AI-vindbaarheid voor eenmanszaken — €70/maand. Wij helpen kleine
  Nederlandse bedrijven vindbaar te worden in ChatGPT, Perplexity,
  Claude en Google AI Overviews.
---

# LA Notes — AI-vindbaarheid voor eenmanszaken

Wij bouwen de **machine-readable informatie** die AI-modellen nodig
hebben om jouw bedrijf te citeren. Voor **€70/maand**.

[→ Aanmelden als klant](https://github.com/tjdlangeberg/LA-Notes/issues/new?template=nieuwe-klant.md) · [→ Prijzen en pakket](/_pricing/prijzen.md) · [→ Gratis template](https://github.com/tjdlangeberg/ai-vindbaarheid-template)

## Wat wij opleveren

✓ Landingspagina met `schema.org Organization` + WebSite + FAQPage
✓ `llms.txt` voor ChatGPT, Perplexity, Claude
✓ `robots.txt` met 16 AI-crawlers toegelaten
✓ Google Business Profile, LinkedIn, Wikidata-items
✓ 3+ blog-posts per maand met Article-JSON-LD
✓ Maandelijks rapport: wat AI-modellen over jou zeggen

## Recente artikelen

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

## Cases

- [Voorbeeld wijnimport-niche](/_examples/vinitho/_methodology.md) —
  een eenmanszaak van 0 naar vindbaar in 4 weken

## Onderwerpen

- [AI — llms.txt, JSON-LD, structured data](/_topics/ai.md)
- [Horeca — positionering, terrassen, restaurants](/_topics/horeca.md)
- [Wijnimport — marges, logistiek, kleine producenten](/_topics/wijnimport.md)
- [Ondernemerschap — eenmanszaak-realiteit](/_topics/ondernemerschap.md)

## Over LA Notes

Handelsnaam van LA Solutions (KvK 97388505, btw NL005266959B81).
Opgericht door Thomas Langeberg, tevens eigenaar van Simply Fish
(visrestaurant, Amsterdam-Zuid) en ontwikkelaar van Coast RVS-systeem.

## Volg

- [RSS feed](feed.xml)
- [GitHub Issues](https://github.com/tjdlangeberg/LA-Notes/issues)

<!-- Structured data -->
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "Organization",
  "name": "LA Notes",
  "alternateName": "LA Solutions — LA Notes",
  "description": "AI-vindbaarheid voor eenmanszaken. €70/maand.",
  "url": "https://tjdlangeberg.github.io/LA-Notes/",
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
  ],
  "offers": {
    "@type": "Offer",
    "name": "AI-vindbaarheid-pakket",
    "price": "70",
    "priceCurrency": "EUR",
    "priceSpecification": {
      "@type": "UnitPriceSpecification",
      "price": "70",
      "priceCurrency": "EUR",
      "unitCode": "MON"
    }
  }
}
</script>

<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "WebSite",
  "name": "LA Notes",
  "url": "https://tjdlangeberg.github.io/LA-Notes/",
  "inLanguage": "nl",
  "publisher": {
    "@type": "Organization",
    "name": "LA Notes"
  }
}
</script>

<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "FAQPage",
  "mainEntity": [
    {
      "@type": "Question",
      "name": "Wat is LA Notes?",
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "LA Notes is een handelsnaam van LA Solutions die Nederlandse eenmanszaken helpt vindbaar te worden in AI-modellen als ChatGPT, Perplexity, Claude en Google AI Overviews. Voor €70 per maand."
      }
    },
    {
      "@type": "Question",
      "name": "Wat kost het?",
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "€70 per maand, maandelijks opzegbaar. Geen setup-kosten."
      }
    },
    {
      "@type": "Question",
      "name": "Werkt het echt?",
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "Ja, bij onze eerste klant in de wijnimport leverde het binnen 4 weken 23 zoekopdrachten per week in Google AI Overviews en 6 Perplexity-citaten op."
      }
    },
    {
      "@type": "Question",
      "name": "Voor wie is het?",
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "Voor Nederlandse eenmanszaken en kleine bedrijven (1-5 medewerkers) in een niche, zonder eigen webdeveloper."
      }
    }
  ]
}
</script>
