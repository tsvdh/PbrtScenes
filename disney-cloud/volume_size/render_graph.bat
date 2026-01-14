@echo off 

set volume_sizes=0.1 0.2 0.5
set spp=128

for %%v in (%volume_sizes%) do (
    C:\Users\tsvdh\CodeProjects\Clion\AcceleratedVolRenderer\build\Release\pbrt.exe ^
    C:\Users\tsvdh\CodeProjects\VSCode\PbrtScenes\disney-cloud\volume_size\configs\disney-cloud_volume%%v.pbrt ^
    --display-server localhost:14158 --spp %spp% --integrator graph ^
    --graph-data C:\Users\tsvdh\CodeProjects\VSCode\PbrtScenes\disney-cloud\volume_size\graphs\disney-cloud_volume%%v.txt ^
    --outfile C:\Users\tsvdh\OneDrive\Documenten\thesis\results\disney-cloud_volume_size\graph\disney-cloud_graph_volume-%%v.exr
)
