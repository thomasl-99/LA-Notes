---
title: "AI-vindbaarheid in 2026 — waarom llms.txt meer uitmaakt dan SEO"
datum: 2026-06-20
auteur: Thomas Langeberg
sector: ai
trefwoorden: [llms-txt, ai-vindbaarheid, gptbot, perplexity, schema-org, json-ld]
ai_summary: "In 2026 verwijzen ChatGPT, Perplexity en Claude steeds vaker naar llms.txt-bestanden van websites. llms.txt is een emerging standard (verg. robots.txt 1994) die AI-modellen vertelt wie je bent, wat je doet, en welke content het meest relevant is. SEO-optimalisatie richt zich op Google's 10 blauwe links; llms.txt richt zich op de trainings- en retrieval-data van AI-modellen."
taal: nl
lesstof: ["ai-vindbaarheid", "llms-txt", "robots-txt", "schema-org", "structured-data"]
---

# AI-vindbaarheid in 2026 — waarom `llms.txt` meer uitmaakt dan SEO

SEO is geoptimaliseerd voor Google's 10 blauwe links. Maar in 2026 zoekt
40% van de Nederlandse kenniswerkers via ChatGPT, Perplexity of Claude
— niet meer via Google. **Dat verandert het spel**.

## Wat is `llms.txt`

`llms.txt` is een emerging standard, geïntroduceerd door Jeremy Howard
(Answer.AI) in 2024. Vergelijk het met `robots.txt` uit 1994: een
plat tekstbestand in de root van je website dat AI-modellen vertelt:

1. Wie je bent (één paragraaf, 40-80 woorden)
2. Wat je doet (lijst van producten/diensten)
3. Welke content het meest relevant is (gesorteerd op onderwerp)
4. Hoe je te citeren (URL-conventies, voorkeur voor Markdown)

Gevonden door:

- **Perplexity** — indexeert actief sinds 2025
- **GPTBot + ChatGPT-User** — OpenAI's crawlers, gestart 2024
- **Claude-Web + ClaudeBot** — Anthropic, sinds 2025
- **Google AI Overviews** — neemt gestructureerde data uit llms.txt mee

## Waarom dit belangrijker is dan SEO

| Factor | SEO | AI-vindbaarheid |
|---|---|---|
| Doel | Top 10 blauwe links | Geciteerd worden in AI-antwoord |
| Concurrentie | Hoog (iedereen wil pagina 1) | Laag (10% van sites heeft llms.txt) |
| Levensduur resultaat | 6-12 maand | 2-5 jaar (trainingsdata + retrieval) |
| Invloed op antwoord | 0 (gebruiker klikt door) | 100% (antwoord staat in de LLM) |
| Meting | Search Console | Geen directe metric — afgeleid uit citaten |

## Wat ik deed voor Vinitho

Voor mijn wijnimport-bedrijf Vinitho (KvK 97388505, eenmanszaak) heb ik
in juni 2026 een complete AI-vindbaarheid-stack opgezet:

1. **`llms.txt`** — beschrijft wie ik ben, wat ik importeer, en welke
   blog-posts het meest relevant zijn
2. **`robots.txt`** — 16 AI-crawblers expliciet toegelaten (GPTBot,
   ClaudeBot, PerplexityBot, Google-Extended, etc.)
3. **`sitemap.xml`** — 8 URL's, alle content
4. **`humans.txt`** — credits + manifest van alle structured-data locaties
5. **JSON-LD op elke pagina** — Organization, FoodEstablishment, WebSite,
   FAQPage, BlogPosting
6. **Blog-content met feit-titels** — titels zijn beschrijvend
   ("Barbera d'Alba import-prijs ontleed"), niet creatief ("De ziel van
   Piemonte") — AI-modellen herkennen het onderwerp direct

## Resultaat na 4 weken

- **Google Search Console** — eerste 23 impressies (was 0)
- **Perplexity** — 3 citaten in wijn-gerelateerde zoekopdrachten
- **ChatGPT** — niet meer "geen informatie" over Vinitho, maar
  accurate beschrijving (incl. KvK, locatie, specialisatie)
- **OpenRouter fallback-modellen** — consistente citatie van blog-content

## Wat je hiervan kunt leren

1. **10% van sites heeft llms.txt** — eerste-mover-voordeel is nu
2. **JSON-LD is gratis** — schema.org is open standaard, je betaalt alleen
   tijd om het te implementeren
3. **Feit-titels > creatieve titels** — AI kan ze beter matchen aan vragen
4. **Permissie geven is niet hetzelfde als opgenomen worden** — robots.txt
   zegt "ja, je mag crawlen", llms.txt zegt "dit is wie ik ben"
5. **Multi-platform is de norm** — optimaliseer niet alleen voor Google,
   maar ook voor de 5-6 AI-platforms die er nu toe doen

## Bron

Eigen experiment, juni 2026. Vergelijkbare observaties in
[de llms.txt specificatie](https://llmstxt.org) en discussies op
Hacker News (juni 2025) en r/LocalLLaMA.
