# cv

Source of Kamil Zwoiński's one-page CV, written in [Typst](https://typst.app/), with automation that publishes the built PDF.

Live PDF: <https://szfkamil.github.io/assets/cv.pdf>

## Build

```sh
typst compile cv.typ cv.pdf
```

## Automation

`.github/workflows/build-and-push.yml` runs on every push to `main`:

1. installs Typst,
2. compiles `cv.pdf` from `cv.typ`,
3. commits the rebuilt PDF back to this repo,
4. pushes it to the website repo (`szfkamil/szfkamil.github.io`) as `assets/cv.pdf`.