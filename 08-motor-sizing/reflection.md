# Reflection — motor sizing

**Write short answers based on your numbers in `results.csv`.**

## What changed since `01`

* Which earlier choices did you change (motor, KV, propeller, battery, ESC,
or anything else), and why? Point to the `DECISIONS.md` rows. I actually made zero changes to my drone parts.
* If you changed nothing, why are you confident your `01` choices still
hold? The trust needed to hover and how long the drone can hover are both great numbers.

## Requirements

* Which requirements does your final choice meet, and which does it miss? My drone part selections meet all requirements, it can hover with no issue, hover for a long period of time, and the weight of the complete drone is under the motor weight capacity of 400g
* For any requirement you miss, what would you change: KV, propeller, cell
count, battery capacity, or something else? Explain using the lecture's
ideas (for example, what KV does to speed per volt and current per unit
torque).

## Model checks

* How does your full-throttle rpm compare with the no-load speed `KV × V`?
Why must it be lower? without any resistance to the spinning of the motor, the motor will spin much faster.
* Why is the motor current at hover larger than the battery current shown
in the thrust table? the motor puts the current to use in order to spin the propeller while the battery is only providing the motor with the necessary power.
* How does your `Q/T` compare with the 15 mm assumed in Lab 07? Give one
reason the two might differ. my value is smaller, this could be due to the component choices I made.

## Closing the loop

* Did your vehicle weight change after Steps 3–5? If so, by how much, and
did your choice still meet the requirements after you repeated the
calculation? My weight has not changed. still 379.6

## What is still uncertain

* Which number in your sizing is least reliable, and how could it be
measured later in the course? the Battery is of main concern.

