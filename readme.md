# Control de Accionamiento de CA con Motor Sincrónico de Imanes Permanentes
This repository contains a project developed during the Automation and electrical machines course at the National University of Cuyo

### Abstract

In this project, an automatic position and movement control system will be modeled, designed, analyzed and simulated for a 4-quadrant electromechanical drive made up of a synchronous three-phase alternating current (AC) electric machine with permanent magnet excitation (PMSM). , which is powered by a three-phase inverter from an ideal direct current (DC) source and an output planetary gear speed reducer to the mechanical load. There is also a position sensor (encoder) on the motor shaft, 3 phase instantaneous current sensors at the inverter output to the stator and a stator winding temperature sensor. The mechanical load is the arm of a SCA RA type robot, for which NL dynamics have not been considered for simplification. As a first instance, the complete system will be modeled. Then a deep analysis of this will be made, studying its non-linearities, couplings and its behavior in the face of uncertainties in its parameters. Finally, a vector control strategy with oriented field will be carried out from which an external cascade motion controller with a torque modulator will be designed.

