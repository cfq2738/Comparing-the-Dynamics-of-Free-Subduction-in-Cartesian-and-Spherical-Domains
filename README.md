# Comparing-the-Dynamics-of-Free-Subduction-in-Cartesian-and-Spherical-Domains

Files necessary to reproduce models presented in "How slab age and width combine to dictate the dynamics and evolution of subduction systems: a 3-D spherical study", submitted to "Geochemistry, Geophysics, Geosystems". The input files are organised by their model names.

The Fluidity computational modelling framework, including source code and documentation, is available from https://fluidityproject.github.io/; the version used for the simulations presented herein has been archived at https://zenodo.org/record/5636819\#.YYBeydZBxR4. For models in a Cartesian domain, use the open source 3D finite element mesh generator Gmsh (available at https://gmsh.info/#Download) to generate the mesh file MESH.msh by executing gmsh -3 -optimize_netgen MESH.geo in the mesh sub-directiory. To generate the mesh for cases in the spherical domain, execute python icosahedral_gmsh_new.py icosahedron 2.22 5 in the icosahedral_mesh sub-directory, where icosahedron is the output mesh, 2.22 is the non-dimensionalised radius of Earth and 5 is the number of subdivisions used to generate the mesh used for the simulations. The problem should be decomposed into multiple subdomains to benefit from parallelism, by executing mpirun -np NCPUS flredecomp fluidity_file decomposed_file, where you should replace NCPUS by the number of subdomains, fluidity_file by the flml file without the .flml extension, and decomposed_file by the name of your choice, also without the .flml extension. Finally, run the simulations by executing mpirun -np NCPUS fluidity -v2 -l decomposed_file.flml. The output will be stored in VTU format, which can be viewed using ParaView, available at https://www.paraview.org/download/ .
