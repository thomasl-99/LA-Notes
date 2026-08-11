#!/usr/bin/env python3
"""
ai-baseline.py — AI Visibility Baseline meting voor LA Notes / Simply Fish.

Wat het doet:
- Vraagt je 4 scores (ChatGPT, Perplexity, Claude, Google AI Overviews)
- Per model: plak je 20 prompt-scores (0/1/2/3 per regel) of vul totaal in
- Schrijft het resultaat naar _data/ai-baselines.json
- Optioneel: toont direct een vergelijking met vorige metingen

Geen internet nodig. Werkt volledig offline.

Gebruik:
    python3 scripts/ai-baseline.py
    # of: python3 scripts/ai-baseline.py --model chatgpt --scores "0,0,1,2,..."
"""
from __future__ import annotations

import argparse
import json
import sys
from datetime import date
from pathlib import Path

# Configuratie
MODELS = ["chatgpt", "perplexity", "claude", "google_ai"]
MODEL_LABELS = {
    "chatgpt": "ChatGPT (GPT-4o)",
    "perplexity": "Perplexity",
    "claude": "Claude (Sonnet)",
    "google_ai": "Google AI Overviews",
}
SCORE_MIN, SCORE_MAX = 0, 3
PROMPTS_PER_MODEL = 20

# Pad naar data-bestand (relatief aan repo-root)
DATA_PATH = Path(__file__).resolve().parent.parent / "_data" / "ai-baselines.json"


def load_existing() -> list[dict]:
    """Laad bestaande metingen, return lege lijst als bestand niet bestaat."""
    if not DATA_PATH.exists():
        return []
    try:
        return json.loads(DATA_PATH.read_text())
    except json.JSONDecodeError:
        print(f"WAARSCHUWING: {DATA_PATH} bestaat maar is geen geldige JSON.")
        print("Het bestand wordt overschreven met alleen deze meting.")
        return []


def save(measurements: list[dict]) -> None:
    """Schrijf metingen naar JSON-bestand in de repo."""
    DATA_PATH.parent.mkdir(parents=True, exist_ok=True)
    DATA_PATH.write_text(
        json.dumps(measurements, indent=2, ensure_ascii=False) + "\n"
    )
    print(f"\n✓ Opgeslagen: {DATA_PATH}")


def ask_scores_interactively() -> list[int]:
    """Vraag 20 scores in, één per regel. Accepteert spaties en komma's."""
    print(f"\nVoer 20 scores in (0/1/2/3 per prompt), elk op een nieuwe regel.")
    print("Of typ 'q' om te stoppen.")
    print(f"  0 = Simply Fish niet in antwoord")
    print(f"  1 = Simply Fish staat in lijst")
    print(f"  2 = Simply Fish is eerste aanbeveling")
    print(f"  3 = Simply Fish + verwijzing naar eigen content")
    print()
    scores: list[int] = []
    while len(scores) < PROMPTS_PER_MODEL:
        try:
            line = input(f"  Prompt {len(scores) + 1:2d}/{PROMPTS_PER_MODEL}: ").strip()
        except EOFError:
            print("\n  Geannuleerd.")
            sys.exit(1)
        if line.lower() in ("q", "quit", "stop"):
            sys.exit(1)
        if not line:
            continue
        # Accepteer "1,2,0,3" als één regel
        parts = [p.strip() for p in line.replace(",", " ").split()]
        for p in parts:
            try:
                score = int(p)
            except ValueError:
                print(f"  Ongeldige score '{p}', overslaan")
                continue
            if SCORE_MIN <= score <= SCORE_MAX:
                scores.append(score)
                if len(scores) >= PROMPTS_PER_MODEL:
                    break
            else:
                print(f"  Score moet 0-3 zijn, '{p}' overgeslagen")
    return scores


def summarize(model: str, scores: list[int]) -> dict:
    """Vat scores samen in de 4-niveau tabel."""
    counts = {n: scores.count(n) for n in range(SCORE_MIN, SCORE_MAX + 1)}
    return {
        "score_0": counts[0],
        "score_1": counts[1],
        "score_2": counts[2],
        "score_3": counts[3],
        "total": sum(counts.values()),
        "weighted": sum(s * counts[s] for s in counts),
    }


def run_interactive_session() -> dict:
    """Loop alle modellen in volgorde, vraag scores, bouw meetobject."""
    today = date.today().isoformat()
    measurement = {"date": today, "models": {}}

    print(f"\n=== AI Visibility Baseline — {today} ===")
    print(f"\nPer model {PROMPTS_PER_MODEL} prompts. Gebruik dezelfde prompts als vorige meting.")
    print(f"Vorige meting-data staat in {DATA_PATH.name} (zie --show voor details).\n")

    for model in MODELS:
        print(f"\n--- {MODEL_LABELS[model]} ---")
        ans = input("  Meten? (j/n, default=j): ").strip().lower()
        if ans in ("n", "nee", "no"):
            print(f"  Overgeslagen.")
            continue
        scores = ask_scores_interactively()
        measurement["models"][model] = summarize(model, scores)
        print(f"  → 0×{measurement['models'][model]['score_0']}, "
              f"1×{measurement['models'][model]['score_1']}, "
              f"2×{measurement['models'][model]['score_2']}, "
              f"3×{measurement['models'][model]['score_3']} "
              f"(gewogen {measurement['models'][model]['weighted']}/60)")

    return measurement


def show_history(measurements: list[dict]) -> None:
    """Toon alle metingen in een vergelijkende tabel."""
    if not measurements:
        print("Nog geen metingen.")
        return
    print(f"\n=== Geschiedenis ({len(measurements)} metingen) ===\n")
    print(f"{'Datum':<12} {'Model':<22} {'0×':>3} {'1×':>3} {'2×':>3} {'3×':>3} {'Tot':>4} {'Weg':>4}")
    print("-" * 60)
    for m in measurements:
        for model in MODELS:
            data = m["models"].get(model)
            if data is None:
                continue
            print(
                f"{m['date']:<12} {MODEL_LABELS[model]:<22} "
                f"{data['score_0']:>3} {data['score_1']:>3} "
                f"{data['score_2']:>3} {data['score_3']:>3} "
                f"{data['total']:>4} {data['weighted']:>4}"
            )
        print()


def main() -> None:
    parser = argparse.ArgumentParser(
        description="AI Visibility Baseline meting voor LA Notes / Simply Fish."
    )
    parser.add_argument(
        "--show", action="store_true",
        help="Toon alle eerdere metingen uit ai-baselines.json en sluit af."
    )
    args = parser.parse_args()

    measurements = load_existing()

    if args.show:
        show_history(measurements)
        return

    show_history(measurements)
    measurement = run_interactive_session()

    if not measurement["models"]:
        print("\nGeen modellen gemeten. Niets opgeslagen.")
        return

    # Vraag of overschrijven of toevoegen
    if measurements:
        print(f"\nEr zijn al {len(measurements)} eerdere meting(en).")
        ans = input("  Overschrijven met alleen deze meting? (j/n, default=n): ").strip().lower()
        if ans in ("j", "ja", "yes"):
            measurements = [measurement]
        else:
            measurements.append(measurement)
    else:
        measurements.append(measurement)

    save(measurements)

    print("\nVolgende stap:")
    print("  1. cd naar de LA-Notes repo")
    print("  2. git add _data/ai-baselines.json")
    print('  3. git commit -m "AI baseline meting <datum>"')
    print("  4. git push")
    print()
    print("Daarna update ik de tabel in de baseline-post op de site.")


if __name__ == "__main__":
    main()