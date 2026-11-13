# Quadcopter arm vibrations — reflection

**Name:**

## Part 1 — Geometry and approximate natural frequencies

**Q1.** State the `L`, `hy`, `bz`, `E`, `rho`, and motor mass you used, with units; explain any approximation to your actual arm. Report your **four approximate first bending frequencies** (bare vertical, bare lateral, with-motor vertical, with-motor lateral). Which direction has the smaller bending stiffness and why? What effect does adding the motor have? Name one structural vibration type excluded from this model.

L = 75 mm

hy = 10 mm (beam height is not uniform, max height is 20 mm, an average of 10 mm was used)

bz = 3 mm 

E = 30e6 Pa

rho = 1200 kg/m^3

motor mass = 33.3 mm

the direction with a smaller bending stiffness would be the y direction due to the bz value being smaller then the hy value when being cubed. 

adding a motor lowers the frequency in both directions significantly. 

Torsion

## Part 2 — Finite-element predictions

**Q2.** Compare the first vertical and lateral finite-element frequencies with and without the motor. Explain the effect of adding motor mass. How well do the four finite-element values agree with the corresponding Part 1 estimates?

Adding a motor mass dampens the frequency of vibrations within the beam. the four values are all within 1 of the experimental values.

## Part 3 — Mode shapes and mesh convergence

**Q3.** Describe the first three vertical bending mode shapes. Compare the first and third vertical frequencies with 2 and 32 elements. Which is more sensitive to refinement, and why?

The first 3 vertical bending mode shapes increase exponentially from the first mode to the last.

The 3rd mode is more sensitive to refinement as its values spike at 2 before slowly setting at 32. the 1st mode goes unchanged for 2-32.

## Part 4 — Motor and propeller excitation

**Q4.** Identify the motor and propeller you chose, your estimated lower and upper operating speeds (rpm), blade count, and the source or assumption behind your RPM range. Distinguish lateral 1P imbalance, vertical blade-passing-frequency (BPF) thrust loading, and vertical 2×BPF loading. Why needn't a balanced multiblade propeller produce fluctuating *total* thrust?

Motor, propeller and values all from Results.08

Lower RPM: 2081.5

Higher Rpm: 27753

Blade count: 3

lateral 1P imbalance: is caused by a shift of weight as the propeller spins as if there was a weight at the tip of the propeller, causing a rocking motion within the beam.

Vertical blade-passing-frequency (BPF) thrust loading: Is caused by the propeller crossing over the beam supporting it, causing a vertical frequency within the beam.

vertical 2×BPF loading: Is caused by the propeller crossing over the beam supporting it, causing a vertical frequency x2 within the beam.

**Q5.** Within your chosen operating range, which excitation frequencies approach a bending resonance? Where do higher modes make a difference to the 2×BPF prediction? What does the two-versus-three-blade comparison illustrate? Why might a frequency match still produce a small displacement?

For 1P and BPF, anything above 60 Hz causes excitement, and for 2xBPF, it is excited at above 200 Hz.

At higher modes in 2xBPF, the beam can handle higher frequencies.

The two-versus-three-blade comparison illustrates that 2 blades has a higher vertical tip amplitude than 3 blades.

Damping effects, non-ideal conditions, External influences, and initial conditions.

## Part 5 — Design sensitivity

**Q6.** For separate 15% increases in length, width, and height, give the percentage changes in first vertical and lateral frequencies (a brief three-row table is sufficient). Which dimension has the largest absolute effect on each frequency? Identify the case selected by the code for `results.csv`. Does its frequency shift improve separation from excitations over your motor's operating range? Discuss the mass tradeoff.

|case |dVert (%)|dLat (%)|
|-|-|-|
|length|-19.03|-19.03|
|Width|7.09|23.15|
|Height|23.15|7.09|

A 15% increase in length decreases both vertical and lateral frequencies by 19.03%. Increasing width has the largest absolute effect on lateral frequency (+23.15%), while increasing height has the largest absolute effect on vertical frequency (+23.15%).

## Optional — CAD modal analysis

**Q7 (optional).** State whether you analyzed your **existing quadcopter assembly** or a **standalone arm/beam**. Identify your CAD software, components and material(s), constraints and connections, and one mode shape with its natural frequency in Hz. Compare that mode with the relevant bending behavior or frequency scale in the beam code. For a matching bare rectangular beam, provide a direct numerical frequency comparison; for a full assembly or different geometry, explain why an exact match is not expected. Did you refine the mesh? Identify at least one possible source of disagreement.

