# 🚀 DC Motor Speed Control - Model-Based Design (MBD)

![Simulink](https://img.shields.io/badge/Software-MATLAB%20%2F%20Simulink-red)
![Topic](https://img.shields.io/badge/Field-Mechatronics%20%26%20Control-blue)
![Status](https://img.shields.io/badge/Version-2.0-green)

## 📌 Overview
This repository features a comprehensive **Model-Based Design (MBD)** for DC Motor speed control. Unlike standard simulations, this plant is built entirely from scratch using **fundamental electrical and mechanical differential equations**, avoiding pre-built physical toolboxes like Simscape to demonstrate a deep understanding of system dynamics.

---

## 🆕 Version 2.0: Cascade Control vs. Single-Loop PI 🛡️
The latest update introduces a **Cascade Control Architecture** (Speed & Current loops), comparing it against a traditional **Single-Loop PI controller** under severe mechanical load variations.

### ⚖️ The Engineering Challenge: Hardware Protection
What happens when a sudden mechanical load is applied at $t = 2.0s$?

| Controller | Philosophy | Result | Safety |
| :--- | :--- | :--- | :--- |
| **🔴 Single PI** | "The Reckless" | Attempts to maintain speed at all costs. | **Dangerous:** Current spikes to ~25A (H-Bridge risk). |
| **🟢 Cascade** | "The Wise" | Inner loop limits current to a 15A threshold. | **Safe:** Protects hardware by sacrificing minor recovery time. |

---

## ⚙️ System Architecture & Features

### 1️⃣ Mathematical Plant Modeling
The motor is represented through pure mathematical blocks based on:
* **Electrical:** $V = L\frac{di}{dt} + Ri + e$
* **Mechanical:** $T_m = J\frac{d\omega}{dt} + B\omega + T_L$

### 2️⃣ Custom PWM Generator
Designed from the ground up with a **Custom Mask (UI)** allowing users to toggle between:
* **Unipolar Switching**
* **Bipolar Switching**

---

## 📊 Simulation Results
The model runs both systems in parallel for a direct performance comparison. 

> [!TIP]
> **Observation:** In the Cascade model, notice how the current "flatlines" at the limit during transients—this is the saturation block in the inner loop doing its job!

---

## 💻 How to Run
1.  **Clone** the repository.
2.  Run `motor_params.m` in MATLAB to load constants into the Workspace.
3.  Open `DC_Motor_Cascade_vs_Single_PI.slx` (V2.0) or `DC_Motor_Single_PI.slx` (V1.0).
4.  Hit **Run** and explore the Scopes.

---

## 👤 About the Designer
**Ahmad Ghaith Mdraty**
*Mechatronics & Control Systems Engineer*

---
*Developed as part of a deep dive into Control Theory and Embedded System Protection.*
