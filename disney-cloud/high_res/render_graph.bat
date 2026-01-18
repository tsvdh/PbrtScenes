@echo off 

set spp=128

C:\Users\tsvdh\CodeProjects\Clion\AcceleratedVolRenderer\build\Release\pbrt.exe ^
C:\Users\tsvdh\CodeProjects\VSCode\PbrtScenes\disney-cloud\high_res\disney-cloud.pbrt ^
--display-server localhost:14158 --spp %spp% --integrator graph ^
--graph-data C:\Users\tsvdh\CodeProjects\VSCode\PbrtScenes\disney-cloud\high_res\disney-cloud.txt ^
--outfile C:\Users\tsvdh\OneDrive\Documenten\thesis\results\disney-cloud_high_res\disney-cloud_graph.exr
