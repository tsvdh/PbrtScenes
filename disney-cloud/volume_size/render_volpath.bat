@echo off 

set volume_sizes=0.1 0.2 0.5 1.0
set spp=1024
set depths=1 10

for %%d in (%depths%) do (
    for %%v in (%volume_sizes%) do (
        C:\Users\tsvdh\CodeProjects\Clion\AcceleratedVolRenderer\build\Release\pbrt.exe ^
        C:\Users\tsvdh\CodeProjects\VSCode\PbrtScenes\disney-cloud\volume_size\configs\disney-cloud_volume%%v.pbrt ^
        --display-server localhost:14158 --spp %spp% --maxdepth %%d --integrator volpathcustom ^
        --outfile C:\Users\tsvdh\OneDrive\Documenten\thesis\results\disney-cloud_volume_size\volpath\disney-cloud_volpath_volume-%%v.exr
    )
)