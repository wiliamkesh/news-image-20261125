// The World in One Day — make.fun news-image-20261125 entry point.
//
// The finished front page already exists in this repository as entry.png
// (drawn at build time by generator/build-page.mjs and captured with
// headless Chromium; see render.sh). This program's only job is to hand
// that finished file to the grader at MAKEFUN_OUTPUT_DIR/entry.png
// (default /output). It does a plain file copy, so the bytes it writes
// are identical on every run — the two grading runs always agree.
//
// Node 22, standard library only, no network.
import { copyFileSync, mkdirSync } from 'node:fs';
import { join } from 'node:path';

const outputDir = process.env.MAKEFUN_OUTPUT_DIR ?? '/output';

mkdirSync(outputDir, { recursive: true });
copyFileSync(
  new URL('./entry.png', import.meta.url),
  join(outputDir, 'entry.png'),
);
