@echo off 

set reinforcing=0 1
set render_search_range=0 1
set positions=side top bottom
set spp=128

for %%r in (%reinforcing%) do (
    for %%s in (%render_search_range%) do (
        for %%p in (%positions%) do (
            C:\Users\tsvdh\CodeProjects\Clion\AcceleratedVolRenderer\build\Release\pbrt.exe ^
            C:\Users\tsvdh\CodeProjects\VSCode\PbrtScenes\cube\sparse-position\configs\cube_%%p.pbrt ^
            --display-server localhost:14158 --spp %spp% --integrator graph ^
            --graph-data C:\Users\tsvdh\CodeProjects\VSCode\PbrtScenes\cube\sparse-position\graphs\cube_reinforcing%%r_render_search_range%%s.txt ^
            --outfile C:\Users\tsvdh\OneDrive\Documenten\thesis\results\cube_sparse-position\graph\cube_graph_reinforcing-%%r_render_search_range-%%s_position-%%p.exr
        )
    )
)