# End-Fire Antenna Array Radiation Pattern Analysis
## Overview
This project simulates and analyzes the radiation patterns of **end-fire antenna arrays** using MATLAB. Two main studies are included:  
1. Effect of the **number of elements (N)** on the end-fire radiation pattern for a fixed element spacing.  
2. Effect of **element spacing (d/λ)** on the array pattern for a fixed number of elements.

## Objectives
- Simulate 2D and 3D radiation patterns of end-fire arrays.  
- Examine how the number of elements affects beam direction, directivity, and side lobes.  
- Investigate the impact of element spacing on beamwidth and main lobe formation.  
- Save visualizations for documentation and analysis.

## Methodology
- MATLAB is used for all simulations.  
- **Parameters for part 1:**  
  - Element spacing: d = λ/4  
  - Number of elements: N = 2 to 20  
  - Phase progression: βd = π/2 (end-fire excitation)  
- **Parameters for part 2:**  
  - Number of elements: user-defined  
  - Spacings: vary d/λ over a specified range  
- Radiation patterns are computed using the **array factor equation** for end-fire arrays:  
  - 2D polar plots for E vs θ  
  - 3D surface plots for full radiation visualization  

## MATLAB Files
- In Nvary `p1.m` – Simulates radiation patterns for varying number of elements.  
- In D_lamdavary `p2.m` – Simulates radiation patterns for varying element spacing (d/λ).  

## Visualization
- **2D Polar plots:** Show main lobes and side lobes in the array pattern.  
- **3D Surface plots:** Provide complete 3D view of end-fire radiation pattern.  
- Saved figures for each N and spacing configuration.

## How to Run
1. Open MATLAB.  
2. Navigate to the `endfire` folder.  
3. Run:
   - Navigate to  `Nvary ` folder run  `p1.m` to see effects of different N.  
   -  Navigate to  `D_lamdavary ` folder run`p2.m` to see effects of different spacing.  

## Notes
- Adjust N or d/λ in the scripts to explore other scenarios.  
- Ensure MATLAB supports polar and 3D plotting functions.  


