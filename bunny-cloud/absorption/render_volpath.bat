@echo off 

set absorptions=0.0 0.1 0.25 0.5
set spp=1024

for %%a in (%absorptions%) do (
    C:\Users\tsvdh\CodeProjects\Clion\AcceleratedVolRenderer\build\Release\pbrt.exe ^
    C:\Users\tsvdh\CodeProjects\VSCode\PbrtScenes\bunny-cloud\absorption\configs\bunny-cloud_absorption%%a.pbrt ^
    --display-server localhost:14158 --spp %spp% --maxdepth 10 --integrator volpathcustom ^
    --outfile C:\Users\tsvdh\OneDrive\Documenten\thesis\results\bunny-cloud_absorption\volpath\bunny-cloud_volpath_absorption-%%a.exr
)