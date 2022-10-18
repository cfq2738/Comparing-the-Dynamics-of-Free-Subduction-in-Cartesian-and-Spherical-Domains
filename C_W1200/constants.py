#!/usr/bin/env python

# NonDimensional Parameters
d_nondim = 2.89e6
rho_nondim = 3300
mu_nondim = 2.0e20

# Dimensions of the Mesh
xdim = 4000.0e3/d_nondim
ydim = 2890.0e3/d_nondim
zdim = 2000.0e3/d_nondim

# Geometry of the Plate
L_plate = 2200.0e3/d_nondim # Initial Plate Length
Trail_Edge_Dist = 600.0e3/d_nondim # Trail Edge Distance from the back wall
Roc = 250.0e3/d_nondim # Radius of curvature
beta = 77 # angle of curvature

# Fixed Parameters
g = 3982.698885 # nondimensional gravitational acceleration
D_um = 660.0e3/d_nondim # Depth of upper mantle
mu_um = 2.0e20/mu_nondim # Upper Mantle Viscosity
mu_lm = 50 * mu_um # Upper Mantle Viscosity
mu_sp = 2.0e23/mu_nondim # Side Plate Viscosity
mu_plate = 100 * mu_um # Initial Visco-Plastic Plate Viscosity
rho_mantle = 3300/rho_nondim # reference mantle density (not provided in Stegman)
tau_yield = 100e6 #maximum yield stress of 100 MPa
wz_thickness = 22.0e3/d_nondim # 22km between plate and side plate

# Variable Parameters
W_plate = (1200.0e3/2.0)/d_nondim # Plate Width
h_plate = 70.0e3/d_nondim # Plate Thickness
h_core = 30.0e3/d_nondim # Core Plate Thickness
delta_rho = 80.0/rho_nondim # Plate/mantle density difference
mu_core = 100*mu_um # Core Plate Viscosity
