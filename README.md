DC Motor Speed Control - Model-Based Design (MBD) 🚀
Overview
This repository contains a complete mathematical Model-Based Design (MBD) for controlling the speed of a DC Motor using MATLAB/Simulink. The plant is built entirely from fundamental electrical and mechanical differential equations, without relying on pre-built physical toolboxes (like Simscape).

🆕 Version 2.0: Cascade Control vs. Single-Loop PI Control 🛡️
The latest update introduces a Cascade Control architecture (Speed & Current loops) compared directly against a traditional Single-Loop PI controller under severe mechanical load variations.

The Engineering Challenge: Hardware Protection
When a sudden mechanical load is applied at t = 2.0s:

🔴 Single PI Controller (The Reckless): Attempts to maintain the target speed at all costs, resulting in a dangerous current spike reaching ~25A. In a real-world scenario, this would likely destroy the H-Bridge transistors.

🟢 Cascade Controller (The Wise): The inner current loop acts as an intelligent safety mechanism, strictly limiting the current to a safe threshold of 15A. It sacrifices a fraction of speed recovery time to ensure complete hardware protection.

Simulation Results (The Trade-off)
The scope below demonstrates the direct comparison (Top: Cascade, Bottom: Single PI):

System Architecture
Both systems run in parallel for a direct performance comparison:

⚙️ Version 1.0: Single PI & Custom PWM Generator
The foundational version of this project focuses on building the core components from scratch:

Mathematical Plant Modeling: Pure mathematical blocks highlighting a deep understanding of the motor's transfer function.

Custom PWM Generator: Designed from the ground up with a user-friendly UI (Mask) for toggling between Unipolar and Bipolar switching modes.

Inside the Custom PWM:
Version 1.0 Model & Scope:
How to Run 💻
Clone or download this repository.

Run the motor_params.m script in MATLAB to load the physical motor parameters into the workspace.

Open either DC_Motor_Cascade_vs_Single_PI.slx (V2.0) or DC_Motor_Single_PI.slx (V1.0) in Simulink.

Run the simulation and open the Scope blocks to observe the results.

Designed by: Ahmad Ghaith Mdraty

Role: Mechatronics & Control Systems Engineer
