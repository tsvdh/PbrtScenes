@echo off 

set depths=1 2 3 5 7 10
set positions=side top bottom
set spp=128

for %%d in (%depths%) do (
    for %%p in (%positions%) do (
        C:\Users\tsvdh\CodeProjects\Clion\AcceleratedVolRenderer\build\Release\pbrt.exe ^
        C:\Users\tsvdh\CodeProjects\VSCode\PbrtScenes\cube\depth-position\configs\cube_%%p.pbrt ^
        --display-server localhost:14158 --spp %spp% --integrator graph ^
        --graph-data C:\Users\tsvdh\CodeProjects\VSCode\PbrtScenes\cube\depth-position\graphs\cube_depth%%d.txt ^
        --outfile C:\Users\tsvdh\OneDrive\Documenten\thesis\results\cube_depth-position\graph\cube_graph_depth-%%d_position-%%p.exr
    )
)