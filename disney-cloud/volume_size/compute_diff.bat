@echo off

set volume_sizes=0.1 0.2 0.5 1.0

for %%v in (%volume_sizes%) do (
    C:\Users\tsvdh\CodeProjects\Clion\AcceleratedVolRenderer\build\Release\imgtool.exe diff --metric "ME" ^
    C:\Users\tsvdh\OneDrive\Documenten\thesis\results\disney-cloud_volume_size\graph\disney_cloud_graph_volume-%%v.exr ^
    --reference C:\Users\tsvdh\OneDrive\Documenten\thesis\results\disney-cloud_volume_size\volpath\disney-cloud_volpath_volume-%%v.exr ^
    --diffFile C:\Users\tsvdh\OneDrive\Documenten\thesis\results\disney-cloud_volume_size\error\disney-cloud_error_volume-%%v.txt 
)
