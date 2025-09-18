set samples=2048

set depth=1
C:\Users\tsvdh\CodeProjects\Clion\AcceleratedVolRenderer\build\Release\pbrt.exe ^
C:\Users\tsvdh\CodeProjects\VSCode\PbrtScenes\cube\density\cube_density.pbrt ^
--display-server localhost:14158 --spp %samples% --maxdepth %depth% ^
--outfile C:\Users\tsvdh\OneDrive\Documenten\thesis\results\cube_density\volpath\cube_volpath_density_spp%samples%_depth%depth%.exr

set depth=2
C:\Users\tsvdh\CodeProjects\Clion\AcceleratedVolRenderer\build\Release\pbrt.exe ^
C:\Users\tsvdh\CodeProjects\VSCode\PbrtScenes\cube\density\cube_density.pbrt ^
--display-server localhost:14158 --spp %samples% --maxdepth %depth% ^
--outfile C:\Users\tsvdh\OneDrive\Documenten\thesis\results\cube_density\volpath\cube_volpath_density_spp%samples%_depth%depth%.exr

set depth=3
C:\Users\tsvdh\CodeProjects\Clion\AcceleratedVolRenderer\build\Release\pbrt.exe ^
C:\Users\tsvdh\CodeProjects\VSCode\PbrtScenes\cube\density\cube_density.pbrt ^
--display-server localhost:14158 --spp %samples% --maxdepth %depth% ^
--outfile C:\Users\tsvdh\OneDrive\Documenten\thesis\results\cube_density\volpath\cube_volpath_density_spp%samples%_depth%depth%.exr

set depth=5
C:\Users\tsvdh\CodeProjects\Clion\AcceleratedVolRenderer\build\Release\pbrt.exe ^
C:\Users\tsvdh\CodeProjects\VSCode\PbrtScenes\cube\density\cube_density.pbrt ^
--display-server localhost:14158 --spp %samples% --maxdepth %depth% ^
--outfile C:\Users\tsvdh\OneDrive\Documenten\thesis\results\cube_density\volpath\cube_volpath_density_spp%samples%_depth%depth%.exr

set depth=7
C:\Users\tsvdh\CodeProjects\Clion\AcceleratedVolRenderer\build\Release\pbrt.exe ^
C:\Users\tsvdh\CodeProjects\VSCode\PbrtScenes\cube\density\cube_density.pbrt ^
--display-server localhost:14158 --spp %samples% --maxdepth %depth% ^
--outfile C:\Users\tsvdh\OneDrive\Documenten\thesis\results\cube_density\volpath\cube_volpath_density_spp%samples%_depth%depth%.exr

set depth=10
C:\Users\tsvdh\CodeProjects\Clion\AcceleratedVolRenderer\build\Release\pbrt.exe ^
C:\Users\tsvdh\CodeProjects\VSCode\PbrtScenes\cube\density\cube_density.pbrt ^
--display-server localhost:14158 --spp %samples% --maxdepth %depth% ^
--outfile C:\Users\tsvdh\OneDrive\Documenten\thesis\results\cube_density\volpath\cube_volpath_density_spp%samples%_depth%depth%.exr