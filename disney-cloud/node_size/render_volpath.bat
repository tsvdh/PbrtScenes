@echo off 

set spp=1024

C:\Users\tsvdh\CodeProjects\Clion\AcceleratedVolRenderer\build\Release\pbrt.exe ^
C:\Users\tsvdh\CodeProjects\VSCode\PbrtScenes\disney-cloud\node_size\disney-cloud.pbrt ^
--display-server localhost:14158 --spp %spp% --maxdepth 10 --integrator volpathcustom ^
--outfile C:\Users\tsvdh\OneDrive\Documenten\thesis\results\disney-cloud_node_size\volpath\disney-cloud_volpath.exr