@echo off

set depths=1 2 3 5 7 10
set positions=side top bottom

for %%d in (%depths%) do (
    for %%p in (%positions%) do (
        C:\Users\tsvdh\CodeProjects\Clion\AcceleratedVolRenderer\build\Release\imgtool.exe diff --metric "ME" ^
        C:\Users\tsvdh\OneDrive\Documenten\thesis\results\cube_depth-position\graph\cube_graph_depth-%%d_position-%%p.exr ^
        --reference C:\Users\tsvdh\OneDrive\Documenten\thesis\results\cube_depth-position\volpath\cube_volpath_depth-%%d_position-%%p.exr ^
        --diffFile C:\Users\tsvdh\OneDrive\Documenten\thesis\results\cube_depth-position\error\cube_error_depth-%%d_position-%%p.txt 
    )
)
