# Broadside Antenna Array Radiation Pattern Analysis


## Overview
This project simulates and analyzes the radiation patterns of **broadside antenna arrays** using MATLAB. Two main studies are included:  
1. Effect of the **number of elements (N)** on the radiation pattern for a fixed element spacing.  
2. Effect of **element spacing (d/λ)** on the array pattern for a fixed number of elements.

## Objectives
- Simulate 2D and 3D radiation patterns of broadside arrays.  
- Analyze how the number of elements affects directivity and pattern shape.  
- Study the impact of element spacing on beamwidth and side lobes.  
- Save visualizations for documentation and reporting purposes.

## Methodology
- MATLAB is used for simulations.  
- **Parameters for part 1:**  
  - Element spacing: d = λ/2  
  - Number of elements: N = 2 to 20  
  - Phase excitation: 0 (broadside)  
- **Parameters for part 2:**  
  - Number of elements: N = 8  
  - Spacings: d/λ = 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1, 1.5, 2  
- Radiation patterns are computed using standard **array factor equations**:  
  - 2D polar plots for E vs θ  
  - 3D surface plots for the complete radiation pattern  

## MATLAB Files
-  In Nvary `p2.m` – Simulates radiation patterns for varying number of elements.  
-  In D_lamdavary`p2_N_8_d_lamda.m` – Simulates radiation patterns for varying element spacing.  

## Visualization
- **2D Polar plots:** E vs θ showing main lobes and side lobes.  
- **3D Surface plots:** Full radiation pattern in 3D space.  
- Saved figures for each combination of N or d/λ.

## How to Run
1. Open MATLAB.  
2. Navigate to the `broadside` folder.  
3. Run:
   - `p2.m` to see effects of different N.  
   - `p2_N_8_d_lamda.m` to see effects of different spacing.  

## Notes
- Adjust N or d/λ in the scripts to explore other scenarios.  
- Ensure MATLAB supports 3D plotting and polar plotting functions.  


