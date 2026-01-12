@echo off 

set node_sizes=0.5 1.0
set spp=128

for %%n in (%node_sizes%) do (
    C:\Users\tsvdh\CodeProjects\Clion\AcceleratedVolRenderer\build\Release\pbrt.exe ^
    C:\Users\tsvdh\CodeProjects\VSCode\PbrtScenes\disney-cloud\node_size\disney-cloud.pbrt ^
    --display-server localhost:14158 --spp %spp% --integrator graph ^
    --graph-data C:\Users\tsvdh\CodeProjects\VSCode\PbrtScenes\disney-cloud\node_size\graphs\disney-cloud_node%%n.txt ^
    --outfile C:\Users\tsvdh\OneDrive\Documenten\thesis\results\disney-cloud_node_size\graph\disney-cloud_graph_node-%%n.exr
)
