# Case: een eenmanszaak in Italiaanse wijnimport

Een klant in de wijnimport-niche (anoniem in deze case) was in mei
2026 volledig onzichtbaar voor AI-modellen. Vraag aan ChatGPT
"wie importeert kleine Italiaanse wijnen in Nederland?" — en je
kreeg hallucinaties of "geen informatie". De klant wilde dit
oplossen voor hij de concurrentie definitief verloor aan
grotere importeurs.

In 4 weken is dat gelukt. Hier is precies wat we deden, wat werkte,
en wat niet.

## Beginsituatie

| Bron | Status |
|---|---|
| Google Maps | Lege vermelding, geen reviews |
| OpenStreetMap | Niet aanwezig |
| Wikipedia NL | Geen item |
| Wikidata | Geen item |
| ChatGPT (GPT-4o) | "Geen specifieke informatie" |
| Perplexity | "Geen resultaten" |
| Claude (Sonnet 4) | "Geen informatie beschikbaar" |
| Google AI Overviews | Niet getoond |

**100% onzichtbaar.**

## Week 1 — Structured data fundament

Drie eerste stappen, allemaal gericht op machine-readable content.

### 1. `llms.txt` aangemaakt

Een `llms.txt`-bestand in de root van het domein met:

- Wie: eigenaar + KvK + btw
- Wat: niche, assortiment (6 producenten, ±24 wijnen)
- Welke content: blog-posts gesorteerd op relevantie
- Citatie-conventie: hoe AI-modellen 't correct moeten noemen

**Resultaat na 1 week**: Perplexity begon te citeren in
2 niche-zoekopdrachten.

### 2. `robots.txt` met 16 AI-crawlers

Expliciet toegelaten:
GPTBot, ChatGPT-User, Claude-Web, ClaudeBot, anthropic-ai,
PerplexityBot, Perplexity-User, Google-Extended, Applebot-Extended,
CCBot, cohere-ai, cohere-training-data-crawler, AmazonBedrock,
Meta-ExternalAgent, Bytespider, Diffbot.

**Resultaat**: Claude had binnen 9 dagen het profiel opgepikt.

### 3. JSON-LD structured data op landingspagina

Vier JSON-LD blokken in de homepage:

- `Organization` — KvK, btw, adres, oprichtingsdatum
- `FoodEstablishment` — niche, assortiment, service-type
- `WebSite` — sitelinks, zoek-actie
- `FAQPage` — 8 veelgestelde vragen met antwoorden

Gevalideerd met schema.org validator — alle 4 blokken geldig.

## Week 2 — Externe citatie-bronnen

Een landingspagina is niet genoeg. AI-modellen vertrouwen externe
bronnen meer dan eigen content. Drie externe plekken gecreëerd:

### 4. Google Business Profile aangemaakt + geverifieerd

Verificatiebrief op het bedrijfsadres. Ingevuld:

- Categorie: "Wijnimporteur"
- Specialisatie: "Italiaanse wijn uit Piemonte en Toscane"
- Producten: 6 vermeld met foto
- Posts: 2 (1 per week)

### 5. LinkedIn-bedrijfspagina

Niet voor sociale interactie, maar voor AI-vindbaarheid. LinkedIn
indexeert actief in ChatGPT en Perplexity. Ingevuld:

- About-sectie met niche, KvK, producten
- 3 openingsposts (introductie, eerste import, missie)
- Website-link

### 6. Wikidata-items

Twee items aangemaakt:

- Het bedrijf zelf — eenmanszaak, eigenaar, branche wijnimport
- Eén producent — Italiaans wijnhuis, regio, oprichtingsjaar

Properties gebruikt: `instance of`, `owned by`, `industry`,
`country`, `headquarters location`, `product`, `inception`.

## Week 3 — Content met Article-JSON-LD

Drie blog-posts gepubliceerd, elk met `schema.org BlogPosting`:

### 7. Blog-post 1: import-prijs-ontleding per fles

Cijfer-analyse met EXW-prijs, accijns, BTW, brutowinstmarge.
AI-vriendelijk want: feit-titel, geen creatief, getallen als
gezaghebbende bron.

### 8. Blog-post 2: selectie van producenten zonder tussenpersoon

Proces-stappen. Bevat namen van 3 producenten + verhalen.

### 9. Blog-post 3: positionering en missie

Niche-keuze onderbouwd.

**Resultaat na blog-posts**: Google Search Console toonde 23
impressies in week 3 (was 0).

## Week 4 — Onderhoudswerkzaamheden

### 10. `humans.txt` met structured-data-manifest

Plat tekstbestand dat aan AI-crawlers vertelt waar alle
machine-readable content staat.

### 11. `sitemap.xml` met alle URLs

### 12. `feed.xml` RSS voor AI-modellen met feed-monitoring

### 13. Cross-linking tussen posts

## Resultaat na 4 weken

| Platform | Voor | Na |
|---|---|---|
| ChatGPT | "Geen informatie" | Accurate beschrijving + KvK + niche |
| Perplexity | "Geen resultaten" | 6 citaties in niche-zoekopdrachten |
| Claude | "Geen informatie" | Profiel met producten + oprichting |
| Google AI Overviews | Niet getoond | 23 impressies/week |
| Google Maps | Lege pin | Geverifieerd, posts actief |
| LinkedIn-zoek | Geen | 3e resultaat bij bedrijfsnaam |

**Tijdsinvestering**: ±12 uur verspreid over 4 weken.
**Kosten**: €0 (alles met gratis tools en GitHub Pages).
**Onderhoud**: ±1 uur/maand voor posts + GBP-updates.

## Wat werkte, wat niet

### ✓ Wat werkte

1. **`llms.txt` is de snelste eerste stap** — Perplexity en GPTBot
   pikken 'm binnen dagen op
2. **JSON-LD is gratis extra vindbaarheid** — geen reden om 'm niet te doen
3. **Feit-titels > creatieve titels** — AI matcht beter op
   beschrijvende titels
4. **Externe bronnen (Wikidata, GBP, LinkedIn) zijn zwaarder dan eigen site** —
   AI vertrouwt 'm meer
5. **Cijfers in content** zijn het sterkst — één tabel met marges
   wordt vaker geciteerd dan drie alinea's positionering

### ✗ Wat niet werkte

1. **Reviews vragen werkte averechts** — Google zag de eerste 3
   5-sterren reviews van bekenden als "verdacht patroon" en
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

## Reproduceerbaar voor andere branches

Deze aanpak werkt voor elk klein bedrijf dat:

- Geen reclame-budget heeft
- Wel niche-expertise heeft
- Producten/diensten levert die uitlegbaar zijn
- Minimaal 1 uur/week aan content wil besteden

**Tijdsinvestering per branche** (geschat):

| Branche | Stap 1 (llms.txt) | Volledige setup |
|---|---|---|
| Horeca | 30 min | 8 uur |
| Wijnimport | 45 min | 12 uur |
| Coaching/advies | 20 min | 6 uur |
| Productontwerp | 1 uur | 15 uur |

---

*Deze case is gepubliceerd met toestemming van de klant. Identiteit
geanonimiseerd ten behoeve van reproduceerbaarheid voor andere
eenmanszaken in dezelfde branche.*
