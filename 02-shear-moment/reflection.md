# Reflection — shear force, bending moment, and self-weight

## What changed since your last pass (01)

*(A few sentences: anything you caught or revised in your `01` numbers
while pulling T\_hover forward into this pass?)*



## Your numbers

* P = T\_hover, per-motor hover thrust from `01` (gf): 83.8 gf
* Arm length, L (mm): 120 (given)
* M(0), idealized / point-load-only (gf·mm): 10,056 gf·mm

**Analysis 1 — flat plate**

* Material (CF or aluminum): Aluminum
* Part sourced (name + link): https://www.onlinemetals.com/en/buy/aluminum/0-125-x-1-aluminum-rectangle-bar-6061-t6511-extruded/pid/1125
* Width x thickness (mm): 25.4 x 3.175 mm
* Density, rho, and where it came from (g/mm³ or g/cm³ + source): 2.70 g/cm³, https://www.onlinemetals.com/en/buy/aluminum/0-125-x-1-aluminum-rectangle-bar-6061-t6511-extruded/pid/1125
* Area, A (mm²): 80.645 mm^2
* w0 = rho x A (gf/mm): 0.242 gf/mm
* Total arm self-weight, w0 x L (gf): 29.03 gf
* M(0) with self-weight included (gf·mm): 8313.6 gf·mm
* Change in M(0) from self-weight, as a percent of the idealized value: 25%

**Analysis 2 — round tube**

* Material (the other one — CF or aluminum): CF
* Part sourced (name + link): https://dragonplate.com/dragonplate-carbon-tube-10mm-od-x-288id-x-24
* Outer diameter x wall thickness (mm): 10 mm
* Density, rho, and where it came from (g/mm³ or g/cm³ + source): 0.00155 g/mm³, https://dragonplate.com/dragonplate-carbon-tube-10mm-od-x-288id-x-24
* Area, A (mm²): 36.51 mm^2
* w0 = rho x A (gf/mm): 0.057 gf/mm
* Total arm self-weight, w0 x L (gf): 6.791 gf
* M(0) with self-weight included (gf·mm): 9645.6 gf·mm
* Change in M(0) from self-weight, as a percent of the idealized value: 23%

## Comparing the two

* Which of your two candidates has the lower M(0) — the plate or the tube?

&#x09;Plate

* Your best guess as to why: is it mostly the material (density
difference), mostly the shape (area difference), or genuinely both? You
don't have enough data here to prove it cleanly — say what you'd need to
check to actually isolate the cause.

&#x09;The differences in density is large enough to feel as if that is the cause of the difference in M(0).

* Is self-weight actually negligible for a build this size? What would
have to change (bigger arm, heavier material, lighter thrust) for that
answer to flip? It is due to how light of materials we are using, for that to flip the weight would have to increase in any matter of combinations between material, size, and thrust.

## Anything still hard to pin down

*(What's still an assumption or a guess here, and why? Real gaps are fine
to name.)*

