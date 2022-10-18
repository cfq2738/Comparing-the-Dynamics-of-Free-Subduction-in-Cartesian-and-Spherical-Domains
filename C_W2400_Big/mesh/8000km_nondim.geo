SetFactory("OpenCASCADE");
nondim = 2.89e6;
size = 1.26e5/nondim;
xdim = 9.4e6/nondim;
ydim = 2.89e6/nondim;
zdim = 12.4e6/nondim;
Point(1) = {0, 0, 0, size};
Point(2) = {xdim, 0, 0, size};
Point(3) = {xdim, 0, zdim, size};
Point(4) = {0, 0, zdim, size};
Point(5) = {0, ydim, 0, size};
Point(6) = {xdim, ydim, 0, size};
Point(7) = {xdim, ydim, zdim, size};
Point(8) = {0, ydim, zdim, size};
//+
Line(1) = {4, 1};
//+
Line(2) = {1, 2};
//+
Line(3) = {2, 3};
//+
Line(4) = {3, 4};
//+
Line(5) = {4, 8};
//+
Line(6) = {1, 5};
//+
Line(7) = {2, 6};
//+
Line(8) = {3, 7};
//+
Line(9) = {8, 5};
//+
Line(10) = {5, 6};
//+
Line(11) = {6, 7};
//+
Line(12) = {7, 8};
//+
Line Loop(1) = {1, 2, 3, 4};
//+
Plane Surface(1) = {1};
//+
Line Loop(2) = {4, 5, -12, -8};
//+
Plane Surface(2) = {2};
//+
Line Loop(3) = {1, 6, -9, -5};
//+
Plane Surface(3) = {3};
//+
Line Loop(4) = {6, 10, -7, -2};
//+
Plane Surface(4) = {4};
//+
Line Loop(5) = {11, -8, -3, 7};
//+
Plane Surface(5) = {5};
//+
Line Loop(6) = {9, 10, 11, 12};
//+
Plane Surface(6) = {6};
//+
Surface Loop(1) = {2, 1, 3, 4, 6, 5};
//+
Volume(1) = {1};
//+
Physical Surface(1) = {1};
//+
Physical Surface(2) = {2};
//+
Physical Surface(3) = {3};
//+
Physical Surface(4) = {4};
//+
Physical Surface(5) = {5};
//+
Physical Surface(6) = {6};
//+
Physical Volume(7) = {1};

Field[1] = Distance;
Field[1].SurfacesList = {6};
Field[1].Sampling = {500000};

Field[2] = Threshold;
Field[2].InField = 1;
Field[2].SizeMin = size/3;
Field[2].SizeMax = size;
Field[2].DistMin = 1e5/nondim;
Field[2].DistMax = 3e5/nondim;

Field[3] = Box;
Field[3].VIn = size/4;
Field[3].VOut = size;
Field[3].XMin = 1.55;
Field[3].XMax = 2.45;
Field[3].YMin = 0.9;
Field[3].YMax = 1.0;
Field[3].ZMax = 0.45;
Field[3].ZMin = 0.0;
Field[3].Thickness = 0.05;

Field[4] = Min;
Field[4].FieldsList = {2, 3};

Background Field = 4;
