# Reflection — 3D forces and moments on a quadcopter arm

**Write brief answers based on your calculations and the notebook plots.** Refer to the values in `results.csv` where useful; there is no need to copy all numerical output into this file.

## Reference inputs

All groups use the same prescribed beam: **L = 120 mm**, **b = 20 mm**, **h = 10 mm**, **E = 3.0 GPa**, **T = 250 gf**. These values provide a common comparison with the earlier 120 mm arm analysis; they need not match your group's previously selected plate.

## Step 1 — Vertical bending

* How closely does the FEA vertical tip deflection agree with the beam-theory prediction? Give the approximate percentage difference. they are within 1.67% of one another, with the prediction being larger.
* How can we extract a representative tip deflection from the 3D FEA displacement field for comparison with the centerline deflection predicted by beam theory? For direct comparison with elementary beam theory predictions, Rigid-Body Kinematic Fitting is preferred because 1D beam theory assumes plane sections remain plane.

## Step 2 — Bending in a second plane

* Which is greater: the vertical tip deflection from `Fy` or the lateral tip deflection from `Fz`? By what approximate factor? The vertical tip deflection of Fy by a factor of 3.91
* Explain the difference using the two second moments of area, `I\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\_y` and `I\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\_z`. due to the thickness being 2 times the height of the beam. its resistance to lateral forces is much greater than its resistance to vertical loads.

## Step 3 — Thrust and motor reaction moment

* Which tip translations and rotations are expected to be nonzero under `Fy+My` according to the beam compliance matrix? The expected nonzero tip displacement and rotation components are v\_L, w\_L, theta\_y, and theta\_z
* Compare the results for vertical thrust alone and combined thrust and motor reaction moment. Which tip displacement components change when the motor reaction moment is included? How significant is the additional displacement relative to the vertical deflection produced by thrust? Including the motor reaction moment introduces lateral translation and yaw/bending rotation about y. The additional lateral displacement is relatively minor, representing approximately 4.7% of the vertical deflection caused by nominal thrust.

## Step 4 — Torsion

* Compare the deformation produced by `Fy` and `Mx`. Why is the displacement of the tip center a useful measure of bending deformation but not torsional deformation? What quantity should be used to characterize torsion? Fy bends the arm vertically, shifting its centerline. Mx twists the arm around its length without moving the centerline. Tip displacement tracks bending well because the centroid translates, but fails for torsion because the center sits on the axis of rotation and stays stationary. Torsion must be measured using the sectional twist angle.
* How well does the FEA tip rotation agree with the beam-theory torsion prediction? Identify one reason why the two might differ. FEA tip rotation agrees very closely with beam theory. They differ slightly because the clamped root (x = 0) prevents out-of-plane warping in the 3D FEA model, artificially stiffening the arm compared to unconstrained Saint-Venant torsion theory.

## Model limitations

What is one assumption of this idealized beam/FEA model that could have an important effect on an actual manufactured quadcopter arm? The model assumes isotropic material properties

