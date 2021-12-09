```@meta
CurrentModule = GlassCat
```

# GlassCat

GlassCat is a library for reading .agf files which describe the optical properties of materials.  THis file format is widely used in optical design. Each .agf file contains information for many optical materials made by that particular manufacturer. These files are available from many different publicly accessible websites. GlassCat automates the process of downloading and installing an extensive library .agf files.

GlassCat was originally part of OpticSim.jl but has been broken out into an independent package.

When the GlassCat package is first installed the build process will attempt to download .agf glass files from a variety of public sources (see `data/sources.txt` for a complete list).

GlassCat transforms the information in the .agf files into Julia files stored in the `data` subdirectory, which is created automatically during the build process. Each .agf file gets its own module, whose name will match that of the .agf file. This is the name of the manufacturer of the optical materials. 

Each optical material in a glass catalog has a corresponding Julia type. This allows you to use the code analysis features of your IDE to search glasses. In VSCode, for example, you can use Intellisense autocompletion to see all the glass types made by a particular manufacturer. 

You can print out the glass properties with the `info` function:

```
julia> info(SCHOTT.FK3)
ID:                                                AGF:905
Dispersion formula:                                Sellmeier1 (2)
Dispersion formula coefficients:
     K₁:                                           0.973346627
     L₁:                                           0.00640795469
     K₂:                                           0.146642231
     L₂:                                           0.020565293
     K₃:                                           0.679304225
     L₃:                                           80.4965389
Valid wavelengths:                                 0.3μm to 2.5μm
Reference temperature:                             20.0°C
Thermal ΔRI coefficients:
     D₀:                                           -4.9e-6
     D₁:                                           1.23e-8
     D₂:                                           -1.19e-10
     E₀:                                           3.45e-7
     E₁:                                           7.72e-10
     λₜₖ:                                          0.18
TCE (÷1e-6):                                       8.2
Ignore thermal expansion:                          false
Density (p):                                       2.27g/m³
ΔPgF:                                              -0.0003
RI at sodium D-Line (587nm):                       1.4645
Abbe Number:                                       65.77
Cost relative to N_BK7:                            ?
Environmental resistance:
     Climate (CR):                                 2.0
     Stain (FR):                                   3.0
     Acid (SR):                                    52.4
     Alkaline (AR):                                2.0
     Phosphate (PR):                               1.0
Status:                                            Special (3)
Melt frequency:                                    0
Exclude substitution:                              false
Transmission data:
     Wavelength   Transmission      Thickness
          0.3μm           0.05         25.0mm
         0.31μm           0.19         25.0mm
         0.32μm           0.41         25.0mm
        0.334μm           0.74         25.0mm
         0.35μm           0.89         25.0mm
        0.365μm          0.964         25.0mm
         0.37μm          0.971         25.0mm
         0.38μm           0.98         25.0mm
         0.39μm          0.984         25.0mm
          0.4μm          0.985         25.0mm
        0.405μm          0.986         25.0mm
         0.42μm          0.987         25.0mm
        0.436μm          0.989         25.0mm
         0.46μm           0.99         25.0mm
          0.5μm          0.993         25.0mm
        0.546μm          0.993         25.0mm
         0.58μm          0.993         25.0mm
         0.62μm          0.993         25.0mm
         0.66μm          0.993         25.0mm
          0.7μm          0.993         25.0mm
         1.06μm          0.995         25.0mm
         1.53μm           0.97         25.0mm
         1.97μm           0.93         25.0mm
        2.325μm           0.59         25.0mm
          2.5μm           0.34         25.0mm
```
You can also plot them with the `plot_indices` function

`plot_indices(SCHOTT.FK#)`







Documentation for [GlassCat](https://github.com/rambunctiousapple/GlassCat.jl).

```@index
```

```@autodocs
Modules = [GlassCat]
```
