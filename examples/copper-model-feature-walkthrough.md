# Copper Model Feature Dock Walkthrough

The fixture is intentionally compact, so the review starts with the cases that pull farthest apart.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | feature drift | 157 | ship |
| stress | window width | 158 | ship |
| edge | metric stability | 127 | watch |
| recovery | explainability | 232 | ship |
| stale | feature drift | 176 | ship |

Start with `recovery` and `edge`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

The useful comparison is `explainability` against `metric stability`, not the raw score alone.
