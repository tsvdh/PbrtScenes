@echo off

@REM set CROP=--crop 420,450,256,280
set CROP=--crop 437,442,253,255
@REM set "CROP="

C:\Users\tsvdh\CodeProjects\Clion\AcceleratedVolRenderer\build\Release\imgtool.exe diff ^
C:\Users\tsvdh\OneDrive\Documenten\thesis\misc\meeting_14-9\disney-cloud-0.1_graph_d1.exr ^
--reference C:\Users\tsvdh\OneDrive\Documenten\thesis\misc\meeting_14-9\disney-cloud-0.1_volpath_d1.exr ^
--metric "ME" %CROP%

C:\Users\tsvdh\CodeProjects\Clion\AcceleratedVolRenderer\build\Release\imgtool.exe diff ^
C:\Users\tsvdh\OneDrive\Documenten\thesis\misc\meeting_14-9\disney-cloud-0.1_graph_d1_more.exr ^
--reference C:\Users\tsvdh\OneDrive\Documenten\thesis\misc\meeting_14-9\disney-cloud-0.1_volpath_d1.exr ^
--metric "ME" %CROP%

C:\Users\tsvdh\CodeProjects\Clion\AcceleratedVolRenderer\build\Release\imgtool.exe diff ^
C:\Users\tsvdh\OneDrive\Documenten\thesis\misc\meeting_14-9\disney-cloud-0.1_graph_d10.exr ^
--reference C:\Users\tsvdh\OneDrive\Documenten\thesis\misc\meeting_14-9\disney-cloud-0.1_volpath_d10.exr ^
--metric "ME" %CROP%

C:\Users\tsvdh\CodeProjects\Clion\AcceleratedVolRenderer\build\Release\imgtool.exe diff ^
C:\Users\tsvdh\OneDrive\Documenten\thesis\misc\meeting_14-9\disney-cloud-0.1_graph_d10_more.exr ^
--reference C:\Users\tsvdh\OneDrive\Documenten\thesis\misc\meeting_14-9\disney-cloud-0.1_volpath_d10.exr ^
--metric "ME" %CROP%