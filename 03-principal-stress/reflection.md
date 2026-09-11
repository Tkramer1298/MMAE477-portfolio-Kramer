# Reflection — principal stresses at two stations

## Carried forward from 02

* Plate width, b (mm):24.5 mm
* Plate thickness, h (mm): 3.175 mm
* Material (CF or aluminum): aluminum
* V(0), self-weight included, from `02` (gf): 54.76  gf
* M(0), self-weight included, from `02` (gf·mm): 8313.6 gf·mm
* V(60), self-weight included, from `02` (gf): 69.28 gf
* M(60), self-weight included, from `02` (gf·mm): 4592.4 gf·mm

## Cross-section properties (same at both stations)

* Area, A = b h (mm²): 77.79 mm^2
* Moment of inertia, I = b h^3 / 12 (mm^4): 65.35 mm^4
* c = h / 2 (mm): 1.59 mm

## Root (x = 0)

**Neutral axis**

* tau\_xy = 1.5 V(0) / A (gf/mm²):1.056
* sigma\_1 (gf/mm²):1.056
* sigma\_2 (gf/mm²):-1.056
* theta\_p (degrees):45
* sigma\_vM (gf/mm²):1.829

**Top surface**

* sigma\_x = 6 M(0) / (b h^2) (gf/mm²):201.97
* sigma\_1 (gf/mm²):201.97
* theta\_p (degrees):0
* sigma\_vM (gf/mm²):201.97

## Mid-span (x = 60 mm)

**Neutral axis**

* tau\_xy = 1.5 V(60) / A (gf/mm²):1.336
* sigma\_1 (gf/mm²):1.336
* sigma\_2 (gf/mm²):-1.336
* theta\_p (degrees):45
* sigma\_vM (gf/mm²):2.31

**Top surface**

* sigma\_x = 6 M(60) / (b h^2) (gf/mm²):111.57
* sigma\_1 (gf/mm²):111.57
* theta\_p (degrees):0
* sigma\_vM (gf/mm²):111.57

## Sanity checks

* Root neutral axis: does sigma\_1 - sigma\_2 equal 2 \* tau\_xy? (yes/no, and
the two numbers):yes 1.056,-1.056
* Root top surface: does sigma\_1 equal your sigma\_x there? (yes/no):yes
* Mid-span neutral axis: does sigma\_1 - sigma\_2 equal 2 \* tau\_xy? (yes/no):yes
* Mid-span top surface: does sigma\_1 equal your sigma\_x there? (yes/no):yes
* Did both top-surface sigma\_vM values come out equal to their sigma\_x?
(yes/no):yes

## Root vs. mid-span — thinking ahead to FEA

* Which of your four points has the largest sigma\_vM, and does that match
what you'd expect (the root generally carries more moment than
mid-span)? root\_top\_surface, It does. it takes the forces from the entire arm at that point.
* Given the Saint-Venant framing in the instructions: when you eventually
check these hand-calc numbers against an FEA model of the same arm,
which station do you expect to match more closely, and why? What
specifically about the root makes it a worse fit for the beam-theory
idealization than mid-span? where x= 60 mm will be more accurate where as at the roots, there will be different reactions based on how the arm is mounted.
* What would you actually be looking at in an FEA contour plot to make
that comparison — the same sigma\_vM number, or something else? how the arm connects to the frame of the drone to see if the sigma VM number calculated actually holds.

## Anything still hard to pin down

*(What's still an assumption or a guess here, and why? Real gaps are fine
to name.)*

