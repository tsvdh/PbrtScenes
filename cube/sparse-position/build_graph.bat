@echo off

set reinforcing=1
set render_search_range=1

for %%r in (%reinforcing%) do (
    for %%s in (%render_search_range%) do (
        C:\Users\tsvdh\CodeProjects\Clion\AcceleratedVolRenderer\build\Release\graph_maker.exe ^
        C:\Users\tsvdh\CodeProjects\VSCode\PbrtScenes\cube\sparse-position\cube.pbrt ^
        --config C:\Users\tsvdh\CodeProjects\VSCode\PbrtScenes\cube\sparse-position\configs\cube_reinforcing%%r_render_search_range%%s.json

        move C:\Users\tsvdh\CodeProjects\VSCode\PbrtScenes\cube\sparse-position\configs\cube_reinforcing%%r_render_search_range%%s_d10.txt ^
            C:\Users\tsvdh\CodeProjects\VSCode\PbrtScenes\cube\sparse-position\graphs\cube_reinforcing%%r_render_search_range%%s.txt
        
        move C:\Users\tsvdh\CodeProjects\VSCode\PbrtScenes\cube\sparse-position\configs\cube_reinforcing%%r_render_search_range%%s_stats.json ^
            C:\Users\tsvdh\CodeProjects\VSCode\PbrtScenes\cube\sparse-position\graphs\cube_reinforcing%%r_render_search_range%%s_stats.json
    )
)
