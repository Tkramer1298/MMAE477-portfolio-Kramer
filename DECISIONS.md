# Design Decision Log

Every consequential design decision gets a row **when it is made**, not
reconstructed later. This log is the backbone of every design review and
defense this semester, they ask exactly these questions.

|#|Date|Decision|Alternatives considered|Criteria used|Evidence (link)|Assumptions still uncertain|
|-|-|-|-|-|-|-|
|1|8/21/26|small, quick drone, human piloted|larger, slower, more stable, human piloted|human piloted is smarter as I am a senior and wont make it to semester 3, I wanted something lightweight that could zip around, a smaller drone will be effected by surrounding and will be tougher to control for a good challenge|https://github.com/Tkramer1298/MMAE477-portfolio-Kramer/blob/main/00-drone-sizing-exercise/sizing-table.csv.xlsx|I believe the cost and weight of this drone will be within the constraints of what the final product will look like|
|2|8/28/26|the drone has been increased in size with larger motors|I planned on a very small quick drone, i still plan on the quick drone build but it will be slightly larger to account for the power output of the motors|the thrust output brings the margin way below the target of 35% so I need to add weight in order it to fly properly|https://github.com/Tkramer1298/MMAE477-portfolio-Kramer/tree/main/01-precision-sizing|I am not sure how i will exactly increase the weight or find propellers with a 4mm hole diameter|
|#|Date|Decision|Alternatives considered|Criteria used|Evidence (link)|Assumptions still uncertain|
|3|9/4/26|An aluminum plate for the arms of the drone|Carbon fiber as a tube or plate|The weight of the material, how much thrust it can handle. And how much thrust would be needed to lift the bot.|https://www.onlinemetals.com/en/buy/aluminum/0-125-x-1-aluminum-rectangle-bar-6061-t6511-extruded/pid/1125|I am uncertain how the arms will mount to the body of the drone or how motors will be mounted.|
|4|9/11/26|calculating shear and bending moments on the arm we decided.|only calculations done today.|Used equations given in the readme file within 03 lab|https://github.com/Tkramer1298/MMAE477-portfolio-Kramer.git|uncertain how the arm will preform in a FEA study.|
|#|Date|Decision|Alternatives considered|Criteria used|Evidence (link)|Assumptions still uncertain|
|5|9/18/26|Testing the Aluminum beam within cad|Carbon fiber as a tube or plate|The length , width, and height of the beam, along with the material|https://www.engineeringtoolbox.com/young-modulus-d\_417.html#gsc.tab=0<br />|All calculations worked out within Cad and the Beam looks to be strong enough to hold the weight of the thrust from a motor.|

|#|Date|Decision|Alternatives considered|Criteria used|Evidence (link)|Assumptions still uncertain|
|-|-|-|-|-|-|-|
|6|9/25/26|Drone made of aluminum, Made in multiple parts screwed together|1 piece 3D printed drone|A drone made of aluminum would support more weight.|https://github.com/Tkramer1298/MMAE477-portfolio-Kramer/blob/main/00-drone-sizing-exercise/sizing-table.csv.xlsx|Making a drone as 1 piece by 3D printed may work better in the long run|
|7|10/2/26|adding trusses to the vertical plates of my drone.|Keeping the plates full for better support but higher weight|Trusses are a great way to reduce weight while keeping most of the structural integrity of the plate.|https://github.com/Tkramer1298/MMAE477-portfolio-Kramer/tree/43056a4f11c374b13ac77e352ea5fb38fb53cc39/06-truss-force|Adding trusses may not be viable with a 3D printed drone body.|
|8|10/9/26|Seeing how thrust forces act on an arm in a 3D space.|no alternatives to consider|The google Collab file used to run the experiment.|https://github.com/Tkramer1298/MMAE477-portfolio-Kramer.git|how a thrust force will act on my concept drone arms|
|9|10/16/26|Calculating various specifications needed for my drone to fly to assure components picked will support my drone.|considering motor sizes, battery sizes, esc capacity.|sizing table from 01|https://github.com/Tkramer1298/MMAE477-portfolio-Kramer.git|partially worried my drone may be over powered.|
|10|10/23/26|calculated how my chosen propellers would interact with the drone and motors.|considering a larger propeller diameter|Calculations done in file 09|https://github.com/Tkramer1298/MMAE477-portfolio-Kramer.git|no uncertainties yet for propellers.|
|11|10/30/2026|changed the battery being used to power the drone.|a 700 mah battery over a 1100 mah one.|AI|https://github.com/Tkramer1298/MMAE477-portfolio-Kramer.git|no uncertainties|
|12|10/30/2026|changed the esc being used|The previous ESC picked was not all that reliable compared to the website where the current one was found.|the website used to find most of our components helps recommend parts that work with one another well.|https://tmotorhobby.com/goods-1018-T-MOTORHOBBY+Mini+F45A+-+45A+6S+BLHeli32+4-in-1+ESC.html|no uncertainties|
|13|10/30/2026|changed the flight controller|after making an ESC change, it made sense to listen to what the website recommended and go with a flight controller that would stack with our new ESC|the website used to find most of our components helps recommend parts that work with one another well.|https://tmotorhobby.com/goods-1172-T-MOTORHOBBY+Mini+Racer+20x20+F7+HD+Flight+Controller.html|no uncertainties|



**A good row survives the question: "Why should I believe this was the right
call?"** If the evidence link is empty, the decision isn't defensible yet.
That's a to-do, and the last column says what must be modeled or measured
before it's settled.

