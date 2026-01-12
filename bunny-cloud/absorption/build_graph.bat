@echo off

set absorptions=0.0 0.1 0.25 0.5

for %%a in (%absorptions%) do (
    C:\Users\tsvdh\CodeProjects\Clion\AcceleratedVolRenderer\build\Release\graph_maker.exe ^
    C:\Users\tsvdh\CodeProjects\VSCode\PbrtScenes\bunny-cloud\absorption\configs\bunny-cloud_absorption%%a.pbrt ^
    --config C:\Users\tsvdh\CodeProjects\VSCode\PbrtScenes\bunny-cloud\absorption\bunny-cloud.json

    move C:\Users\tsvdh\CodeProjects\VSCode\PbrtScenes\bunny-cloud\absorption\bunny-cloud_d10.txt ^
        C:\Users\tsvdh\CodeProjects\VSCode\PbrtScenes\bunny-cloud\absorption\graphs\bunny-cloud_absorption%%a.txt
    
    move C:\Users\tsvdh\CodeProjects\VSCode\PbrtScenes\bunny-cloud\absorption\bunny-cloud_stats.json ^
        C:\Users\tsvdh\CodeProjects\VSCode\PbrtScenes\bunny-cloud\absorption\graphs\bunny-cloud_absorption%%a_stats.json
    
)
