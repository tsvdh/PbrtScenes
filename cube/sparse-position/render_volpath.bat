@echo off 

set positions=side top bottom
set spp=1024

for %%p in (%positions%) do (
    C:\Users\tsvdh\CodeProjects\Clion\AcceleratedVolRenderer\build\Release\pbrt.exe ^
    C:\Users\tsvdh\CodeProjects\VSCode\PbrtScenes\cube\sparse-position\configs\cube_%%p.pbrt ^
    --display-server localhost:14158 --maxdepth 10 --spp %spp% --integrator volpathcustom ^
    --outfile C:\Users\tsvdh\OneDrive\Documenten\thesis\results\cube_sparse-position\volpath\cube_volpath_position-%%p.exr
)