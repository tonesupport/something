# records, standalone build

One command builds the single-file Records app from the pinned source in this repository, with no network, no npm and no git.

    node standalone/records/build.mjs

The result is standalone/records/out/records.html, with a records.build.json manifest beside it. A correct build prints a line ending in "== frozen pin", and its SHA-256 is 9106a21088beb5892d1ca4db4d9765344b4629f1a1b87e0cd16ef5ea3f6516fb. The build takes a few seconds. You need Node 22.12 or newer; it was developed and checked on Node 22.22.0 on Linux x64.

## What it does

Stage 1 turns the source into a page. It unpacks the vendored npm tarballs in vendor/npm into a temporary directory, checking each one against the sha512 integrity recorded in src/records/package-lock.json. It then runs the pinned Vite 8.3.4 on a copy of src/records and fills kit/page.template.html with Vite's JavaScript, its CSS and the five favicons. The kit directory also holds the IBM Plex fonts and theme block that the original build added.

Stage 2 is the earlier single-purpose script, unchanged apart from its pins and its command line. It replaces the page's generic sessionStorage mock with the puter-persist layer (an IndexedDB stand-in for the Puter SDK), applies the FM19 and FM21 fixes to the minified application module, and runs 24 checks, including a scan that fails the build if anything in the file could reach the network. Search build.mjs for "[merge]" to see every edit made when the two were joined.

The result is a standalone file that keeps its data in the browser's IndexedDB. It does not talk to Puter.

## What is pinned

The build refuses to continue, and says which pin failed, if any of these differ: the digest of every build input (src/records source plus dev/puter-localhost.mjs), the exact bytes Vite writes, the application module (596ac669, the same hash as the original kit's), the assembled page, and the final file. All five variants (a-only, a-literal, a-guard, b-literal, b-guard) build to their original frozen hashes. The default is a-guard.

Source commit: a34837662ea39e8108e26dcd86544878d3deeca1 of HeyPuter/everything. src/records has not changed since then in this fork.

## Platforms

The vendored native binaries cover Linux x64 (glibc), macOS Apple silicon and Windows x64. On any other machine the build stops and names the missing tarball. Download that exact file from the URL in package-lock.json into vendor/npm; its integrity is checked, so a wrong file is refused. Only the Linux build has been run end to end, so treat the other two as untested; Vite's output should not depend on the platform, and the pins will tell you if it does.

On Windows, turn off automatic line-ending conversion before cloning (git config core.autocrlf false), or the source digest will not match.

To prove the build is offline on Linux, run it as `unshare -rn node standalone/records/build.mjs`.

## Things to know

The original kit's input page cannot be recovered, because its generic mock script is lost. That script is thrown away by stage 2, so nothing downstream depends on it. Stage 1 therefore builds an equivalent page whose application module is byte-identical to the original, and build.mjs accepts either page hash (ORIGINAL_INPUT_SHA256 holds the old one). Every output pin is the original.

The theme block (IBM Plex fonts and the violet and green palette) never reaches the real page. The original kit inserted it before the first "</head>" in the bundle text, and that string is inside the print-preview template in the app, so only the print window is themed. This build reproduces that exactly because the goal file does. If you want the theme on the actual page, that is a deliberate change to kit/page.template.html and every output pin will change.

The fonts are IBM Plex Sans, Serif and Mono, which are licensed under the SIL Open Font License 1.1. The upstream licence check in src/records does not run here and its approved list does not include that licence.

## Updating the pins

Change anything under src/records, the vendored tarballs or kit, and the build will stop at the first pin that no longer matches, printing the new value. Review the change, then edit STAGE1 and PINS in build.mjs. Stage 2's anchors are written against one specific Vite output, so a Vite upgrade will make them fail loudly; fix the anchor, never loosen the check.
