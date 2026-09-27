# Reflection — the whole frame in FEA

## Carried forward

* Arm design used in your frame (plate or tube) and material: Plate
* P = T\_hover, from `01` (gf, and N): 83.8 gf or 0.822 N
* P\_max = your motor's max thrust at full throttle, from `01` (gf, and N): 1526 gf or 14.965 N
* E, from `04` (GPa): 70 GPa
* I for your arm's cross-section (mm^4): 65.35 mm^4

## Strength

* Strength value (MPa), and which kind (yield for aluminum, tensile for CF): 276 MPa, AL
* Source (link or citation): https://www.onlinemetals.com/en/buy/aluminum/0-125-x-1-aluminum-rectangle-bar-6061-t6511-extruded/pid/1125
* Converted to gf/mm^2 (MPa x 101.97): 28,143.72 gf/mm^2

## Checking the model (Step 1)

* Frame mass from your CAD model (g): 158 g
* FEA software used: Inventor
* Material assigned in the software (exact match, or closest substitute — say
which): Aluminum 6061
* How that compares to the 100 g assumed in `01`: +58 g
* If different: what W and T\_hover would become with your actual frame
mass: W = 393.2 g --> T\_hover = 98.3 gf
* L\_cad, arm length in your model, body to motor-mount center (mm): 37.5 mm
* y\_hand\_Lcad = P L\_cad^3 / (3 E I) (mm): 0.00316 mm

## Hover setup (Step 2)

* What region you fixed (which faces, roughly how big), and why that's a
reasonable stand-in for a vehicle in flight: Inside face of mounting hole for electronics because that will be the center of mass when all the electronics are attached.
* How you applied the four loads (confirm: four separate Force loads): 4 Separate
* Part or assembly? If assembly, what does the default "bonded" contact
assume about your joints? Assembly, assumes that the bond between plates is not completely rigid.

## Frame vs. beam (Steps 3–4)

* Where the maximum von Mises stress is, in words: Where the vertical arm attaches to the horizontal motor plate.
* Arm tip deflection, probed at the motor mount (mm): 0.01 mm
* % difference from y\_hand\_Lcad: 103.846%
* Mid-length arm stress (von Mises for aluminum, 1st principal for CF) —
FEA (MPa and gf/mm^2) vs. beam theory, M c / I 
with M = P L\_cad / 2 (gf/mm^2): FEA: 0.747 MPa or 76.17 gf/mm^2, BT: 0.72 MPa or 73.42 gf/mm^2
* Why does the frame deflect more (or not) than the `04` beam? What did
`04`'s model assume about the root that this one doesn't? It deflects slightly more, this could due to where I probed for the stress analysis. The 04 model assumes perfect conditions with the end of the beam being fixed in place with a longer L value.

## Sharp vs. filleted corner (Step 5)

* How you refined the mesh (smaller Average Element Size, Local Mesh
Control, or your software's equivalent): from 0.1 to 0.02
* Which stress you tracked (von Mises for aluminum, 1st principal for CF): Von Mises
* Where the highest stress was in the sharp version, and in the filleted
version: Where the vertical arm attaches to the horizontal motor plate. Fillets cannot be added because of the construction of the drone.
* Did max displacement settle as the mesh got finer, in both versions? Yes the max displacement settled at 0.013
* Filleted version — did the highest stress settle? (values at each
refinement, MPa): The current highest stress without fillets maxes out at 3.68 MPa
* Sharp version — did the highest stress settle, or keep climbing? (values
at each refinement, MPa): settled at 3.68 MPa
* Based on what you saw: which of these stress numbers would you trust for
a design decision, and why? The 3.68 MPa with a 0.02 Mesh value because it becomes more and more precise as you increase the mesh view.

## Full throttle and factor of safety (Step 6)

* Predicted peak stress at full throttle, by scaling hover (MPa): 67.013 MPa
* Predicted tip deflection at full throttle, by scaling hover (mm): 0.237 mm
* Simulated peak stress at full throttle (MPa): 67 MPa
* Simulated tip deflection at full throttle (mm): 0.174 mm
* Did prediction and simulation agree? If not, what was wrong? They were extremely close to one another but the deflection at the motor mount is lower than at the edge of the motor mount plate.
* Highest trustworthy stress at full throttle, and where it is (MPa, and
gf/mm^2) — von Mises for aluminum, max principal (sigma\_1) for CF: 35.5 MPa at the connection point between vertical arm and horizontal motor plate.
* FoS = strength / that stress: 7.75 
* If you checked the software's Safety Factor plot: its minimum, and what
it divides by: minimum is 33.496 on the plot.
* Does your frame clear FoS >= 1.5 at full throttle? Yes
* Is full-throttle tip deflection more than \~10% of L\_cad? No it is 0.5%

## What you'd change

*(If FoS or mass missed the mark: what would you change, why, and what
would it cost in mass? If both are fine: what's the next thing that could
break this frame that you haven't modeled yet?)*

## Anything still hard to pin down

*(What's still an assumption or a guess here, and why? Isotropic CF,
perfectly rigid bolts, the fixed center, no self-weight — real gaps are
fine to name.)*

