# copper-model-feature-dock

`copper-model-feature-dock` explores ml utilities with a small Haskell codebase and local fixtures. The technical goal is to create a Haskell reference implementation for feature workflows, centered on diagnostic reporting, negative fixtures, and human-readable error snapshots.

## Why It Exists

The point is to make a small domain rule concrete enough that a reader can change it and immediately see what broke.

## Copper Model Feature Dock Review Notes

For a quick review, compare `explainability` with `metric stability` before reading the middle cases.

## Features

- `fixtures/domain_review.csv` adds cases for feature drift and window width.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/copper-model-feature-walkthrough.md` walks through the case spread.
- The Haskell code includes a review path for `explainability` and `metric stability`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Architecture Notes

The fixture data drives the tests. The code stays thin, while `metadata/domain-review.json` and `config/review-profile.json` explain what each case is meant to protect.

The Haskell implementation avoids hidden state so fixture changes are easy to reason about.

## Usage

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Tests

The check exercises the source code and the review fixture. `recovery` is the high score at 232; `edge` is the low score at 127.

## Limitations And Roadmap

The fixture set is small enough to audit by hand. The next useful expansion is malformed input coverage, not extra surface area.
