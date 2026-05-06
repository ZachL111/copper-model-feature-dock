# Review Journal

I treated `copper-model-feature-dock` as a project where the smallest useful behavior should still be inspectable.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its ml utilities focus without claiming live deployment or external usage.

## Cases

- `baseline`: `feature drift`, score 157, lane `ship`
- `stress`: `window width`, score 158, lane `ship`
- `edge`: `metric stability`, score 127, lane `watch`
- `recovery`: `explainability`, score 232, lane `ship`
- `stale`: `feature drift`, score 176, lane `ship`

## Note

A future change should add new cases before it changes the scoring rule.
