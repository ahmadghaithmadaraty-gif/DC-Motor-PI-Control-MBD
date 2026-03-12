# DC Motor Control - Model-Based Design (MBD) Series 🚀

## Overview
This repository contains a complete mathematical Model-Based Design (MBD) for controlling a DC Motor using MATLAB/Simulink. The plant is built entirely from fundamental electrical and mechanical differential equations, without relying on pre-built physical toolboxes. The project evolves from a basic speed controller to a fully protected, highly accurate Servo Position controller.

---

## 🎯 🆕 Version 3.0: Servo Position Control (Triple-Loop Cascade)
The latest major update transforms the motor into a precise Servo mechanism. A third outer loop (Position Loop) is added to command specific angles, while maintaining the rigorous hardware protection of the inner loops.

### Key Engineering Additions:
* **Position Control Loop:** Proportional (P) controller designed to achieve a target angle (e.g., 90 degrees) with zero steady-state error and minimal overshoot.
* **Rate Limiter (Slew Rate):** Implemented to strictly control angular acceleration and deceleration, preventing mechanical jerks and gear shearing during sudden position commands.
* **Holding Current Demonstration:** Proves the Cascade system's ability to maintain a fixed position under heavy, sudden mechanical load (at t=2.0s) by smoothly supplying the exact required holding current without dangerous spikes.

**V3.0 Simulation Results & Architecture:** *(Top: Cascade Triple-Loop | Bottom: Single PI Loop)* ---

## 🛡️ Version 2.0: Cascade Speed Control vs. Single PI
This version highlights the critical importance of hardware protection by comparing a Cascade architecture (Speed & Current loops) against a standard Single-Loop PI controller under severe mechanical load variations.

* 🔴 **Single PI:** Saturates voltage and draws a massive, destructive inrush current (~75A) to track speed.
* 🟢 **Cascade Control:** The inner current loop acts as a strict security guard, clamping the current perfectly at the safe limit of 15A, sacrificing a fraction of speed recovery to ensure complete hardware survival.

**V2.0 Results & Architecture:** ---

## ⚙️ Version 1.0: Basic PI & Custom PWM Generator
The foundational version focuses on building the core components from scratch:

* **Mathematical Plant Modeling:** Pure mathematical blocks representing the motor's transfer function.
* **Custom PWM Generator:** Designed from the ground up with a user-friendly UI (Mask) for toggling between Unipolar and Bipolar switching modes.

**V1.0 Architecture:** ---

## 💻 How to Run
1. Clone or download this repository.
2. Run the `motor_params.m` script in MATLAB to load the physical motor parameters into the workspace.
3. Open any of the `.slx` files (e.g., `DC_Motor_Servo_Position_Control.slx`) in Simulink.
4. Run the simulation and open the Scope blocks to observe the results.

---

**Designed by:** Ahmad Ghaith Mdraty  
**Role:** Mechatronics & Control Systems Engineer
