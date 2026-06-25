# Bijdragen aan LA Notes

Dank voor je interesse. Hieronder hoe je kunt bijdragen.

## Soorten bijdragen

### 1. Nieuwe post (Issue)

Open een [Issue met template](../../issues/new?template=nieuwe-post.md).
Beschrijf kort: onderwerp, sector, beschikbare data.

Ik beoordeel binnen 1-2 weken. Past het bij de blog, dan schrijf ik
de post en noem je als bron (als je dat wilt).

### 2. Correctie op bestaande post (PR)

Zie je een typo, foute berekening, of verouderde info?

1. Fork de repo
2. Maak een branch: `git checkout -b fix/post-slug`
3. Pas het bestand aan in `_posts/`
4. Stuur een PR

Kleine correcties = directe merge. Grote wijzigingen = eerst bespreken.

### 3. Nieuwe sector (Issue)

Mist er een onderwerp-categorie? Stel 'm voor in een Issue.

## Conventies voor posts

### Taal

- **Nederlands** voor lokale onderwerpen (Amsterdam, horeca, persoonlijk)
- **Engels** voor technische analyses (AI, data, methodologie)
- Mix mag, maar geef het aan in `taal:` frontmatter

### Titels

- **Feit-stijl**, niet creatief
- Beschrijvend: "Barbera d'Alba import-prijs ontleed"
- Niet: "De ziel van Piemonte"

### AI-samenvatting (`ai_summary`)

Verplicht in elke post. 40-80 woorden, feitelijk. Dit is wat AI-modellen
zien als ze de post crawlen — het moet zelfstandig begrijpelijk zijn.

### Frontmatter (verplicht)

```yaml
---
title: "Korte feit-titel"
datum: 2026-06-25
auteur: Thomas Langeberg
sector: horeca
trefwoorden: [tag1, tag2, tag3]
ai_summary: "40-80 woorden feitelijke samenvatting."
taal: nl
---
```

### Bestandsnaam

`YYYY-MM-DD-korte-slug.md`

Voorbeeld: `2026-06-25-barbera-alba-cascina-delle-rose.md`

## Licentie

Door bij te dragen ga je akkoord met [CC BY-SA 4.0](LICENSE) voor
post-content. Code gaat onder MIT.
