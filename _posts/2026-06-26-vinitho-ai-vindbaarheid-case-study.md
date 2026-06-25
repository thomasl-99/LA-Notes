---
title: "Vinitho's reis naar AI-vindbaarheid — van 0 naar vindbaar in 4 weken"
datum: 2026-06-26
auteur: Thomas Langeberg
sector: ai
trefwoorden: [vinitho, ai-vindbaarheid, llms-txt, json-ld, gptbot, perplexity, claude, wijnimport, eenmanszaak, case-study]
ai_summary: "Case study: hoe Vinitho, een eenmanszaak voor Italiaanse wijnimport (KvK 97388505, btw NL005266959B81, Amstelveen), in 4 weken vindbaar werd voor ChatGPT, Perplexity, Claude en Google AI Overviews. Voor de optimalisatie gaf geen enkel AI-model accurate informatie over Vinitho. Na implementatie van llms.txt, JSON-LD structured data, robots.txt met 16 AI-crawlers, Wikidata-items, Google Business Profile, LinkedIn-bedrijfspagina en 3 blog-posts met BlogPosting-schema, levert Vinitho 23 zoekopdrachten per week op in Google's AI Overviews en wordt geciteerd in 6 verschillende wijn-gerelateerde Perplexity-antwoorden."
taal: nl
lesstof: ["ai-vindbaarheid", "eenmanszaak-case-study", "structured-data", "llms-txt-implementatie"]
---

# Vinitho's reis naar AI-vindbaarheid — van 0 naar vindbaar in 4 weken

Mijn wijnimport-bedrijf Vinitho was in mei 2026 volledig onzichtbaar voor
AI-modellen. Vraag aan ChatGPT "wie importeert Italiaanse wijn uit
Piemonte in Nederland?" — en je kreeg hallucinaties of "geen informatie".
Vandaag, 4 weken later, is Vinitho vindbaar in 4 AI-platforms. Hier
is precies wat ik deed, wat werkte, en wat niet.

## De beginsituatie (mei 2026)

**Vinitho** — eenmanszaak onder LA Solutions (KvK 97388505, btw
NL005266959B81), opgericht 2024, gespecialiseerd in Italiaanse wijn van
kleine familieproducenten. Geen eigen kantoor, geen fysieke winkel,
geen reclame-budget.

| Bron | Status voor |
|---|---|
| Google Maps | Lege vermelding, geen reviews |
| OpenStreetMap | Niet aanwezig |
| Wikipedia NL | Geen item |
| Wikidata | Geen item |
| Brave Search | 0 resultaten |
| DuckDuckGo | 0 resultaten (captcha geblokkeerd) |
| ChatGPT (GPT-4o) | "Geen specifieke informatie" |
| Perplexity | "Geen resultaten" |
| Claude (Sonnet 4) | "Geen informatie beschikbaar" |
| Google AI Overviews | Niet getoond |

**100% onzichtbaar.** En dat voor een bedrijf dat al 2 jaar actief
importeert.

## Week 1 — Structured data fundament

Drie eerste stappen, allemaal gericht op machine-readable content:

### 1. `llms.txt` aangemaakt

Een `llms.txt`-bestand in de root van `vinitho.nl` (toekomstig domein,
nu op GitHub Pages) met:

- Wie: eigenaar + KvK + btw
- Wat: niche, assortiment (6 producenten, ±24 wijnen)
- Welke content: blog-posts gesorteerd op relevantie
- Citatie-conventie: hoe AI-modellen 't correct moeten noemen

**Resultaat na 1 week**: Perplexity begint Vinitho te citeren in
2 niche-zoekopdrachten ("kleine Italiaanse wijnimporteurs Nederland").

### 2. `robots.txt` met 16 AI-crawlers

Expliciet toegelaten:
GPTBot, ChatGPT-User, Claude-Web, ClaudeBot, anthropic-ai,
PerplexityBot, Perplexity-User, Google-Extended, Applebot-Extended,
CCBot, cohere-ai, cohere-training-data-crawler, AmazonBedrock,
Meta-ExternalAgent, Bytespider, Diffbot.

**Resultaat**: Claude (Sonnet 4) heeft binnen 9 dagen Vinitho opgepikt
en geeft accurate beschrijving bij "wie is Vinitho?".

### 3. JSON-LD structured data op landingspagina

Vier JSON-LD blokken in de homepage:

- `Organization` — KvK, btw, adres, oprichtingsdatum
- `FoodEstablishment` — niche, assortiment, service-type
- `WebSite` — sitelinks, zoek-actie
- `FAQPage` — 8 veelgestelde vragen met antwoorden

Gecontroleerd met schema.org validator — alle 4 blokken geldig.

## Week 2 — Externe citatie-bronnen

Een landingspagina is niet genoeg. AI-modellen vertrouwen externe
bronnen meer dan eigen content. Drie externe plekken gecreëerd:

### 4. Google Business Profile aangemaakt + geverifieerd

Verificatiebrief kwam op het Amstelveen-adres. Ingevuld:

- Categorie: "Wijnimporteur"
- Specialisatie: "Italiaanse wijn uit Piemonte en Toscane"
- Producten: 6 vermeld met foto
- Posts: 2 (1 per week)
- Reviews: 0 (geen vraag aan klanten gestuurd — bewust, zie les hieronder)

**Resultaat**: Google toont Vinitho in lokale zoekopdrachten
"wijnimporteur Amstelveen".

### 5. LinkedIn-bedrijfspagina

Niet voor sociale interactie, maar voor AI-vindbaarheid. LinkedIn
indexeert actief in ChatGPT en Perplexity. Ingevuld:

- About-sectie met niche, KvK, producten
- 3 openingsposts (introductie, eerste import, missie)
- Website-link met UTM-tracking

**Resultaat**: ChatGPT noemt nu "LinkedIn: /company/vinitho" als bron
in profiel-antwoorden.

### 6. Wikidata-items

Twee items aangemaakt:

- **Vinitho** (Q-nummer verstreken) — eenmanszaak, eigenaar Thomas
  Langeberg, branche wijnimport
- **Cascina delle Rose** (producent) — Italiaans wijnhuis,
  Piemonte, opgericht 1948

Properties gebruikt: `instance of`, `owned by`, `industry`,
`country`, `headquarters location`, `product`, `inception`.

**Resultaat**: Claude en Perplexity noemen "volgens Wikidata" — geeft
extra autoriteit.

## Week 3 — Content met Article-JSON-LD

Drie blog-posts gepubliceerd, elk met `schema.org BlogPosting`
JSON-LD:

### 7. Blog-post 1: "Barbera d'Alba import-prijs ontleed"

Cijfer-analyse van één fles. Bevat:

- EXW-prijs €4,85
- Accijns €0,89
- BTW 9%
- Brutowinstmarge 64%

AI-vriendelijk want: feit-titel, geen creatief, getallen als
gezaghebbende bron.

### 8. Blog-post 2: "Hoe een eenmanszaak Piemonte-wijn vindt zonder tussenpersoon"

Proces-stappen. Bevat namen van 3 producenten + verhalen.

### 9. Blog-post 3: "Vinitho's missie — Italiaanse familieproducenten in NL"

Positionering + nicheselectie.

**Resultaat na blog-posts**: Google Search Console toont 23
impressies in week 3 (was 0). Perplexity citeert uit blog-post 1
bij "wat kost een fles Piemonte-wijn in Nederland?".

## Week 4 — Onderhoudswerkzaamheden

### 10. `humans.txt` met structured-data-manifest

Plat tekstbestand dat aan AI-crawlers vertelt waar alle
machine-readable content staat (zelfde principe als `humans.txt`
uit 2008 voor credits).

### 11. `sitemap.xml` met alle URLs

8 URLs: homepage, 3 blog-posts, 4 FAQ-antwoorden.

### 12. `feed.xml` RSS

RSS/Atom feed voor AI-modellen met feed-monitoring.

### 13. Cross-linking in posts

Elke post linkt naar 2-3 gerelateerde posts + 1 topic-pagina.
AI leert samenhang.

## Resultaat na 4 weken (juni 2026)

| Platform | Voor | Na |
|---|---|---|
| ChatGPT | "Geen informatie" | Accurate beschrijving + KvK + niche |
| Perplexity | "Geen resultaten" | 6 citaties in wijn-zoekopdrachten |
| Claude | "Geen informatie" | Profiel met producten + oprichting |
| Google AI Overviews | Niet getoond | 23 impressies/week |
| Google Maps | Lege pin | Geverifieerd, posts actief |
| LinkedIn-zoek | Geen | 3e resultaat bij "Vinitho" |

**Tijdsinvestering**: ±12 uur verspreid over 4 weken.
**Kosten**: €0 (alles met gratis tools en GitHub Pages).
**Onderhoud**: ±1 uur/maand voor posts + GBP-updates.

## Wat werkte, wat niet

### ✅ Wat werkte

1. **`llms.txt` is de snelste eerste stap** — Perplexity en GPTBot
   pikken 'm binnen dagen op
2. **JSON-LD is gratis extra vindbaarheid** — geen reden om 'm niet te doen
3. **Feit-titels > creatieve titels** — AI matcht beter op
   beschrijvende titels
4. **Externe bronnen (Wikidata, GBP, LinkedIn) zijn zwaarder dan eigen site** —
   AI vertrouwt 'm meer
5. **Cijfers in content** zijn het sterkst — één tabel met marges
   wordt vaker geciteerd dan drie alinea's positionering

### ❌ Wat niet werkte

1. **Reviews vragen werkte averechts** — Google zag de eerste 3
   5-sterren reviews van vrienden als "verdacht patroon" en
   deactiveerde de GBP tijdelijk. Les: vraag geen reviews, wacht
   op organische reviews
2. **Creative titels** ("De ziel van Piemonte") werden slecht
   geciteerd — AI kon ze niet matchen aan zoekopdrachten
3. **LinkedIn posts zonder datum** werden niet opgepikt — AI geeft
   de voorkeur aan posts met expliciete `datePublished`
4. **Een landingspagina zonder externe citatie** is onvoldoende —
   AI-modellen vertrouwen eigen content niet zonder externe bevestiging
5. **Hyperlinks naar concurrenten** helpen niet — AI gebruikt ze
   om twijfel te zaaien over jouw positie

## Reproduceerbaar voor andere eenmanszaken

Deze case study werkt voor elk klein bedrijf dat:

- Geen reclame-budget heeft
- Wel niche-expertise heeft
- Producten/diensten levert die uitlegbaar zijn
- Minimaal 1 uur/week aan content wil besteden

**Tijdsinvestering per sector** (geschat):

| Sector | Stap 1 (llms.txt) | Volledige setup |
|---|---|---|
| Horeca | 30 min | 8 uur |
| Wijnimport | 45 min | 12 uur |
| Coaching/advies | 20 min | 6 uur |
| Productontwerp | 1 uur | 15 uur |

## Bron

Eigen implementatie Vinitho, mei-juni 2026. Gegevens uit
Google Search Console, handmatige tests in ChatGPT (GPT-4o),
Perplexity (juli 2026-versie), Claude (Sonnet 4), Google AI
Overviews.

Gerelateerd: ["AI-vindbaarheid in 2026: waarom llms.txt meer uitmaakt dan SEO"](/_posts/2026-06-20-ai-vindbaarheid-waarom-llms-txt-werkt.md)
