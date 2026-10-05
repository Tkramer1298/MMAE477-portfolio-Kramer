# Reflection — truss arm force paths

## Case 2A vs. Case 2B

* Case 2A: which member has the largest (|N|), and is it in tension or
compression? Member BD in compression
* Case 2B: which member has the largest (|N|), and is it in tension or
compression? Member CE in tension
* Is the maximum force magnitude the same or different between 2A and 2B? the same
* If the magnitudes are the same, why can the distinction between tension
and compression still matter for a slender truss member? How the reaction force acts on each member is different. a member may hold more weight in compression then tension.

## The vertical member in Case 2B

* What force did you obtain in member `BC`? 0
* Explain this result directly from equilibrium of joint `B`. Which forces
are available to balance the vertical direction at that joint?  The reaction force of CA keeps bending forces from reaching point B.
* Does this mean `BC` is unnecessary in a real quadcopter arm? Why or why
not? Name at least two loading situations in which the answer could
change.       As long as we are looking at the situation as an ideal situation, then member BC would be unnecessary. If a load was applied on BC from above or below then the member would be useful.

## Adding more cells at fixed arm size

For this section, `L\\\_total = 120 mm`, `h = 30 mm`, and `P = 250 gf` remain
fixed while the number of cells is increased.

* As `n` increases, what happens to the cell width? cell width decreases.
* What happens to the magnitude of the diagonal-member force? Explain this
geometrically in terms of the diagonal angle. The diagonal force magnitude decreases. As n increases and cell width L shrinks, the diagonal slope relative to horizontal becomes steeper. Because the diagonal members carry the vertical shear force P,           N\_{diag} = P /\\sin\\theta. As \\(\\sin\\theta\\) increases toward 1, the required diagonal axial force decreases.
* What happens to the maximum (|N|) anywhere in the truss as `n`
increases?it remains constant at 1000 gf
* Why is this trend different from the trend in the diagonal force? Relate
your answer to the overall bending moment that the arm has to transmit
near the body. The maximum member force is dictated by the total cantilever bending moment at the root support.The root chords carry this moment as an axial force couple.Because total arm length and depth remain constant, and the maximum root chord force are invariant to the number of cell subdivisions n.
* In Family A, is the root-region chord carrying the largest load primarily
in tension or compression? compression
* In Family B, is the root-region chord carrying the largest load primarily
in tension or compression? Tension

## Design interpretation

* Based only on axial-force magnitude, does increasing the number of cells
make the truss unambiguously better? No. Increasing n reduces diagonal forces but leaves the maximum chord force at the root unchanged at 1000 gf.
* What additional penalties or failure modes could appear as more members
are added? Consider at least mass, joints/fasteners, manufacturability,
and buckling. More members require additional joint gussets/fasteners, increasing overall weight. Greater structural complexity increases assembly time and manufacturing cost. Pin/bolted joint tolerances accumulate, increasing structural flexibility.
* If you had to choose between Family A and Family B for this idealized
upward-thrust load before doing a full buckling analysis, which load-path
feature would you pay the most attention to, and why?  Family B is preferable because its maximum force 1000 gf occurs in tension along the bottom root chord, whereas Family A places its maximum load in compression along the top chord, making Family A more susceptible to buckling failure.

## Anything still hard to pin down

*(What assumptions in this pin-jointed, force-only model are least realistic
for an actual quadcopter arm?)*

