@echo off

set depths=1 2 3 5 7 10

for %%d in (%depths%) do (
    C:\Users\tsvdh\CodeProjects\Clion\AcceleratedVolRenderer\build\Release\graph_maker.exe ^
    C:\Users\tsvdh\CodeProjects\VSCode\PbrtScenes\cube\depth-position\cube.pbrt ^
    --config C:\Users\tsvdh\CodeProjects\VSCode\PbrtScenes\cube\depth-position\configs\cube_depth%%d.json

    move C:\Users\tsvdh\CodeProjects\VSCode\PbrtScenes\cube\depth-position\configs\cube_depth%%d_d%%d.txt ^
        C:\Users\tsvdh\CodeProjects\VSCode\PbrtScenes\cube\depth-position\graphs\cube_depth%%d.txt
    
    move C:\Users\tsvdh\CodeProjects\VSCode\PbrtScenes\cube\depth-position\configs\cube_depth%%d_stats.json ^
        C:\Users\tsvdh\CodeProjects\VSCode\PbrtScenes\cube\depth-position\graphs\cube_depth%%d_stats.json
)
