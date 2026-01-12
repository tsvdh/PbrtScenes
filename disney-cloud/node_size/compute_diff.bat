@echo off

set node_sizes=0.2 0.5 1.0

for %%n in (%node_sizes%) do (
    C:\Users\tsvdh\CodeProjects\Clion\AcceleratedVolRenderer\build\Release\imgtool.exe diff --metric "ME" ^
    C:\Users\tsvdh\OneDrive\Documenten\thesis\results\disney-cloud_node_size\graph\disney_cloud_graph_node-%%n.exr ^
    --reference C:\Users\tsvdh\OneDrive\Documenten\thesis\results\disney-cloud_node_size\volpath\disney-cloud_volpath.exr ^
    --diffFile C:\Users\tsvdh\OneDrive\Documenten\thesis\results\disney-cloud_node_size\error\disney-cloud_error_node-%%n.txt 
)
