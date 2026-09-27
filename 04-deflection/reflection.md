# Reflection — beam deflection, hand calc vs. Inventor

## Carried forward from 02 and 03

* Plate width, b (mm):25.4 mm
* Plate thickness, h (mm): 3.175 mm
* Material (CF or aluminum): aluminum
* P = T\_hover (gf):  83.8 gf
* I = b h^3 / 12 (mm^4), from `03`: 65.35 mm^4

## Young's modulus

* E, from a datasheet or reference (GPa): 70
* Source (link or citation): https://www.engineeringtoolbox.com/young-modulus-d\_417.html#gsc.tab=0
* E converted to gf/mm^2 (E\_GPa x 101,972): 7,138,040

## Hand calc

* EI (gf\*mm^2): 466,470,914
* y\_hand = P L^3 / (3 E I), L = 120 mm (mm): 0.103 mm

## Inventor model and simulation

* Material assigned in Inventor (exact match, or closest substitute — say
which): aluminum 6061
* Constraint and load setup (brief description — confirms it matches the
hand-calc assumptions): Added a fixed constraint to the end of the beam and a force load pointing up at the opposite end of the beam.
* y\_fea, maximum displacement (mm): 0.102 mm
* % difference between y\_fea and y\_hand: 0.01
* If the % difference is large (over \~25%), what did you check, and what
did you find? N/A

## Stress check: root vs. mid-span

* sigma\_vM, root, top surface — hand value (from `03`) (gf/mm^2): 201.97
* sigma\_vM, root, top surface — Inventor probe (gf/mm^2): 176.9
* sigma\_vM, mid-span (x = 60 mm), top surface — hand value (from `03`)
(gf/mm^2): 111.57
* sigma\_vM, mid-span, top surface — Inventor probe (gf/mm^2): 117.2
* Which station's hand and FEA values agree more closely? The Root
* Does this match the prediction you made in `03`'s "thinking ahead to
FEA" section? If not, what do you think explains the difference? Not exactly but they are pretty close, I believe it is due to the shape being 3D in Cad.

## Anything still hard to pin down

*(What's still an assumption or a guess here, and why? Real gaps are fine
to name.) Nothing too challenging, I am confident in what is happening so  far.*

