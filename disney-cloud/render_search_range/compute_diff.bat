@echo off

set render_search_range=0 1

for %%r in (%render_search_range%) do (
    C:\Users\tsvdh\CodeProjects\Clion\AcceleratedVolRenderer\build\Release\imgtool.exe diff --metric "ME" ^
    C:\Users\tsvdh\OneDrive\Documenten\thesis\results\disney-cloud_render_search_range\graph\disney-cloud_graph_render_search_range-%%r.exr ^
    --reference C:\Users\tsvdh\OneDrive\Documenten\thesis\results\disney-cloud_render_search_range\volpath\disney-cloud_volpath.exr ^
    --diffFile C:\Users\tsvdh\OneDrive\Documenten\thesis\results\disney-cloud_render_search_range\error\disney-cloud_error_render_search_range-%%r.txt 
)
