var documenterSearchIndex = {"docs":
[{"location":"reference/#Index-of-all-fuctions-in-GlassCat","page":"Reference","title":"Index of all fuctions in GlassCat","text":"","category":"section"},{"location":"reference/","page":"Reference","title":"Reference","text":"","category":"page"},{"location":"reference/","page":"Reference","title":"Reference","text":"Modules = [GlassCat]","category":"page"},{"location":"reference/#GlassCat.Air","page":"Reference","title":"GlassCat.Air","text":"Special glass to represent air. Refractive index is defined to always be 1.0 for any temperature and pressure (other indices are relative to this).\n\n\n\n\n\n","category":"constant"},{"location":"reference/#GlassCat.AbstractGlass","page":"Reference","title":"GlassCat.AbstractGlass","text":"Abstract type encapsulating all glasses.\n\n\n\n\n\n","category":"type"},{"location":"reference/#GlassCat.Glass","page":"Reference","title":"GlassCat.Glass","text":"Stores all attributes relating to a glass type specified in an .AGF glass catalog.\n\nNever used directly, instead created using catalog glasses, e.g. GlassCat.SCHOTT.N_BK7.\n\nIn order to prevent type ambiguities in OpticSim.jl we can't have this type paramaterized.\n\n\n\n\n\n","category":"type"},{"location":"reference/#GlassCat.GlassID","page":"Reference","title":"GlassCat.GlassID","text":"Object identifying a glass, containing a type (e.g. MODEL, MIL, OTHER or AGF) depending on how the glass is defined, and an integer ID. Air is AIR:0, others are on the form AGF:N, for example.\n\n\n\n\n\n","category":"type"},{"location":"reference/#GlassCat.absairindex-Tuple{Union{Unitful.Quantity{T, 𝐋, U}, Unitful.Level{L, S, Unitful.Quantity{T, 𝐋, U}} where {L, S}} where {T, U}}","page":"Reference","title":"GlassCat.absairindex","text":"absairindex(wavelength; temperature=20°C, pressure=1Atm)\n\nCompute the absolute refractive index of air at wavelength, optionally at specified temperature and pressure. If unitless, arguments are interpretted as μm, °C and Atm respectively.\n\nExamples\n\njulia> absairindex(700u\"nm\")\n1.000271074905147\n\njulia> absairindex(0.7, temperature=27.0)\n1.000264738846504\n\njulia> absairindex(532u\"nm\", temperature = 25u\"°C\", pressure = 1.3)\n1.0003494991178161\n\n\n\n\n\n","category":"method"},{"location":"reference/#GlassCat.absorption-Tuple{GlassCat.Glass, Union{Unitful.Quantity{T, 𝐋, U}, Unitful.Level{L, S, Unitful.Quantity{T, 𝐋, U}} where {L, S}} where {T, U}}","page":"Reference","title":"GlassCat.absorption","text":"absorption(glass::AbstractGlass, wavelength; temperature=20°C, pressure=1Atm)\n\nCompute the intensity absorption per mm of glass at wavelength, optionally at specified temperature and pressure. Transmission values are linearly interpolated from the adjacent values in the data table of glass, if wavelength is below the minimum or above the maximum in the table then the nearest value is taken.\n\nAbsorption is defined as frac-log(t)tau where t is the transmission value and tau is the thickness, both of which are provided in the data table.\n\nIf unitless, arguments are interpretted as μm, °C and Atm respectively.\n\nExamples\n\njulia> absorption(GlassCat.SUMITA.LAK7, 700u\"nm\")\n0.0006018072325563021\n\njulia> absorption(GlassCat.SCHOTT.N_BK7, 0.55, temperature = 22.0)\n0.00016504471175660636\n\njulia> absorption(GlassCat.SCHOTT.PSK3, 532u\"nm\", temperature = 25u\"°C\", pressure = 1.3)\n0.00020855284788532435\n\n\n\n\n\n","category":"method"},{"location":"reference/#GlassCat.add_agf-Tuple{AbstractString}","page":"Reference","title":"GlassCat.add_agf","text":"add_agf(agffile; agfdir = AGF_DIR, sourcefile = SOURCES_PATH, name = nothing, rebuild = true)\n\nCopies a file at agffile (this can be either a download link or local path) to agfdir and appends a corresponding entry to the source list at sourcefile.\n\nIf a name is not provided for the catalog, an implicit name is derived from agffile.\n\nIf rebuild is true, Pkg.build is called at the end to install the new catalog.\n\n\n\n\n\n","category":"method"},{"location":"reference/#GlassCat.agffile_to_catalog-Tuple{AbstractString}","page":"Reference","title":"GlassCat.agffile_to_catalog","text":"Parse a agffile (.agf) into a native Dict, catalogdict, where each kvp = (glassname, glassinfo) is a glass.\n\n1 2 3 4 5 6 7 8 9 10 11\nNM raw name dispform ? Nd Vd [exclude_sub status meltfreq]  \nED TCE ? p ΔPgF [ignorethermalexp]     \nCD C1 C2 C3 C4 C5 C6 C7 C8 C9 C10\nTD D₀ D₁ D₂ E₀ E₁ λₜₖ temp   \nOD relcost CR FR SR AR PR    \nLD λmin λmax        \nIT T1 T2 T3       \n\n\n\n\n\n","category":"method"},{"location":"reference/#GlassCat.catalog_to_modstring-Tuple{Integer, AbstractString, Dict{var\"#s24\", V} where {var\"#s24\"<:AbstractString, V}, AbstractString}","page":"Reference","title":"GlassCat.catalog_to_modstring","text":"Convert a catalog dict into a modstring which can be written to a Julia source file.\n\n\n\n\n\n","category":"method"},{"location":"reference/#GlassCat.download_source","page":"Reference","title":"GlassCat.download_source","text":"download_source(dest::AbstractString, url::AbstractString, POST_data::Union{Nothing,AbstractString} = nothing)\n\nDownload and unzip an AGF glass catalog from a publicly available source. Supports POST requests.\n\n\n\n\n\n","category":"function"},{"location":"reference/#GlassCat.drawglassmap-Tuple{Module}","page":"Reference","title":"GlassCat.drawglassmap","text":"drawglassmap(glasscatalog::Module; λ::Length = 550nm, glassfontsize::Integer = 3, showprefixglasses::Bool = false)\n\nDraw a scatter plot of index vs dispersion (the derivative of index with respect to wavelength). Both index and dispersion are computed at wavelength λ.\n\nChoose glasses to graph using the glassfilterprediate argument. This is a function that receives a Glass object and returns true if the glass should be graphed.\n\nIf showprefixglasses is true then glasses with names like F_BAK7 will be displayed. Otherwise glasses that have a leading letter prefix followed by an underscore, such as F_, will not be displayed.\n\nThe index formulas for some glasses may give incorrect results if λ is outside the valid range for that glass. This can give anomalous results, such as indices less than zero or greater than 6. To filter out these glasses set maximumindex to a reasonable value such as 3.0.\n\nexample: plot only glasses that do not contain the strings \"E\" and \"J\"\n\ndrawglassmap(NIKON,showprefixglasses = true,glassfilterpredicate = (x) -> !occursin(\"J\",string(x)) && !occursin(\"E\",string(x)))\n\n\n\n\n\n","category":"method"},{"location":"reference/#GlassCat.findglass-Tuple{Function}","page":"Reference","title":"GlassCat.findglass","text":"findglass(condition::Function) -> Vector{Glass}\n\nReturns the list of glasses which satisfy condition where condition::(Glass -> Bool).\n\nExample\n\njulia> findglass(x -> (x.Nd > 2.3 && x.λmin < 0.5 && x.λmax > 0.9))\n8-element Array{GlassCat.Glass,1}:\n BIREFRINGENT.TEO2_E\n BIREFRINGENT.PBMOO4\n BIREFRINGENT.LINBO3\n INFRARED.CLEARTRAN_OLD\n INFRARED.CLEARTRAN\n INFRARED.SRTIO3\n INFRARED.ZNS_BROAD\n INFRARED.ZNS_VIS\n\n\n\n\n\n","category":"method"},{"location":"reference/#GlassCat.generate_jls-Tuple{Vector{var\"#s21\"} where var\"#s21\"<:AbstractString, AbstractString, AbstractString, AbstractString}","page":"Reference","title":"GlassCat.generate_jls","text":"generate_jls(sourcenames::Vector{<:AbstractString}, mainfile::AbstractString, jldir::AbstractString, agfdir::AbstractString; test::Bool = false)\n\nGenerates .jl files in jldir: a mainfile and several catalog files.\n\nEach catalog file is a module representing a distinct glass catalog (e.g. NIKON, SCHOTT), generated from corresponding AGF files in agfdir. These are then included and exported in mainfile.\n\nIn order to avoid re-definition of constants AGF_GLASS_NAMES and AGF_GLASSES during testing, we have an optional test argument. If true, we generate a .jl file that defines glasses with GlassType.TEST to avoid namespace/ID clashes.\n\n\n\n\n\n","category":"method"},{"location":"reference/#GlassCat.glasscatalogs-Tuple{}","page":"Reference","title":"GlassCat.glasscatalogs","text":"glasscatalogs()\n\nReturns the complete list of glass catalogs available from GlassCat.\n\nExample\n\njulia> glasscatalogs()\n41-element Array{Any,1}:\n OpticSim.GlassCat.AMTIR\n OpticSim.GlassCat.ANGSTROMLINK\n OpticSim.GlassCat.APEL\n OpticSim.GlassCat.ARCHER\n OpticSim.GlassCat.ARTON\n OpticSim.GlassCat.AUER_LIGHTING\n OpticSim.GlassCat.BIREFRINGENT\n ⋮\n\n\n\n\n\n","category":"method"},{"location":"reference/#GlassCat.glassforid-Tuple{GlassID}","page":"Reference","title":"GlassCat.glassforid","text":"glassforid(ID::GlassID)\n\nGet the glass for a given ID.\n\n\n\n\n\n","category":"method"},{"location":"reference/#GlassCat.glassfromMIL-Tuple{Int64}","page":"Reference","title":"GlassCat.glassfromMIL","text":"glassfromMIL(glasscode::Union{Float64,Int}) -> Glass\n\nGenerates a glass object for the given glass code based on U.S. military standard MIL-G-174, see the MIL specification for further details.\n\nThe glass code is a six-digit number specifying the glass according to its refractive index Nd at d-light (587.5618nm), and its Abbe number Vd also taken at d-light. The resulting glass code is the value of Nd - 1 rounded to three digits, followed by Vd rounded to three digits, with all decimal points ignored. For example, N_BK7 has Nd = 1.5168 and Vd = 64.17, giving a six-digit glass code of 517642.\n\nFor Nd > 1.999 the format 1.123642 can be used representing Nd = 2.123 and Vd = 64.2.\n\nAccuracy is poor given the low precision of the input parameters, the mean error to measured data may be significant. Behavior may differ from other optical simulation tools when using MIL glasses. The approximate dispersion calculation used these glasses is generally only valid for visible wavelengths, in this case a limit of 360nm to 750nm is imposed.\n\nExamples\n\njulia> index(glassfromMIL(517642), 0.5875618)\n1.5170003960064509\n\njulia> index(glassfromMIL(1.134642), 0.5875618)\n2.1340008686098946\n\n\n\n\n\n","category":"method"},{"location":"reference/#GlassCat.glassid-Tuple{GlassCat.Glass}","page":"Reference","title":"GlassCat.glassid","text":"glassid(g::AbstractGlass) -> GlassID\n\nGet the ID of the glass, see GlassID.\n\n\n\n\n\n","category":"method"},{"location":"reference/#GlassCat.glassinfo_to_argstring-Tuple{Dict{var\"#s25\", V} where {var\"#s25\"<:AbstractString, V}, Integer, AbstractString}","page":"Reference","title":"GlassCat.glassinfo_to_argstring","text":"Convert a glassinfo dict into an argstring to be passed into a Glass constructor.\n\n\n\n\n\n","category":"method"},{"location":"reference/#GlassCat.glassinfo_to_docstring-Tuple{Dict{var\"#s26\", V} where {var\"#s26\"<:AbstractString, V}, Integer, AbstractString, AbstractString, AbstractString}","page":"Reference","title":"GlassCat.glassinfo_to_docstring","text":"Convert a glassinfo dict into a docstring to be prepended to a Glass const.\n\n\n\n\n\n","category":"method"},{"location":"reference/#GlassCat.glassname-Tuple{GlassCat.Glass}","page":"Reference","title":"GlassCat.glassname","text":"glassname(g::Union{AbstractGlass,GlassID})\n\nGet the name (including catalog) of the glass, or glass with this ID.\n\n\n\n\n\n","category":"method"},{"location":"reference/#GlassCat.glassnames-Tuple{Module}","page":"Reference","title":"GlassCat.glassnames","text":"glassnames(catalog::Module)\n\nReturns the glass names available from a given catalog.\n\nExample\n\njulia> glassnames(GlassCat.CARGILLE)\n3-element Array{Any,1}:\n \"OG0607\"\n \"OG0608\"\n \"OG081160\"\n\n\n\n\n\n","category":"method"},{"location":"reference/#GlassCat.glassnames-Tuple{}","page":"Reference","title":"GlassCat.glassnames","text":"glassnames()\n\nReturns the glass names available from all catalogs.\n\nExample\n\njulia> glassnames()\n6-element Array{Pair{Module,Array{Any,1}},1}:\n OpticSim.GlassCat.CARGILLE => [\"OG0607\", \"OG0608\", \"OG081160\"]\n     OpticSim.GlassCat.HOYA => [\"BAC4\", \"BACD11\"  …  \"TAFD65\"]\n    OpticSim.GlassCat.NIKON => [\"BAF10\", \"BAF11\"  …  \"_7054\"]\n    OpticSim.GlassCat.OHARA => [\"L_BAL35\", \"L_BAL35P\"  …  \"S_TIM8\"]\n   OpticSim.GlassCat.SCHOTT => [\"AF32ECO\", \"BAFN6\"  …  \"SFL6\"]\n   OpticSim.GlassCat.SUMITA => [\"BAF1\", \"BAF10\"  …  \"ZNSF8\"]\n\n\n\n\n\n","category":"method"},{"location":"reference/#GlassCat.index-Tuple{GlassCat.Glass, Union{Unitful.Quantity{T, 𝐋, U}, Unitful.Level{L, S, Unitful.Quantity{T, 𝐋, U}} where {L, S}} where {T, U}}","page":"Reference","title":"GlassCat.index","text":"index(glass::AbstractGlass, wavelength; temperature=20°C, pressure=1Atm)\n\nCompute the refractive index of glass at wavelength, optionally at specified temperature and pressure. Result is relative to the refractive index of air at given temperature and pressure.\n\nIf unitless, arguments are interpretted as μm, °C and Atm respectively.\n\nThis is defined to always equal 1.0 for Air at any temperature and pressure, use absairindex for the absolute refractive index of air at a given temperature and pressure.\n\nExamples\n\njulia> index(GlassCat.SUMITA.LAK7, 700u\"nm\")\n1.646494204478318\n\njulia> index(GlassCat.SCHOTT.N_BK7, 0.55, temperature = 22.0)\n1.51852824383283\n\njulia> index(GlassCat.HOYA.FF1, 532u\"nm\", temperature = 25u\"°C\", pressure = 1.3)\n1.5144848290944655\n\n\n\n\n\n","category":"method"},{"location":"reference/#GlassCat.info-Tuple{IO, GlassCat.Glass}","page":"Reference","title":"GlassCat.info","text":"info([io::IO], glass::AbstractGlass)\n\nPrint out all data associated with glass in an easily readable format.\n\nExamples\n\njulia> info(GlassCat.RPO.IG4)\nID:                                                AGF:52\nDispersion formula:                                Schott (1)\nDispersion formula coefficients:\n     a₀:                                           6.91189161\n     a₁:                                           -0.000787956404\n     a₂:                                           -4.22296071\n     a₃:                                           142.900646\n     a₄:                                           -1812.32748\n     a₅:                                           7766.33028\nValid wavelengths:                                 3.0μm to 12.0μm\nReference temperature:                              20.0°C\nThermal ΔRI coefficients:\n     D₀:                                           3.24e-5\n     D₁:                                           0.0\n     D₂:                                           0.0\n     E₀:                                           0.0\n     E₁:                                           0.0\n     λₜₖ:                                          0.0\nTCE (÷1e-6):                                       20.4\nIgnore thermal expansion:                          false\nDensity (p):                                       4.47g/m³\nΔPgF:                                              0.0\nRI at sodium D-Line (587nm):                       1.0\nAbbe Number:                                       0.0\nCost relative to N_BK7:                              ?\nStatus:                                            Standard (0)\nMelt frequency:                                    0\nExclude substitution:                              false\n\n\n\n\n\n","category":"method"},{"location":"reference/#GlassCat.isair-Tuple{GlassCat.AirType}","page":"Reference","title":"GlassCat.isair","text":"isair(a) -> Bool\n\nTests if a is Air.\n\n\n\n\n\n","category":"method"},{"location":"reference/#GlassCat.make_valid_name-Tuple{AbstractString}","page":"Reference","title":"GlassCat.make_valid_name","text":"Make a valid Julia variable name from an arbitrary string.\n\n\n\n\n\n","category":"method"},{"location":"reference/#GlassCat.modelglass-Tuple{Float64, Float64, Float64}","page":"Reference","title":"GlassCat.modelglass","text":"modelglass(Nd::Float64, Vd::Float64, ΔPgF::Float64) -> Glass\n\nGenerates a glass object for the given refractive index at d-light (587.5618nm), Nd, the Abbe number also at d-light, Vd, and partial dispersion, ΔPgF. The mean error to measured data for these models is typically small - usually < 0.0001. Behavior may differ from other optical simulation tools when using model glasses.\n\nThe approximate dispersion calculation used for these glasses is generally only valid for visible wavelengths, in this case a limit of 360nm to 750nm is imposed.\n\nExamples\n\njulia> index(modelglass(1.5168, 64.17, 0.0), 0.5875618)\n1.5168003970108495\n\njulia> index(modelglass(1.2344, 61.57, 0.003), 0.678)\n1.2329425902693352\n\n\n\n\n\n","category":"method"},{"location":"reference/#GlassCat.plot_indices-Tuple{GlassCat.AbstractGlass}","page":"Reference","title":"GlassCat.plot_indices","text":"plot_indices(glass::AbstractGlass; polyfit=false, fiterror=false, degree=5, temperature=20°C, pressure=1Atm, nsamples=300, sampling_domain=\"wavelength\")\n\nPlot the refractive index for glass for nsamples within its valid range of wavelengths, optionally at temperature and pressure. polyfit will show a polynomial of optionally specified degree fitted to the data, fiterror will also show the fitting error of the result. sampling_domain specifies whether the samples will be spaced uniformly in \"wavelength\" or \"wavenumber\".\n\n\n\n\n\n","category":"method"},{"location":"reference/#GlassCat.polyfit_indices-Tuple{AbstractVector{var\"#s12\"} where var\"#s12\"<:(Union{Unitful.Quantity{T, 𝐋, U}, Unitful.Level{L, S, Unitful.Quantity{T, 𝐋, U}} where {L, S}} where {T, U}), AbstractVector{var\"#s11\"} where var\"#s11\"<:Number}","page":"Reference","title":"GlassCat.polyfit_indices","text":"polyfit_indices(wavelengths, n_rel; degree=5)\n\nFit a polynomial to indices at wavelengths, optionally specifying the degree of the polynomial. Returns tuple of array of fitted indices at wavelengths and the polynomial.\n\n\n\n\n\n","category":"method"},{"location":"reference/#GlassCat.verify_source-Tuple{AbstractString, AbstractString}","page":"Reference","title":"GlassCat.verify_source","text":"verify_source(agffile::AbstractString, expected_sha256sum::AbstractString)\n\nVerify a source file using SHA256, returning true if successful. Otherwise, remove the file and return false.\n\n\n\n\n\n","category":"method"},{"location":"reference/#GlassCat.verify_sources!-Tuple{AbstractVector{var\"#s22\"} where var\"#s22\"<:(AbstractVector{var\"#s21\"} where var\"#s21\"<:AbstractString), AbstractString}","page":"Reference","title":"GlassCat.verify_sources!","text":"verify_sources!(sources::AbstractVector{<:AbstractVector{<:AbstractString}}, agfdir::AbstractString)\n\nVerify a list of sources located in agfdir. If AGF files are missing or invalid, try to download them using the information provided in sources.\n\nEach source ∈ sources is a collection of strings in the format name, sha256sum, url [, POST_data], where the last optional string is used to specify data to be sent in a POST request. This allows us to download a greater range of sources (e.g. SUMITA).\n\nModifies sources in-place such that only verified sources remain.\n\n\n\n\n\n","category":"method"},{"location":"","page":"Home","title":"Home","text":"CurrentModule = GlassCat","category":"page"},{"location":"#GlassCat","page":"Home","title":"GlassCat","text":"","category":"section"},{"location":"","page":"Home","title":"Home","text":"Documentation for GlassCat.","category":"page"},{"location":"","page":"Home","title":"Home","text":"GlassCat is a library for reading AGF files, a file format widely used in optical design. The contents of an AGF file can vary but usually each file contains material property information for several optical materials made by a single manufacturer. By convention the name of the AGF file is assumed to be the manufacturer name. For example SCHOTT.AGF contains material data for glasses made by the Schott company. AGF files are available from many publicly accessible websites. ","category":"page"},{"location":"","page":"Home","title":"Home","text":"GlassCat automates the process of downloading and installing an extensive library of AGF files from many sources. When the GlassCat package is first installed the build process will attempt to download AGF glass files from the sources in the file data/sources.txt. ","category":"page"},{"location":"","page":"Home","title":"Home","text":"GlassCat transforms the information in the AGF files into Julia files stored in the data subdirectory, which is created automatically during the build process. Each AGF file gets its own module, whose name will match that of the AGF file. Each material is assigned a corresponding Julia type. ","category":"page"},{"location":"#Using-installed-glasses","page":"Home","title":"Using installed glasses","text":"","category":"section"},{"location":"","page":"Home","title":"Home","text":"Glass types are accessed like so: GlassCat.CATALOG_NAME.GLASS_NAME, e.g.","category":"page"},{"location":"","page":"Home","title":"Home","text":"GlassCat.SUMITA.LAK7\nGlassCat.SCHOTT.PK3","category":"page"},{"location":"","page":"Home","title":"Home","text":"All glasses and catalogs are exported in their respective modules, so it is possible to invoke using calls for convenience, e.g.","category":"page"},{"location":"","page":"Home","title":"Home","text":"using GlassCat\nSCHOTT.PK3\nusing GlassCat.SCHOTT\nN_BK7","category":"page"},{"location":"","page":"Home","title":"Home","text":"At the Julia REPL you can use tab to autocomplete glass names or double tab to show glass types available in a particular glass library. For example, this is the result of typing tab twice after typing the intitial string SCHOTT.N_LA:","category":"page"},{"location":"","page":"Home","title":"Home","text":"julia> SCHOTT.N_LA\nN_LAF2     N_LAF33     N_LAF7      N_LAK21     N_LAK33B    N_LAK9      N_LASF41    N_LASF45HT  N_LASF55\nN_LAF21    N_LAF34     N_LAK10     N_LAK22     N_LAK34     N_LASF31    N_LASF43    N_LASF46    N_LASF9\nN_LAF3     N_LAF35     N_LAK12     N_LAK28     N_LAK7      N_LASF31A   N_LASF44    N_LASF46A   N_LASF9HT\nN_LAF32    N_LAF36     N_LAK14     N_LAK33A    N_LAK8      N_LASF40    N_LASF45    N_LASF46B","category":"page"},{"location":"","page":"Home","title":"Home","text":"If you use the VSCode IDE its Intellisense autocompletion provides similar functionality.","category":"page"},{"location":"","page":"Home","title":"Home","text":"All catalog glasses are of type GlassCat.Glass. Note that special characters in glass/catalog names are replaced with _. There is a special type and constant value for air: GlassCat.Air.","category":"page"},{"location":"","page":"Home","title":"Home","text":"Unitful.jl is used to manage units, meaning any valid unit can be used for all arguments, e.g., wavelength can be passed in as μm or nm (or cm, mm, m, etc.). Non-unitful options are also available, in which case units are assumed to be μm, °C and Atm for length, temperature and pressure respectively.","category":"page"},{"location":"","page":"Home","title":"Home","text":"TEMP_REF and PRESSURE_REF are constants:","category":"page"},{"location":"","page":"Home","title":"Home","text":"const TEMP_REF = 20.0 # °C\nconst PRESSURE_REF = 1.0 # Atm","category":"page"},{"location":"#Utility-functions","page":"Home","title":"Utility functions","text":"","category":"section"},{"location":"","page":"Home","title":"Home","text":"You can print out glass properties with the info function:","category":"page"},{"location":"","page":"Home","title":"Home","text":"julia> info(SCHOTT.FK3)\nID:                                                AGF:905\nDispersion formula:                                Sellmeier1 (2)\nDispersion formula coefficients:\n     K₁:                                           0.973346627\n     L₁:                                           0.00640795469\n     K₂:                                           0.146642231\n     L₂:                                           0.020565293\n     K₃:                                           0.679304225\n     L₃:                                           80.4965389\nValid wavelengths:                                 0.3μm to 2.5μm\nReference temperature:                             20.0°C\nThermal ΔRI coefficients:\n     D₀:                                           -4.9e-6\n     D₁:                                           1.23e-8\n     D₂:                                           -1.19e-10\n     E₀:                                           3.45e-7\n     E₁:                                           7.72e-10\n     λₜₖ:                                          0.18\nTCE (÷1e-6):                                       8.2\nIgnore thermal expansion:                          false\nDensity (p):                                       2.27g/m³\nΔPgF:                                              -0.0003\nRI at sodium D-Line (587nm):                       1.4645\nAbbe Number:                                       65.77\nCost relative to N_BK7:                            ?\nEnvironmental resistance:\n     Climate (CR):                                 2.0\n     Stain (FR):                                   3.0\n     Acid (SR):                                    52.4\n     Alkaline (AR):                                2.0\n     Phosphate (PR):                               1.0\nStatus:                                            Special (3)\nMelt frequency:                                    0\nExclude substitution:                              false\nTransmission data:\n     Wavelength   Transmission      Thickness\n          0.3μm           0.05         25.0mm\n         0.31μm           0.19         25.0mm\n         0.32μm           0.41         25.0mm\n        0.334μm           0.74         25.0mm\n         0.35μm           0.89         25.0mm\n        0.365μm          0.964         25.0mm\n         0.37μm          0.971         25.0mm\n         0.38μm           0.98         25.0mm\n         0.39μm          0.984         25.0mm\n          0.4μm          0.985         25.0mm\n        0.405μm          0.986         25.0mm\n         0.42μm          0.987         25.0mm\n        0.436μm          0.989         25.0mm\n         0.46μm           0.99         25.0mm\n          0.5μm          0.993         25.0mm\n        0.546μm          0.993         25.0mm\n         0.58μm          0.993         25.0mm\n         0.62μm          0.993         25.0mm\n         0.66μm          0.993         25.0mm\n          0.7μm          0.993         25.0mm\n         1.06μm          0.995         25.0mm\n         1.53μm           0.97         25.0mm\n         1.97μm           0.93         25.0mm\n        2.325μm           0.59         25.0mm\n          2.5μm           0.34         25.0mm","category":"page"},{"location":"","page":"Home","title":"Home","text":"You can also plot glass properties with the plot_indices function","category":"page"},{"location":"","page":"Home","title":"Home","text":"julia> plot_indices(SCHOTT.FK3)","category":"page"},{"location":"","page":"Home","title":"Home","text":"(Image: Refractive Index vs. wavelength for SCHOTT.FK3)","category":"page"},{"location":"#How-GlassCat-works","page":"Home","title":"How GlassCat works","text":"","category":"section"},{"location":"","page":"Home","title":"Home","text":"The central configuration file for GlassCat is located at src/GlassCat/data/sources.txt. Each line in the file corresponds to one AGF source, which is described by 2 to 4 space-delimited columns. The first column provides the installed module name for the catalog, e.g. GlassCat.NIKON. The second column is the expected SHA256 checksum for the AGF file.","category":"page"},{"location":"","page":"Home","title":"Home","text":"The final two columns are optional, specifying download instructions for acquiring the zipped AGF files automatically from the web. The fourth column allows us to use POST requests to acquire files from interactive sites.","category":"page"},{"location":"#Adding-glass-catalogs","page":"Home","title":"Adding glass catalogs","text":"","category":"section"},{"location":"","page":"Home","title":"Home","text":"sources.txt can be edited freely to add more glass catalogs. However, this is a somewhat tedious process, so we have a convenience function for adding a locally downloaded AGF file to the source list.","category":"page"},{"location":"","page":"Home","title":"Home","text":"GlassCat.add_agf","category":"page"},{"location":"#GlassCat.add_agf","page":"Home","title":"GlassCat.add_agf","text":"add_agf(agffile; agfdir = AGF_DIR, sourcefile = SOURCES_PATH, name = nothing, rebuild = true)\n\nCopies a file at agffile (this can be either a download link or local path) to agfdir and appends a corresponding entry to the source list at sourcefile.\n\nIf a name is not provided for the catalog, an implicit name is derived from agffile.\n\nIf rebuild is true, Pkg.build is called at the end to install the new catalog.\n\n\n\n\n\n","category":"function"}]
}