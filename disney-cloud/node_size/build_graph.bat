@echo off

set node_sizes=1.0

for %%n in (%node_sizes%) do (
    C:\Users\tsvdh\CodeProjects\Clion\AcceleratedVolRenderer\build\Release\graph_maker.exe ^
    C:\Users\tsvdh\CodeProjects\VSCode\PbrtScenes\disney-cloud\node_size\disney-cloud.pbrt ^
    --config C:\Users\tsvdh\CodeProjects\VSCode\PbrtScenes\disney-cloud\node_size\configs\disney-cloud_node%%n.json ^
    --node-radius %%n

    move C:\Users\tsvdh\CodeProjects\VSCode\PbrtScenes\disney-cloud\node_size\configs\disney-cloud_node%%n_d10.txt ^
        C:\Users\tsvdh\CodeProjects\VSCode\PbrtScenes\disney-cloud\node_size\graphs\disney-cloud_node%%n.txt
    
    move C:\Users\tsvdh\CodeProjects\VSCode\PbrtScenes\disney-cloud\node_size\configs\disney-cloud_node%%n_stats.json ^
        C:\Users\tsvdh\CodeProjects\VSCode\PbrtScenes\disney-cloud\node_size\graphs\disney-cloud_node%%n_stats.json
)
