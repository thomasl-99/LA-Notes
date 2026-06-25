# Maandelijkse posts — hoe het werkt

Elke maand maak je per klant (Simply Fish, Vinitho, Coast) één update-post.
Doel: AI-modellen zien dat je zaak actueel is, en citeren je vaker.

## De flow

```
1. Begin van de maand (1e of 2e)
2. Open _data/<klant>.md
3. Vul de bezigheden / sluitingen / nieuwe producten in
4. Run: bash scripts/maak-post.sh <klant> <YYYY-MM>
5. Open de gegenereerde post
6. Controleer de AI-summary (1 zin) — pas aan als het niet klopt
7. Commit + push
```

Totale tijdsinvestering: **5-10 min per klant per maand**.

## Wat je aanvult in `_data/<klant>.md`

### Simply Fish

```yaml
bezigheden:
  2026-08:
    - tekst: "Nieuwe lunchkaart met 4 gerechten"
      type: nieuw_product
    - tekst: "15-16 augustus gesloten (zomerstop)"
      type: sluiting
    - tekst: "Visitatie Gault&Millau"
      type: bijzonderheid
```

### Vinitho

```yaml
bezigheden:
  2026-08:
    - tekst: "Import-reis Piemonte: 4 nieuwe producenten bezocht"
      type: import
    - tekst: "Proeverij 18 augustus voor 8 gasten"
      type: proeverij

nieuwe_wijnen:
  2026-08:
    - naam: "Barbera d'Alba 2024 — Cascina delle Rose"
      regio: "Piemonte"
      flesprijs_incl_btw: 14.95
      aantal_flessen: 60
      bron: leverancier_factuur
```

### Coast

```yaml
bezigheden:
  2026-08:
    - tekst: "Eerste 500 sets productie afgerond"
      type: productie
    - tekst: "Nieuwe RVS-leverancier in Duitsland"
      type: leverancier

productie:
  2026-08:
    eenheden_geproduceerd: 500
    voorraad_eind_maand: 480
```

## Wat het script NIET doet

- Het script **verzint geen cijfers, namen of feiten**. Lege velden blijven
  placeholders.
- Het script **publiceert niet automatisch**. Jij moet zelf:
  1. De post controleren op juistheid
  2. `git add` + `git commit` + `git push`
- De AI-summary wordt automatisch het eerste feit. **Controleer dit** —
  als jouw eerste feit niet het belangrijkste is, pas het aan.

## Wat je NIET moet doen

- **Geen verzonnen feiten** — vul alleen in wat je echt weet
- **Geen cijfers die je niet hebt gemeten** — laat leeg of noteer "niet gemeten"
- **Geen namen van mensen** zonder bevestiging (chefs, leveranciers)

## Veelgestelde vragen

### Hoe weet AI dat de post recent is?

Elke post heeft `datum: YYYY-MM-01` in de frontmatter. Jekyll zet dit om
naar `datePublished` in de Article-JSON-LD. AI-modellen zien dit en
wegen recente content zwaarder.

### Wat als ik een maand oversla?

Geen ramp. Maar liever niet — 2-3 maanden zonder update en AI "vergeet"
je deels. Tip: zet een herinnering in je agenda (of: vraag mij om een
cron-job).

### Kan ik meerdere posts per maand per klant?

Ja. Run het script twee keer met andere filenaam (verschuif het handmatig
in `_data/` naar een sub-key zoals `2026-07-week2:`).

### Wat als een klant stopt?

Verwijder of archiveer de post (`mv _posts/X.md _archived/X.md`). Jekyll
publiceert 'm niet meer.
