# Project 2: Antenna Array Analysis

This project focuses on the simulation and analysis of **Broadside** and **End-Fire** antenna arrays using MATLAB. The project explores how array parameters like number of elements (N) and element spacing (d/λ) affect the radiation patterns.

---

## Folder Structure

- `Broadside/` : Contains MATLAB scripts and generated plots for Broadside arrays.
- `EndFire/` : Contains MATLAB scripts and generated plots for End-Fire arrays.
- `Antenna_ASS_2 (1).pdf` : Detailed report covering theory, simulations, and analysis of both array types.

---

## Broadside Array

Broadside arrays are arrays where the main lobe is perpendicular to the array axis.

**Key Points:**
- Element spacing fixed at `d = λ/2`
- Number of elements `N` varied from 2 to 20
- Phase excitation = 0 for all elements
- MATLAB scripts generate:
  - 2D polar plots of array factor
  - 3D radiation patterns
- Additional simulations vary `d/λ` for `N = 8` from 0.1 to 2

**Outputs:**  
- `Broadside_Rad_N_X.png` : 2D/3D radiation patterns for different N  
- `Broadside_Rad_D_X.png` : 2D/3D radiation patterns for varying d/λ  

---

## End-Fire Array

End-Fire arrays are arrays where the main lobe is along the array axis.

**Key Points:**
- Element spacing fixed at `d = λ/4`
- Number of elements `N` varied from 2 to 20
- MATLAB scripts generate:
  - 2D polar plots of array factor
  - 3D radiation patterns
- Additional simulations vary `d/λ` over multiple values

**Outputs:**  
- `EndFire_Rad_N_X.png` : 2D/3D radiation patterns for different N  
- `EndFire_Rad_D_X.png` : 2D/3D radiation patterns for varying d/λ  

---

## Project Report

The included report (`Antenna_ASS_2 (1).pdf`) contains:
- Theory and formulas for both Broadside and End-Fire arrays
- Detailed MATLAB simulation procedures
- Visualization of radiation patterns
- Analysis of the effects of element spacing and number of elements on directivity and beamwidth
- Observations and conclusions

---

## How to Run

1. Open MATLAB and navigate to the respective folder (`Broadside/` or `EndFire/`).
2. Run the main script for the desired simulation.
3. Generated 2D and 3D plots will be saved automatically in the folder.

---

## Requirements

- MATLAB R2016b or later
- Basic knowledge of antenna arrays and MATLAB plotting functions
