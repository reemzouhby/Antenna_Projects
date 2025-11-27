# Dipole Antenna Radiation Pattern Analysis


## Overview
This project analyzes and simulates the radiation patterns of dipole antennas using MATLAB. The study includes both the **Hertzian dipole** (infinitesimally short) and **finite-length dipoles** with varying length-to-wavelength (l/λ) ratios. The project visualizes the radiation characteristics and calculates directivity for different antenna lengths.

## Objectives
- Simulate and visualize 2D and 3D radiation patterns for dipole antennas.  
- Analyze the effect of antenna length on radiation characteristics.  
- Calculate directivity as a function of l/λ.  
## Methodology
- MATLAB was used for all simulations.  
- **Angular resolution:** 1000 points for θ and ϕ.  
- **Analyzed l/λ ratios:** 0.1, 0.25, 0.5, 0.625, 0.75, 0.999.  
- **Directivity calculation:** Numerical integration over 0–π for θ.  

### Steps
1. Compute the electric field pattern for Hertzian and finite-length dipoles.  
2. Normalize the field patterns.  
3. Generate 2D polar plots for E vs θ and E vs ϕ.  
4. Generate 3D surface plots of radiation patterns.  
5. Compute directivity versus l/λ and plot results.

## Results
- **Hertzian Dipole:** Figure-eight pattern in E-plane, omnidirectional in H-plane, toroidal 3D pattern.  
- **Finite-Length Dipoles:** As length increases, patterns become more directional; half-wave dipole shows optimal directivity.  
- **Directivity Analysis:** Short dipoles have low directivity; longer dipoles have multiple lobes and narrower beamwidth.

## MATLAB Files
- `Hertzian_Dipole.m` – Simulates Hertzian dipole radiation pattern.  
- `Finite_Length_Dipole.m` – Simulates finite-length dipole radiation patterns and computes directivity.
- `DirectivityCalculation.m` for calculate the directivity of the antenna . 

## Visualization
- 2D polar plots: E vs θ and E vs ϕ.  
- 3D radiation patterns for different l/λ ratios.  
- Directivity vs l/λ plot with key ratios highlighted.

## How to Run
1. Open MATLAB.  
2. Navigate to the project folder.  
3. Run the scripts:
   - `HertzianDipole.m` for Hertzian dipole simulation.  
   - `Finite-LengthDipoleSimulation.m` for finite-length dipole simulation.
   - `DirectivityCalculation.m` for calculate the directivity of the antenna .   
  

