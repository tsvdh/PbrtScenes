@echo off

set volume_sizes=0.1 0.2 0.5
set node_size=0.1

for %%v in (%volume_sizes%) do (
    C:\Users\tsvdh\CodeProjects\Clion\AcceleratedVolRenderer\build\Release\graph_maker.exe ^
    C:\Users\tsvdh\CodeProjects\VSCode\PbrtScenes\disney-cloud\volume_size\configs\disney-cloud_volume%%v.pbrt ^
    --config C:\Users\tsvdh\CodeProjects\VSCode\PbrtScenes\disney-cloud\volume_size\disney-cloud.json ^
    --node-radius %node_size%

    move C:\Users\tsvdh\CodeProjects\VSCode\PbrtScenes\disney-cloud\volume_size\disney-cloud_d10.txt ^
        C:\Users\tsvdh\CodeProjects\VSCode\PbrtScenes\disney-cloud\volume_size\graphs\disney-cloud_volume%%v.txt
    
    move C:\Users\tsvdh\CodeProjects\VSCode\PbrtScenes\disney-cloud\volume_size\disney-cloud_stats.json ^
        C:\Users\tsvdh\CodeProjects\VSCode\PbrtScenes\disney-cloud\volume_size\graphs\disney-cloud_volume%%v_stats.json
    
)
