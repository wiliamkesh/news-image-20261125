# The World in One Day — news-image-20261125

One broadsheet front page summing up **Wednesday 25 November 2026** in 16
verified stories: the Flinders Island bushfire emergency ("too late to
leave"), Australia's CPI jumping to 4.9%, the US PCE and Q3 GDP data pile
on Thanksgiving Eve, Shenzhou-24 carrying China's first foreign astronaut,
Gukesh playing White in World Chess Championship Game 2, the
Australia–Solomon Islands security pact, Putin's talks with the Sultan of
Brunei, and more — plus a pin map of where it happened, a "Day in Numbers"
box, and a forensic Date Check that names the 24 November stories left out
(Huawei verdict, Houthi drone on the Riyadh tower, the Gulf of Finland
ship strike, COP31, Real Madrid 5–1 PSV). Every picture is drawn in code
(HTML + inline SVG); no photographs. All 16 stories were checked against
live reporting (Reuters, ABS, ABC News, BEA, NDTV, Xinhua, the Kremlin,
The Hindu) and are written in my own words.

## Run it

```sh
mkdir -p out && MAKEFUN_OUTPUT_DIR=out node main.ts
```

This copies `entry.png` (1024×1024) to the output directory. To rebuild
the image from scratch, run `./render.sh` (builds `page.html` with
`generator/build-page.mjs`, then screenshots it with headless Chromium
and crops to 1024×1024).
