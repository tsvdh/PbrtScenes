@echo off

set absorptions=0.0 0.1 0.25 0.5

for %%a in (%absorptions%) do (
    C:\Users\tsvdh\CodeProjects\Clion\AcceleratedVolRenderer\build\Release\imgtool.exe diff --metric "ME" ^
    C:\Users\tsvdh\OneDrive\Documenten\thesis\results\bunny-cloud_absorption\graph\bunny-cloud_graph_absorption-%%a.exr ^
    --reference C:\Users\tsvdh\OneDrive\Documenten\thesis\results\bunny-cloud_absorption\volpath\bunny-cloud_volpath_absorption-%%a.exr ^
    --diffFile C:\Users\tsvdh\OneDrive\Documenten\thesis\results\bunny-cloud_absorption\error\bunny-cloud_error_volume-%%a.txt 
)
