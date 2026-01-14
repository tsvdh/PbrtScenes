@echo off

set reinforcing=0 1
set render_search_range=0 1
set positions=side top bottom

for %%r in (%reinforcing%) do (
    for %%s in (%render_search_range%) do (
        for %%p in (%positions%) do (
            C:\Users\tsvdh\CodeProjects\Clion\AcceleratedVolRenderer\build\Release\imgtool.exe diff --metric "ME" ^
            C:\Users\tsvdh\OneDrive\Documenten\thesis\results\cube_sparse-position\graph\cube_graph_reinforcing-%%r_render_search_range-%%s_position-%%p.exr ^
            --reference C:\Users\tsvdh\OneDrive\Documenten\thesis\results\cube_sparse-position\volpath\cube_volpath_position-%%p.exr ^
            --diffFile C:\Users\tsvdh\OneDrive\Documenten\thesis\results\cube_sparse-position\error\cube_error_reinforcing-%%r_render_search_range-%%s_position-%%p.txt 
        )
    )
)
