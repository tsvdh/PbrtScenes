@echo off

set render_search_range=0 1

for %%r in (%render_search_range%) do (
    C:\Users\tsvdh\CodeProjects\Clion\AcceleratedVolRenderer\build\Release\graph_maker.exe ^
    C:\Users\tsvdh\CodeProjects\VSCode\PbrtScenes\disney-cloud\render_search_range\disney-cloud.pbrt ^
    --config C:\Users\tsvdh\CodeProjects\VSCode\PbrtScenes\disney-cloud\render_search_range\configs\disney-cloud_render_search_range%%r.json

    move C:\Users\tsvdh\CodeProjects\VSCode\PbrtScenes\disney-cloud\render_search_range\configs\disney-cloud_render_search_range%%r_d10.txt ^
        C:\Users\tsvdh\CodeProjects\VSCode\PbrtScenes\disney-cloud\render_search_range\graphs\disney-cloud_render_search_range%%r.txt
    
    move C:\Users\tsvdh\CodeProjects\VSCode\PbrtScenes\disney-cloud\render_search_range\configs\disney-cloud_render_search_range%%r_stats.json ^
        C:\Users\tsvdh\CodeProjects\VSCode\PbrtScenes\disney-cloud\render_search_range\graphs\disney-cloud_render_search_range%%r_stats.json
)
