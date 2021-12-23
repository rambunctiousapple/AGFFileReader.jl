module BIREFRINGENT
using ..AGFFileReader: Glass, GlassID, AGF
export CDSE, BATIO3, SRMOO4_E, AGASS3_E, TAS, CALCITE, CAWO4_E, MGF2_E, TE, MGF2, CUGAS2_E, CAWO4, CDS, LIYF4_E, QUARTZ_E, TEO2_E, BATIO3_E, LIYF4, AGGAS2, CDSE_E, ADP_E, TE_E, LAF3, LAF3_E, TEO2, BBO, BBO_E, KDP, ZNGEP2_E, LINBO3_E, ALN_E, CAMOO4, CDS_E, AL2O3_E, TAS_E, CAMOO4_E, PBMOO4_E, KDP_E, YVO4, ZNO_E, AL2O3, PBMOO4, CUGAS2, SRMOO4, ADP, ALN, BEO, AGGASE2, ZNGEP2, CDGEAS2, AGGAS2_E, CALCITE_E, CDGEAS2_E, LIO3, ZNO, AGASS3, LIO3_E, LINBO3, QUARTZ, BEO_E, AGGASE2_E, YVO4_E

const CDSE = Glass(GlassID(AGF, 935), 9, 4.2243, 1.768, 0.227, 3.12, 3380.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 22.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0, 0.0, -1.0, -1.0, 4.9, -1.0, 0, -1.0, [(0.334, 1.0, 25.0), (0.35, 1.0, 25.0), (0.365, 1.0, 25.0), (0.37, 1.0, 25.0), (0.38, 1.0, 25.0), (0.39, 1.0, 25.0), (0.4, 1.0, 25.0), (0.42, 1.0, 25.0), (0.46, 1.0, 25.0), (0.5, 1.0, 25.0), (0.66, 1.0, 25.0), (1.06, 1.0, 25.0), (1.529, 1.0, 25.0), (2.325, 1.0, 25.0)], 1.0, -1.0, -1.0, 0, 0.0, 0, 1.0, 0)
const BATIO3 = Glass(GlassID(AGF, 936), 2, 4.187, 0.049729, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.4, 0.7, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0, 0.0, -1.0, -1.0, 0.0, -1.0, 0, -1.0, [(0.334, 1.0, 25.0), (0.35, 1.0, 25.0), (0.365, 1.0, 25.0), (0.37, 1.0, 25.0), (0.38, 1.0, 25.0), (0.39, 1.0, 25.0), (0.4, 1.0, 25.0), (0.42, 1.0, 25.0), (0.46, 1.0, 25.0), (0.5, 1.0, 25.0), (0.66, 1.0, 25.0), (1.06, 1.0, 25.0), (1.529, 1.0, 25.0), (2.325, 1.0, 25.0)], 2.427266, -1.0, -1.0, 0, 12.296883, 0, 1.0, 0)
const SRMOO4_E = Glass(GlassID(AGF, 937), 2, 2.4923, 0.02214144, 0.105, 20.647936, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.45, 2.4, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0, 0.0, -1.0, -1.0, 0.0, -1.0, 0, -1.0, [(0.334, 1.0, 25.0), (0.35, 1.0, 25.0), (0.365, 1.0, 25.0), (0.37, 1.0, 25.0), (0.38, 1.0, 25.0), (0.39, 1.0, 25.0), (0.4, 1.0, 25.0), (0.42, 1.0, 25.0), (0.46, 1.0, 25.0), (0.5, 1.0, 25.0), (0.66, 1.0, 25.0), (1.06, 1.0, 25.0), (1.529, 1.0, 25.0), (2.325, 1.0, 25.0)], 1.913456, -1.0, -1.0, 0, 28.381356, 0, 1.0, 0)
const AGASS3_E = Glass(GlassID(AGF, 938), 7, 6.364, 0.342, 0.09, 0.0011, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.59, 4.6, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0, 0.0, -1.0, -1.0, 0.0, -1.0, 0, -1.0, [(0.334, 1.0, 25.0), (0.35, 1.0, 25.0), (0.365, 1.0, 25.0), (0.37, 1.0, 25.0), (0.38, 1.0, 25.0), (0.39, 1.0, 25.0), (0.4, 1.0, 25.0), (0.42, 1.0, 25.0), (0.46, 1.0, 25.0), (0.5, 1.0, 25.0), (0.66, 1.0, 25.0), (1.06, 1.0, 25.0), (1.529, 1.0, 25.0), (2.325, 1.0, 25.0)], 1.0, -1.0, -1.0, 0, 0.0, 0, 1.0, 0)
const TAS = Glass(GlassID(AGF, 939), 2, 10.21, 0.197136, 0.522, 625.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2.0, 12.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0, 0.0, -1.0, -1.0, 0.0, -1.0, 0, -1.0, [(0.334, 1.0, 25.0), (0.35, 1.0, 25.0), (0.365, 1.0, 25.0), (0.37, 1.0, 25.0), (0.38, 1.0, 25.0), (0.39, 1.0, 25.0), (0.4, 1.0, 25.0), (0.42, 1.0, 25.0), (0.46, 1.0, 25.0), (0.5, 1.0, 25.0), (0.66, 1.0, 25.0), (1.06, 1.0, 25.0), (1.529, 1.0, 25.0), (2.325, 1.0, 25.0)], 1.0, -1.0, -1.0, 0, 0.0, 0, 1.0, 0)
const CALCITE = Glass(GlassID(AGF, 940), 6, 0.8559, 0.00345744, 0.8391, 0.019881, 0.0009, 0.038809, 0.6845, 49.070025, 0.0, 0.0, 0.2, 2.2, 1.05e-6, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0, 0.0, -1.0, -1.0, 0.0, -1.0, 0, -1.0, [(0.334, 1.0, 25.0), (0.35, 1.0, 25.0), (0.365, 1.0, 25.0), (0.37, 1.0, 25.0), (0.38, 1.0, 25.0), (0.39, 1.0, 25.0), (0.4, 1.0, 25.0), (0.42, 1.0, 25.0), (0.46, 1.0, 25.0), (0.5, 1.0, 25.0), (0.66, 1.0, 25.0), (1.06, 1.0, 25.0), (1.529, 1.0, 25.0), (2.325, 1.0, 25.0)], 1.658643, -1.0, -1.0, 0, 48.541403, 0, 2.711, 0)
const CAWO4_E = Glass(GlassID(AGF, 941), 2, 2.6041, 0.01901641, 4.1237, 456.719641, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.45, 4.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0, 0.0, -1.0, -1.0, 0.0, -1.0, 0, -1.0, [(0.334, 1.0, 25.0), (0.35, 1.0, 25.0), (0.365, 1.0, 25.0), (0.37, 1.0, 25.0), (0.38, 1.0, 25.0), (0.39, 1.0, 25.0), (0.4, 1.0, 25.0), (0.42, 1.0, 25.0), (0.46, 1.0, 25.0), (0.5, 1.0, 25.0), (0.66, 1.0, 25.0), (1.06, 1.0, 25.0), (1.529, 1.0, 25.0), (2.325, 1.0, 25.0)], 1.937211, -1.0, -1.0, 0, 33.304949, 0, 1.0, 0)
const MGF2_E = Glass(GlassID(AGF, 942), 2, 0.41344023, 0.00135737865, 0.50497499, 0.00823767166, 2.4904862, 565.10774, 0.0, 0.0, 0.0, 0.0, 0.2, 7.04, -2.3e-6, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0, 0.0, -1.0, -1.0, 0.0, -1.0, 0, -1.0, [(0.334, 1.0, 25.0), (0.35, 1.0, 25.0), (0.365, 1.0, 25.0), (0.37, 1.0, 25.0), (0.38, 1.0, 25.0), (0.39, 1.0, 25.0), (0.4, 1.0, 25.0), (0.42, 1.0, 25.0), (0.46, 1.0, 25.0), (0.5, 1.0, 25.0), (0.66, 1.0, 25.0), (1.06, 1.0, 25.0), (1.529, 1.0, 25.0), (2.325, 1.0, 25.0)], 1.389557, -1.0, -1.0, 0, 104.857428, 0, 1.0, 0)
const TE = Glass(GlassID(AGF, 943), 9, 18.5346, 4.3289, 3.981, 3.78, 11813.0, 0.0, 0.0, 0.0, 0.0, 0.0, 4.0, 14.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0, 0.0, -1.0, -1.0, 27.5, -1.0, 0, -1.0, [(0.334, 1.0, 25.0), (0.35, 1.0, 25.0), (0.365, 1.0, 25.0), (0.37, 1.0, 25.0), (0.38, 1.0, 25.0), (0.39, 1.0, 25.0), (0.4, 1.0, 25.0), (0.42, 1.0, 25.0), (0.46, 1.0, 25.0), (0.5, 1.0, 25.0), (0.66, 1.0, 25.0), (1.06, 1.0, 25.0), (1.529, 1.0, 25.0), (2.325, 1.0, 25.0)], 1.0, -1.0, -1.0, 0, 0.0, 0, 1.0, 0)
const MGF2 = Glass(GlassID(AGF, 944), 2, 0.48755108, 0.0018821784, 0.39875031, 0.00895188847, 2.3120353, 566.135591, 0.0, 0.0, 0.0, 0.0, 0.2, 7.04, -2.5e-7, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0, 0.0, -1.0, -1.0, 9.4, -1.0, 0, -1.0, [(0.334, 1.0, 25.0), (0.35, 1.0, 25.0), (0.365, 1.0, 25.0), (0.37, 1.0, 25.0), (0.38, 1.0, 25.0), (0.39, 1.0, 25.0), (0.4, 1.0, 25.0), (0.42, 1.0, 25.0), (0.46, 1.0, 25.0), (0.5, 1.0, 25.0), (0.66, 1.0, 25.0), (1.06, 1.0, 25.0), (1.529, 1.0, 25.0), (2.325, 1.0, 25.0)], 1.377744, -1.0, -1.0, 0, 106.217612, 0, 3.171, 0)
const CUGAS2_E = Glass(GlassID(AGF, 945), 9, 4.3165, 1.8692, 0.1364, 1.7575, 738.43, 0.0, 0.0, 0.0, 0.0, 0.0, 0.55, 11.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0, 0.0, -1.0, -1.0, 0.0, -1.0, 0, -1.0, [(0.334, 1.0, 25.0), (0.35, 1.0, 25.0), (0.365, 1.0, 25.0), (0.37, 1.0, 25.0), (0.38, 1.0, 25.0), (0.39, 1.0, 25.0), (0.4, 1.0, 25.0), (0.42, 1.0, 25.0), (0.46, 1.0, 25.0), (0.5, 1.0, 25.0), (0.66, 1.0, 25.0), (1.06, 1.0, 25.0), (1.529, 1.0, 25.0), (2.325, 1.0, 25.0)], 1.0, -1.0, -1.0, 0, 0.0, 0, 1.0, 0)
const CAWO4 = Glass(GlassID(AGF, 946), 2, 2.5493, 0.01814409, 0.92, 116.964225, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.45, 4.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0, 0.0, -1.0, -1.0, 0.0, -1.0, 0, -1.0, [(0.334, 1.0, 25.0), (0.35, 1.0, 25.0), (0.365, 1.0, 25.0), (0.37, 1.0, 25.0), (0.38, 1.0, 25.0), (0.39, 1.0, 25.0), (0.4, 1.0, 25.0), (0.42, 1.0, 25.0), (0.46, 1.0, 25.0), (0.5, 1.0, 25.0), (0.66, 1.0, 25.0), (1.06, 1.0, 25.0), (1.529, 1.0, 25.0), (2.325, 1.0, 25.0)], 1.920414, -1.0, -1.0, 0, 34.953592, 0, 1.0, 0)
const CDS = Glass(GlassID(AGF, 947), 2, 3.9658282, 0.0558036869, 0.18113874, 0.233146066, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.51, 1.4, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0, 0.0, -1.0, -1.0, 0.0, -1.0, 0, -1.0, [(0.334, 1.0, 25.0), (0.35, 1.0, 25.0), (0.365, 1.0, 25.0), (0.37, 1.0, 25.0), (0.38, 1.0, 25.0), (0.39, 1.0, 25.0), (0.4, 1.0, 25.0), (0.42, 1.0, 25.0), (0.46, 1.0, 25.0), (0.5, 1.0, 25.0), (0.66, 1.0, 25.0), (1.06, 1.0, 25.0), (1.529, 1.0, 25.0), (2.325, 1.0, 25.0)], 1.0, -1.0, -1.0, 0, 0.0, 0, 1.0, 0)
const LIYF4_E = Glass(GlassID(AGF, 948), 9, 1.31021, 0.84903, 0.00876, 0.53607, 134.9566, 0.0, 0.0, 0.0, 0.0, 0.0, 0.23, 2.6, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0, 0.0, -1.0, -1.0, 0.0, -1.0, 0, -1.0, [(0.334, 1.0, 25.0), (0.35, 1.0, 25.0), (0.365, 1.0, 25.0), (0.37, 1.0, 25.0), (0.38, 1.0, 25.0), (0.39, 1.0, 25.0), (0.4, 1.0, 25.0), (0.42, 1.0, 25.0), (0.46, 1.0, 25.0), (0.5, 1.0, 25.0), (0.66, 1.0, 25.0), (1.06, 1.0, 25.0), (1.529, 1.0, 25.0), (2.325, 1.0, 25.0)], 1.476472, -1.0, -1.0, 0, 88.935059, 0, 1.0, 0)
const QUARTZ_E = Glass(GlassID(AGF, 949), 1, 2.38421862, -0.0120653449, 0.011013843, 0.00012886313, 1.68747314e-7, 4.92022338e-8, 0.0, 0.0, 0.0, 0.0, 0.18, 0.71, -1.638e-5, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0, 0.0, -1.0, -1.0, 0.0, -1.0, 0, -1.0, [(0.334, 1.0, 25.0), (0.35, 1.0, 25.0), (0.365, 1.0, 25.0), (0.37, 1.0, 25.0), (0.38, 1.0, 25.0), (0.39, 1.0, 25.0), (0.4, 1.0, 25.0), (0.42, 1.0, 25.0), (0.46, 1.0, 25.0), (0.5, 1.0, 25.0), (0.66, 1.0, 25.0), (1.06, 1.0, 25.0), (1.529, 1.0, 25.0), (2.325, 1.0, 25.0)], 1.553398, -1.0, -1.0, 0, 68.797763, 0, 0.0, 0)
const TEO2_E = Glass(GlassID(AGF, 950), 2, 2.823, 0.01800964, 1.542, 0.06922161, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.4, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0, 0.0, -1.0, -1.0, 0.0, -1.0, 0, -1.0, [(0.334, 1.0, 25.0), (0.35, 1.0, 25.0), (0.365, 1.0, 25.0), (0.37, 1.0, 25.0), (0.38, 1.0, 25.0), (0.39, 1.0, 25.0), (0.4, 1.0, 25.0), (0.42, 1.0, 25.0), (0.46, 1.0, 25.0), (0.5, 1.0, 25.0), (0.66, 1.0, 25.0), (1.06, 1.0, 25.0), (1.529, 1.0, 25.0), (2.325, 1.0, 25.0)], 2.430453, -1.0, -1.0, 0, 15.474561, 0, 1.0, 0)
const BATIO3_E = Glass(GlassID(AGF, 951), 2, 4.064, 0.044521, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.4, 0.7, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0, 0.0, -1.0, -1.0, 0.0, -1.0, 0, -1.0, [(0.334, 1.0, 25.0), (0.35, 1.0, 25.0), (0.365, 1.0, 25.0), (0.37, 1.0, 25.0), (0.38, 1.0, 25.0), (0.39, 1.0, 25.0), (0.4, 1.0, 25.0), (0.42, 1.0, 25.0), (0.46, 1.0, 25.0), (0.5, 1.0, 25.0), (0.66, 1.0, 25.0), (1.06, 1.0, 25.0), (1.529, 1.0, 25.0), (2.325, 1.0, 25.0)], 2.380271, -1.0, -1.0, 0, 13.963107, 0, 1.0, 0)
const LIYF4 = Glass(GlassID(AGF, 952), 9, 1.38757, 0.70757, 0.00931, 0.18849, 50.99741, 0.0, 0.0, 0.0, 0.0, 0.0, 0.23, 2.6, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0, 0.0, -1.0, -1.0, 0.0, -1.0, 0, -1.0, [(0.334, 1.0, 25.0), (0.35, 1.0, 25.0), (0.365, 1.0, 25.0), (0.37, 1.0, 25.0), (0.38, 1.0, 25.0), (0.39, 1.0, 25.0), (0.4, 1.0, 25.0), (0.42, 1.0, 25.0), (0.46, 1.0, 25.0), (0.5, 1.0, 25.0), (0.66, 1.0, 25.0), (1.06, 1.0, 25.0), (1.529, 1.0, 25.0), (2.325, 1.0, 25.0)], 1.453776, -1.0, -1.0, 0, 93.549426, 0, 1.0, 0)
const AGGAS2 = Glass(GlassID(AGF, 953), 9, 3.628, 2.1686, 0.1003, 2.7153, 950.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.49, 12.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0, 0.0, -1.0, -1.0, 0.0, -1.0, 0, -1.0, [(0.334, 1.0, 25.0), (0.35, 1.0, 25.0), (0.365, 1.0, 25.0), (0.37, 1.0, 25.0), (0.38, 1.0, 25.0), (0.39, 1.0, 25.0), (0.4, 1.0, 25.0), (0.42, 1.0, 25.0), (0.46, 1.0, 25.0), (0.5, 1.0, 25.0), (0.66, 1.0, 25.0), (1.06, 1.0, 25.0), (1.529, 1.0, 25.0), (2.325, 1.0, 25.0)], 1.0, -1.0, -1.0, 0, 0.0, 0, 1.0, 0)
const CDSE_E = Glass(GlassID(AGF, 954), 9, 4.2009, 1.8875, 0.2171, 3.6461, 3629.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 22.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0, 0.0, -1.0, -1.0, 0.0, -1.0, 0, -1.0, [(0.334, 1.0, 25.0), (0.35, 1.0, 25.0), (0.365, 1.0, 25.0), (0.37, 1.0, 25.0), (0.38, 1.0, 25.0), (0.39, 1.0, 25.0), (0.4, 1.0, 25.0), (0.42, 1.0, 25.0), (0.46, 1.0, 25.0), (0.5, 1.0, 25.0), (0.66, 1.0, 25.0), (1.06, 1.0, 25.0), (1.529, 1.0, 25.0), (2.325, 1.0, 25.0)], 1.0, -1.0, -1.0, 0, 0.0, 0, 1.0, 0)
const ADP_E = Glass(GlassID(AGF, 955), 2, 1.162166, 0.0085932421, 12.01997, 831.8239, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.4, 1.06, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0, 0.0, -1.0, -1.0, 0.0, -1.0, 0, -1.0, [(0.334, 1.0, 25.0), (0.35, 1.0, 25.0), (0.365, 1.0, 25.0), (0.37, 1.0, 25.0), (0.38, 1.0, 25.0), (0.39, 1.0, 25.0), (0.4, 1.0, 25.0), (0.42, 1.0, 25.0), (0.46, 1.0, 25.0), (0.5, 1.0, 25.0), (0.66, 1.0, 25.0), (1.06, 1.0, 25.0), (1.529, 1.0, 25.0), (2.325, 1.0, 25.0)], 1.478797, -1.0, -1.0, 0, 61.616939, 0, 1.0, 0)
const TE_E = Glass(GlassID(AGF, 956), 9, 29.5222, 9.3068, 2.5766, 9.235, 13521.0, 0.0, 0.0, 0.0, 0.0, 0.0, 4.0, 14.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0, 0.0, -1.0, -1.0, 0.0, -1.0, 0, -1.0, [(0.334, 1.0, 25.0), (0.35, 1.0, 25.0), (0.365, 1.0, 25.0), (0.37, 1.0, 25.0), (0.38, 1.0, 25.0), (0.39, 1.0, 25.0), (0.4, 1.0, 25.0), (0.42, 1.0, 25.0), (0.46, 1.0, 25.0), (0.5, 1.0, 25.0), (0.66, 1.0, 25.0), (1.06, 1.0, 25.0), (1.529, 1.0, 25.0), (2.325, 1.0, 25.0)], 1.0, -1.0, -1.0, 0, 0.0, 0, 1.0, 0)
const LAF3 = Glass(GlassID(AGF, 957), 2, 1.5376, 0.00776161, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.35, 0.7, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0, 0.0, -1.0, -1.0, 0.0, -1.0, 0, -1.0, [(0.334, 1.0, 25.0), (0.35, 1.0, 25.0), (0.365, 1.0, 25.0), (0.37, 1.0, 25.0), (0.38, 1.0, 25.0), (0.39, 1.0, 25.0), (0.4, 1.0, 25.0), (0.42, 1.0, 25.0), (0.46, 1.0, 25.0), (0.5, 1.0, 25.0), (0.66, 1.0, 25.0), (1.06, 1.0, 25.0), (1.529, 1.0, 25.0), (2.325, 1.0, 25.0)], 1.604046, -1.0, -1.0, 0, 80.83154, 0, 1.0, 0)
const LAF3_E = Glass(GlassID(AGF, 958), 2, 1.5149, 0.00770884, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.35, 0.7, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0, 0.0, -1.0, -1.0, 0.0, -1.0, 0, -1.0, [(0.334, 1.0, 25.0), (0.35, 1.0, 25.0), (0.365, 1.0, 25.0), (0.37, 1.0, 25.0), (0.38, 1.0, 25.0), (0.39, 1.0, 25.0), (0.4, 1.0, 25.0), (0.42, 1.0, 25.0), (0.46, 1.0, 25.0), (0.5, 1.0, 25.0), (0.66, 1.0, 25.0), (1.06, 1.0, 25.0), (1.529, 1.0, 25.0), (2.325, 1.0, 25.0)], 1.596715, -1.0, -1.0, 0, 81.256833, 0, 1.0, 0)
const TEO2 = Glass(GlassID(AGF, 959), 2, 2.584, 0.01800964, 1.157, 0.06959044, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.4, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0, 0.0, -1.0, -1.0, 0.0, -1.0, 0, -1.0, [(0.334, 1.0, 25.0), (0.35, 1.0, 25.0), (0.365, 1.0, 25.0), (0.37, 1.0, 25.0), (0.38, 1.0, 25.0), (0.39, 1.0, 25.0), (0.4, 1.0, 25.0), (0.42, 1.0, 25.0), (0.46, 1.0, 25.0), (0.5, 1.0, 25.0), (0.66, 1.0, 25.0), (1.06, 1.0, 25.0), (1.529, 1.0, 25.0), (2.325, 1.0, 25.0)], 2.274935, -1.0, -1.0, 0, 16.22277, 0, 1.0, 0)
const BBO = Glass(GlassID(AGF, 960), 7, 2.7405, 0.0184, 0.0179, 0.0155, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.22, 1.06, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0, 0.0, -1.0, -1.0, 0.0, -1.0, 0, -1.0, [(0.334, 1.0, 25.0), (0.35, 1.0, 25.0), (0.365, 1.0, 25.0), (0.37, 1.0, 25.0), (0.38, 1.0, 25.0), (0.39, 1.0, 25.0), (0.4, 1.0, 25.0), (0.42, 1.0, 25.0), (0.46, 1.0, 25.0), (0.5, 1.0, 25.0), (0.66, 1.0, 25.0), (1.06, 1.0, 25.0), (1.529, 1.0, 25.0), (2.325, 1.0, 25.0)], 1.670737, -1.0, -1.0, 0, 52.593907, 0, 1.0, 0)
const BBO_E = Glass(GlassID(AGF, 961), 7, 2.373, 0.0128, 0.0156, 0.0044, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.22, 1.06, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0, 0.0, -1.0, -1.0, 0.0, -1.0, 0, -1.0, [(0.334, 1.0, 25.0), (0.35, 1.0, 25.0), (0.365, 1.0, 25.0), (0.37, 1.0, 25.0), (0.38, 1.0, 25.0), (0.39, 1.0, 25.0), (0.4, 1.0, 25.0), (0.42, 1.0, 25.0), (0.46, 1.0, 25.0), (0.5, 1.0, 25.0), (0.66, 1.0, 25.0), (1.06, 1.0, 25.0), (1.529, 1.0, 25.0), (2.325, 1.0, 25.0)], 1.552518, -1.0, -1.0, 0, 61.321496, 0, 1.0, 0)
const KDP = Glass(GlassID(AGF, 962), 2, 1.256618, 0.0084478168, 33.89909, 1113.904, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.4, 1.06, -9.718e-5, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0, 0.0, -1.0, -1.0, 22.0, -1.0, 0, -1.0, [(0.334, 1.0, 25.0), (0.35, 1.0, 25.0), (0.365, 1.0, 25.0), (0.37, 1.0, 25.0), (0.38, 1.0, 25.0), (0.39, 1.0, 25.0), (0.4, 1.0, 25.0), (0.42, 1.0, 25.0), (0.46, 1.0, 25.0), (0.5, 1.0, 25.0), (0.66, 1.0, 25.0), (1.06, 1.0, 25.0), (1.529, 1.0, 25.0), (2.325, 1.0, 25.0)], 1.509182, -1.0, -1.0, 0, 56.224997, 0, 2.339, 0)
const ZNGEP2_E = Glass(GlassID(AGF, 963), 9, 4.6332, 5.3422, 0.1426, 1.458, 662.55, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 12.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0, 0.0, -1.0, -1.0, 0.0, -1.0, 0, -1.0, [(0.334, 1.0, 25.0), (0.35, 1.0, 25.0), (0.365, 1.0, 25.0), (0.37, 1.0, 25.0), (0.38, 1.0, 25.0), (0.39, 1.0, 25.0), (0.4, 1.0, 25.0), (0.42, 1.0, 25.0), (0.46, 1.0, 25.0), (0.5, 1.0, 25.0), (0.66, 1.0, 25.0), (1.06, 1.0, 25.0), (1.529, 1.0, 25.0), (2.325, 1.0, 25.0)], 1.0, -1.0, -1.0, 0, 0.0, 0, 1.0, 0)
const LINBO3_E = Glass(GlassID(AGF, 964), 9, 2.32468, 2.2565, 0.0441, 14.503, 671.587225, 0.0, 0.0, 0.0, 0.0, 0.0, 0.4, 3.1, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0, 0.0, -1.0, -1.0, 0.0, -1.0, 0, -1.0, [(0.334, 1.0, 25.0), (0.35, 1.0, 25.0), (0.365, 1.0, 25.0), (0.37, 1.0, 25.0), (0.38, 1.0, 25.0), (0.39, 1.0, 25.0), (0.4, 1.0, 25.0), (0.42, 1.0, 25.0), (0.46, 1.0, 25.0), (0.5, 1.0, 25.0), (0.66, 1.0, 25.0), (1.06, 1.0, 25.0), (1.529, 1.0, 25.0), (2.325, 1.0, 25.0)], 2.214539, -1.0, -1.0, 0, 20.455966, 0, 1.0, 0)
const ALN_E = Glass(GlassID(AGF, 965), 9, 3.0729, 1.6173, 0.030485, 4.139, 225.9009, 0.0, 0.0, 0.0, 0.0, 0.0, 0.22, 5.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0, 0.0, -1.0, -1.0, 0.0, -1.0, 0, -1.0, [(0.334, 1.0, 25.0), (0.35, 1.0, 25.0), (0.365, 1.0, 25.0), (0.37, 1.0, 25.0), (0.38, 1.0, 25.0), (0.39, 1.0, 25.0), (0.4, 1.0, 25.0), (0.42, 1.0, 25.0), (0.46, 1.0, 25.0), (0.5, 1.0, 25.0), (0.66, 1.0, 25.0), (1.06, 1.0, 25.0), (1.529, 1.0, 25.0), (2.325, 1.0, 25.0)], 2.200116, -1.0, -1.0, 0, 44.15554, 0, 1.0, 0)
const CAMOO4 = Glass(GlassID(AGF, 966), 2, 2.784, 0.02199289, 1.2425, 134.003776, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.45, 3.8, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0, 0.0, -1.0, -1.0, 0.0, -1.0, 0, -1.0, [(0.334, 1.0, 25.0), (0.35, 1.0, 25.0), (0.365, 1.0, 25.0), (0.37, 1.0, 25.0), (0.38, 1.0, 25.0), (0.39, 1.0, 25.0), (0.4, 1.0, 25.0), (0.42, 1.0, 25.0), (0.46, 1.0, 25.0), (0.5, 1.0, 25.0), (0.66, 1.0, 25.0), (1.06, 1.0, 25.0), (1.529, 1.0, 25.0), (2.325, 1.0, 25.0)], 1.992539, -1.0, -1.0, 0, 28.832428, 0, 1.0, 0)
const CDS_E = Glass(GlassID(AGF, 967), 2, 3.97478769, 0.0502969611, 0.26680809, 0.218030956, 0.00074077, 0.259235138, 0.0, 0.0, 0.0, 0.0, 0.51, 1.4, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0, 0.0, -1.0, -1.0, 0.0, -1.0, 0, -1.0, [(0.334, 1.0, 25.0), (0.35, 1.0, 25.0), (0.365, 1.0, 25.0), (0.37, 1.0, 25.0), (0.38, 1.0, 25.0), (0.39, 1.0, 25.0), (0.4, 1.0, 25.0), (0.42, 1.0, 25.0), (0.46, 1.0, 25.0), (0.5, 1.0, 25.0), (0.66, 1.0, 25.0), (1.06, 1.0, 25.0), (1.529, 1.0, 25.0), (2.325, 1.0, 25.0)], 1.0, -1.0, -1.0, 0, 0.0, 0, 1.0, 0)
const AL2O3_E = Glass(GlassID(AGF, 968), 2, 1.5039759, 0.00548026323, 0.55069141, 0.0147994281, 6.5927379, 402.89514, 0.0, 0.0, 0.0, 0.0, 0.2, 5.5, 2.2e-5, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0, 0.0, -1.0, -1.0, 0.0, -1.0, 0, -1.0, [(0.334, 1.0, 25.0), (0.35, 1.0, 25.0), (0.365, 1.0, 25.0), (0.37, 1.0, 25.0), (0.38, 1.0, 25.0), (0.39, 1.0, 25.0), (0.4, 1.0, 25.0), (0.42, 1.0, 25.0), (0.46, 1.0, 25.0), (0.5, 1.0, 25.0), (0.66, 1.0, 25.0), (1.06, 1.0, 25.0), (1.529, 1.0, 25.0), (2.325, 1.0, 25.0)], 1.760096, -1.0, -1.0, 0, 72.988091, 0, 1.0, 0)
const TAS_E = Glass(GlassID(AGF, 969), 2, 8.993, 0.197136, 0.308, 625.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2.0, 12.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0, 0.0, -1.0, -1.0, 0.0, -1.0, 0, -1.0, [(0.334, 1.0, 25.0), (0.35, 1.0, 25.0), (0.365, 1.0, 25.0), (0.37, 1.0, 25.0), (0.38, 1.0, 25.0), (0.39, 1.0, 25.0), (0.4, 1.0, 25.0), (0.42, 1.0, 25.0), (0.46, 1.0, 25.0), (0.5, 1.0, 25.0), (0.66, 1.0, 25.0), (1.06, 1.0, 25.0), (1.529, 1.0, 25.0), (2.325, 1.0, 25.0)], 1.0, -1.0, -1.0, 0, 0.0, 0, 1.0, 0)
const CAMOO4_E = Glass(GlassID(AGF, 970), 2, 2.8045, 0.02377764, 1.0055, 134.003776, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.45, 3.8, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0, 0.0, -1.0, -1.0, 0.0, -1.0, 0, -1.0, [(0.334, 1.0, 25.0), (0.35, 1.0, 25.0), (0.365, 1.0, 25.0), (0.37, 1.0, 25.0), (0.38, 1.0, 25.0), (0.39, 1.0, 25.0), (0.4, 1.0, 25.0), (0.42, 1.0, 25.0), (0.46, 1.0, 25.0), (0.5, 1.0, 25.0), (0.66, 1.0, 25.0), (1.06, 1.0, 25.0), (1.529, 1.0, 25.0), (2.325, 1.0, 25.0)], 2.002336, -1.0, -1.0, 0, 26.628162, 0, 1.0, 0)
const PBMOO4_E = Glass(GlassID(AGF, 971), 2, 3.52555, 0.03222025, 0.2066, 0.105865637, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.44, 1.08, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0, 0.0, -1.0, -1.0, 0.0, -1.0, 0, -1.0, [(0.334, 1.0, 25.0), (0.35, 1.0, 25.0), (0.365, 1.0, 25.0), (0.37, 1.0, 25.0), (0.38, 1.0, 25.0), (0.39, 1.0, 25.0), (0.4, 1.0, 25.0), (0.42, 1.0, 25.0), (0.46, 1.0, 25.0), (0.5, 1.0, 25.0), (0.66, 1.0, 25.0), (1.06, 1.0, 25.0), (1.529, 1.0, 25.0), (2.325, 1.0, 25.0)], 2.277375, -1.0, -1.0, 0, 15.77258, 0, 1.0, 0)
const KDP_E = Glass(GlassID(AGF, 972), 2, 1.131091, 0.00814598, 5.75675, 811.7537, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.4, 1.06, -0.0001008, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0, 0.0, -1.0, -1.0, 39.200001, -1.0, 0, -1.0, [(0.334, 1.0, 25.0), (0.35, 1.0, 25.0), (0.365, 1.0, 25.0), (0.37, 1.0, 25.0), (0.38, 1.0, 25.0), (0.39, 1.0, 25.0), (0.4, 1.0, 25.0), (0.42, 1.0, 25.0), (0.46, 1.0, 25.0), (0.5, 1.0, 25.0), (0.66, 1.0, 25.0), (1.06, 1.0, 25.0), (1.529, 1.0, 25.0), (2.325, 1.0, 25.0)], 1.468324, -1.0, -1.0, 0, 68.984949, 0, 2.339, 0)
const YVO4 = Glass(GlassID(AGF, 973), 7, 3.77834, 0.069736, 0.04724, 0.0108133, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.63, 1.55, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0, 0.0, -1.0, -1.0, 0.0, -1.0, 0, -1.0, [], 1.0, -1.0, -1.0, 0, 0.0, 0, 1.0, 0)
const ZNO_E = Glass(GlassID(AGF, 974), 8, 2.80333, 0.9447, 0.09024016, 0.00714, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.45, 4.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0, 0.0, -1.0, -1.0, 0.0, -1.0, 0, -1.0, [(0.334, 1.0, 25.0), (0.35, 1.0, 25.0), (0.365, 1.0, 25.0), (0.37, 1.0, 25.0), (0.38, 1.0, 25.0), (0.39, 1.0, 25.0), (0.4, 1.0, 25.0), (0.42, 1.0, 25.0), (0.46, 1.0, 25.0), (0.5, 1.0, 25.0), (0.66, 1.0, 25.0), (1.06, 1.0, 25.0), (1.529, 1.0, 25.0), (2.325, 1.0, 25.0)], 2.019875, -1.0, -1.0, 0, 12.436859, 0, 1.0, 0)
const AL2O3 = Glass(GlassID(AGF, 975), 2, 1.4313493, 0.0052799261, 0.65054713, 0.0142382647, 5.3414021, 325.017834, 0.0, 0.0, 0.0, 0.0, 0.2, 5.5, 1.8e-5, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0, 0.0, -1.0, -1.0, 6.65, -1.0, 0, -1.0, [(0.334, 1.0, 25.0), (0.35, 1.0, 25.0), (0.365, 1.0, 25.0), (0.37, 1.0, 25.0), (0.38, 1.0, 25.0), (0.39, 1.0, 25.0), (0.4, 1.0, 25.0), (0.42, 1.0, 25.0), (0.46, 1.0, 25.0), (0.5, 1.0, 25.0), (0.66, 1.0, 25.0), (1.06, 1.0, 25.0), (1.529, 1.0, 25.0), (2.325, 1.0, 25.0)], 1.768172, -1.0, -1.0, 0, 72.308589, 0, 1.0, 0)
const PBMOO4 = Glass(GlassID(AGF, 976), 2, 3.54642, 0.0342916324, 0.5827, 0.11400077, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.44, 1.08, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0, 0.0, -1.0, -1.0, 0.0, -1.0, 0, -1.0, [(0.334, 1.0, 25.0), (0.35, 1.0, 25.0), (0.365, 1.0, 25.0), (0.37, 1.0, 25.0), (0.38, 1.0, 25.0), (0.39, 1.0, 25.0), (0.4, 1.0, 25.0), (0.42, 1.0, 25.0), (0.46, 1.0, 25.0), (0.5, 1.0, 25.0), (0.66, 1.0, 25.0), (1.06, 1.0, 25.0), (1.529, 1.0, 25.0), (2.325, 1.0, 25.0)], 2.40988, -1.0, -1.0, 0, 10.949945, 0, 1.0, 0)
const CUGAS2 = Glass(GlassID(AGF, 977), 9, 3.9064, 2.3065, 0.1149, 1.5479, 738.43, 0.0, 0.0, 0.0, 0.0, 0.0, 0.55, 11.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0, 0.0, -1.0, -1.0, 0.0, -1.0, 0, -1.0, [(0.334, 1.0, 25.0), (0.35, 1.0, 25.0), (0.365, 1.0, 25.0), (0.37, 1.0, 25.0), (0.38, 1.0, 25.0), (0.39, 1.0, 25.0), (0.4, 1.0, 25.0), (0.42, 1.0, 25.0), (0.46, 1.0, 25.0), (0.5, 1.0, 25.0), (0.66, 1.0, 25.0), (1.06, 1.0, 25.0), (1.529, 1.0, 25.0), (2.325, 1.0, 25.0)], 1.0, -1.0, -1.0, 0, 0.0, 0, 1.0, 0)
const SRMOO4 = Glass(GlassID(AGF, 978), 2, 2.4839, 0.02105401, 0.1015, 21.187609, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.45, 2.4, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0, 0.0, -1.0, -1.0, 0.0, -1.0, 0, -1.0, [(0.334, 1.0, 25.0), (0.35, 1.0, 25.0), (0.365, 1.0, 25.0), (0.37, 1.0, 25.0), (0.38, 1.0, 25.0), (0.39, 1.0, 25.0), (0.4, 1.0, 25.0), (0.42, 1.0, 25.0), (0.46, 1.0, 25.0), (0.5, 1.0, 25.0), (0.66, 1.0, 25.0), (1.06, 1.0, 25.0), (1.529, 1.0, 25.0), (2.325, 1.0, 25.0)], 1.908806, -1.0, -1.0, 0, 29.94765, 0, 1.0, 0)
const ADP = Glass(GlassID(AGF, 979), 2, 1.29899, 0.0089232927, 43.17364, 1188.531, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.4, 1.06, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0, 0.0, -1.0, -1.0, 0.0, -1.0, 0, -1.0, [(0.334, 1.0, 25.0), (0.35, 1.0, 25.0), (0.365, 1.0, 25.0), (0.37, 1.0, 25.0), (0.38, 1.0, 25.0), (0.39, 1.0, 25.0), (0.4, 1.0, 25.0), (0.42, 1.0, 25.0), (0.46, 1.0, 25.0), (0.5, 1.0, 25.0), (0.66, 1.0, 25.0), (1.06, 1.0, 25.0), (1.529, 1.0, 25.0), (2.325, 1.0, 25.0)], 1.523454, -1.0, -1.0, 0, 52.25678, 0, 1.0, 0)
const ALN = Glass(GlassID(AGF, 980), 9, 3.1399, 1.3786, 0.02941, 3.861, 225.9009, 0.0, 0.0, 0.0, 0.0, 0.0, 0.22, 5.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0, 0.0, -1.0, -1.0, 0.0, -1.0, 0, -1.0, [(0.334, 1.0, 25.0), (0.35, 1.0, 25.0), (0.365, 1.0, 25.0), (0.37, 1.0, 25.0), (0.38, 1.0, 25.0), (0.39, 1.0, 25.0), (0.4, 1.0, 25.0), (0.42, 1.0, 25.0), (0.46, 1.0, 25.0), (0.5, 1.0, 25.0), (0.66, 1.0, 25.0), (1.06, 1.0, 25.0), (1.529, 1.0, 25.0), (2.325, 1.0, 25.0)], 2.154291, -1.0, -1.0, 0, 50.733102, 0, 1.0, 0)
const BEO = Glass(GlassID(AGF, 981), 2, 1.92274, 0.0062536464, 1.24209, 94.3443116, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.44, 7.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0, 0.0, -1.0, -1.0, 0.0, -1.0, 0, -1.0, [(0.334, 1.0, 25.0), (0.35, 1.0, 25.0), (0.365, 1.0, 25.0), (0.37, 1.0, 25.0), (0.38, 1.0, 25.0), (0.39, 1.0, 25.0), (0.4, 1.0, 25.0), (0.42, 1.0, 25.0), (0.46, 1.0, 25.0), (0.5, 1.0, 25.0), (0.66, 1.0, 25.0), (1.06, 1.0, 25.0), (1.529, 1.0, 25.0), (2.325, 1.0, 25.0)], 1.718619, -1.0, -1.0, 0, 93.251706, 0, 1.0, 0)
const AGGASE2 = Glass(GlassID(AGF, 982), 9, 4.6453, 2.2057, 0.1879, 1.8377, 1600.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.73, 13.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0, 0.0, -1.0, -1.0, 0.0, -1.0, 0, -1.0, [(0.334, 1.0, 25.0), (0.35, 1.0, 25.0), (0.365, 1.0, 25.0), (0.37, 1.0, 25.0), (0.38, 1.0, 25.0), (0.39, 1.0, 25.0), (0.4, 1.0, 25.0), (0.42, 1.0, 25.0), (0.46, 1.0, 25.0), (0.5, 1.0, 25.0), (0.66, 1.0, 25.0), (1.06, 1.0, 25.0), (1.529, 1.0, 25.0), (2.325, 1.0, 25.0)], 1.0, -1.0, -1.0, 0, 0.0, 0, 1.0, 0)
const ZNGEP2 = Glass(GlassID(AGF, 983), 9, 4.4733, 5.2658, 0.1338, 1.4909, 662.55, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 12.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0, 0.0, -1.0, -1.0, 0.0, -1.0, 0, -1.0, [(0.334, 1.0, 25.0), (0.35, 1.0, 25.0), (0.365, 1.0, 25.0), (0.37, 1.0, 25.0), (0.38, 1.0, 25.0), (0.39, 1.0, 25.0), (0.4, 1.0, 25.0), (0.42, 1.0, 25.0), (0.46, 1.0, 25.0), (0.5, 1.0, 25.0), (0.66, 1.0, 25.0), (1.06, 1.0, 25.0), (1.529, 1.0, 25.0), (2.325, 1.0, 25.0)], 1.0, -1.0, -1.0, 0, 0.0, 0, 1.0, 0)
const CDGEAS2 = Glass(GlassID(AGF, 984), 9, 10.1064, 2.2988, 1.0872, 1.6247, 1370.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2.4, 11.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0, 0.0, -1.0, -1.0, 0.0, -1.0, 0, -1.0, [(0.334, 1.0, 25.0), (0.35, 1.0, 25.0), (0.365, 1.0, 25.0), (0.37, 1.0, 25.0), (0.38, 1.0, 25.0), (0.39, 1.0, 25.0), (0.4, 1.0, 25.0), (0.42, 1.0, 25.0), (0.46, 1.0, 25.0), (0.5, 1.0, 25.0), (0.66, 1.0, 25.0), (1.06, 1.0, 25.0), (1.529, 1.0, 25.0), (2.325, 1.0, 25.0)], 1.0, -1.0, -1.0, 0, 0.0, 0, 1.0, 0)
const AGGAS2_E = Glass(GlassID(AGF, 985), 9, 4.0172, 1.5274, 0.131, 2.1699, 950.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.49, 12.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0, 0.0, -1.0, -1.0, 0.0, -1.0, 0, -1.0, [(0.334, 1.0, 25.0), (0.35, 1.0, 25.0), (0.365, 1.0, 25.0), (0.37, 1.0, 25.0), (0.38, 1.0, 25.0), (0.39, 1.0, 25.0), (0.4, 1.0, 25.0), (0.42, 1.0, 25.0), (0.46, 1.0, 25.0), (0.5, 1.0, 25.0), (0.66, 1.0, 25.0), (1.06, 1.0, 25.0), (1.529, 1.0, 25.0), (2.325, 1.0, 25.0)], 1.0, -1.0, -1.0, 0, 0.0, 0, 1.0, 0)
const CALCITE_E = Glass(GlassID(AGF, 986), 2, 1.0856, 0.0062362609, 0.0988, 0.020164, 0.317, 131.515024, 0.0, 0.0, 0.0, 0.0, 0.2, 3.3, 2.59e-5, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0, 0.0, -1.0, -1.0, 0.0, -1.0, 0, -1.0, [(0.334, 1.0, 25.0), (0.35, 1.0, 25.0), (0.365, 1.0, 25.0), (0.37, 1.0, 25.0), (0.38, 1.0, 25.0), (0.39, 1.0, 25.0), (0.4, 1.0, 25.0), (0.42, 1.0, 25.0), (0.46, 1.0, 25.0), (0.5, 1.0, 25.0), (0.66, 1.0, 25.0), (1.06, 1.0, 25.0), (1.529, 1.0, 25.0), (2.325, 1.0, 25.0)], 1.486494, -1.0, -1.0, 0, 79.064587, 0, 2.711, 0)
const CDGEAS2_E = Glass(GlassID(AGF, 987), 9, 11.8018, 1.2152, 2.6971, 1.6922, 1370.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2.4, 11.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0, 0.0, -1.0, -1.0, 0.0, -1.0, 0, -1.0, [(0.334, 1.0, 25.0), (0.35, 1.0, 25.0), (0.365, 1.0, 25.0), (0.37, 1.0, 25.0), (0.38, 1.0, 25.0), (0.39, 1.0, 25.0), (0.4, 1.0, 25.0), (0.42, 1.0, 25.0), (0.46, 1.0, 25.0), (0.5, 1.0, 25.0), (0.66, 1.0, 25.0), (1.06, 1.0, 25.0), (1.529, 1.0, 25.0), (2.325, 1.0, 25.0)], 1.0, -1.0, -1.0, 0, 0.0, 0, 1.0, 0)
const LIO3 = Glass(GlassID(AGF, 988), 9, 2.03132, 1.37623, 0.0350823, 1.06745, 169.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 5.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0, 0.0, -1.0, -1.0, 0.0, -1.0, 0, -1.0, [(0.334, 1.0, 25.0), (0.35, 1.0, 25.0), (0.365, 1.0, 25.0), (0.37, 1.0, 25.0), (0.38, 1.0, 25.0), (0.39, 1.0, 25.0), (0.4, 1.0, 25.0), (0.42, 1.0, 25.0), (0.46, 1.0, 25.0), (0.5, 1.0, 25.0), (0.66, 1.0, 25.0), (1.06, 1.0, 25.0), (1.529, 1.0, 25.0), (2.325, 1.0, 25.0)], 1.0, -1.0, -1.0, 0, 0.0, 0, 1.0, 0)
const ZNO = Glass(GlassID(AGF, 989), 8, 2.81418, 0.87968, 0.09253764, 0.00711, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.45, 4.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0, 0.0, -1.0, -1.0, 6.5, -1.0, 0, -1.0, [(0.334, 1.0, 25.0), (0.35, 1.0, 25.0), (0.365, 1.0, 25.0), (0.37, 1.0, 25.0), (0.38, 1.0, 25.0), (0.39, 1.0, 25.0), (0.4, 1.0, 25.0), (0.42, 1.0, 25.0), (0.46, 1.0, 25.0), (0.5, 1.0, 25.0), (0.66, 1.0, 25.0), (1.06, 1.0, 25.0), (1.529, 1.0, 25.0), (2.325, 1.0, 25.0)], 2.003385, -1.0, -1.0, 0, 12.424016, 0, 1.0, 0)
const AGASS3 = Glass(GlassID(AGF, 990), 7, 7.483, 0.474, 0.09, 0.0019, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.63, 4.6, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0, 0.0, -1.0, -1.0, 0.0, -1.0, 0, -1.0, [(0.334, 1.0, 25.0), (0.35, 1.0, 25.0), (0.365, 1.0, 25.0), (0.37, 1.0, 25.0), (0.38, 1.0, 25.0), (0.39, 1.0, 25.0), (0.4, 1.0, 25.0), (0.42, 1.0, 25.0), (0.46, 1.0, 25.0), (0.5, 1.0, 25.0), (0.66, 1.0, 25.0), (1.06, 1.0, 25.0), (1.529, 1.0, 25.0), (2.325, 1.0, 25.0)], 1.0, -1.0, -1.0, 0, 0.0, 0, 1.0, 0)
const LIO3_E = Glass(GlassID(AGF, 991), 9, 1.83086, 1.08807, 0.031381, 0.554582, 158.76, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 5.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0, 0.0, -1.0, -1.0, 0.0, -1.0, 0, -1.0, [(0.334, 1.0, 25.0), (0.35, 1.0, 25.0), (0.365, 1.0, 25.0), (0.37, 1.0, 25.0), (0.38, 1.0, 25.0), (0.39, 1.0, 25.0), (0.4, 1.0, 25.0), (0.42, 1.0, 25.0), (0.46, 1.0, 25.0), (0.5, 1.0, 25.0), (0.66, 1.0, 25.0), (1.06, 1.0, 25.0), (1.529, 1.0, 25.0), (2.325, 1.0, 25.0)], 1.0, -1.0, -1.0, 0, 0.0, 0, 1.0, 0)
const LINBO3 = Glass(GlassID(AGF, 992), 9, 2.39198, 2.51118, 0.047089, 7.1333, 272.316004, 0.0, 0.0, 0.0, 0.0, 0.0, 0.4, 3.1, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0, 0.0, -1.0, -1.0, 0.0, -1.0, 0, -1.0, [(0.334, 1.0, 25.0), (0.35, 1.0, 25.0), (0.365, 1.0, 25.0), (0.37, 1.0, 25.0), (0.38, 1.0, 25.0), (0.39, 1.0, 25.0), (0.4, 1.0, 25.0), (0.42, 1.0, 25.0), (0.46, 1.0, 25.0), (0.5, 1.0, 25.0), (0.66, 1.0, 25.0), (1.06, 1.0, 25.0), (1.529, 1.0, 25.0), (2.325, 1.0, 25.0)], 2.300158, -1.0, -1.0, 0, 18.711921, 0, 1.0, 0)
const QUARTZ = Glass(GlassID(AGF, 993), 1, 2.35676495, -0.0113996924, 0.0108741656, 3.32066914e-5, 1.08609346e-5, -3.10123984e-7, 0.0, 0.0, 0.0, 0.0, 0.18, 0.71, -1.487e-5, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0, 0.0, -1.0, -1.0, 0.0, -1.0, 0, -1.0, [(0.334, 1.0, 25.0), (0.35, 1.0, 25.0), (0.365, 1.0, 25.0), (0.37, 1.0, 25.0), (0.38, 1.0, 25.0), (0.39, 1.0, 25.0), (0.4, 1.0, 25.0), (0.42, 1.0, 25.0), (0.46, 1.0, 25.0), (0.5, 1.0, 25.0), (0.66, 1.0, 25.0), (1.06, 1.0, 25.0), (1.529, 1.0, 25.0), (2.325, 1.0, 25.0)], 1.544296, -1.0, -1.0, 0, 70.132045, 0, 0.0, 0)
const BEO_E = Glass(GlassID(AGF, 994), 2, 1.96939, 0.00737881, 1.67389, 109.824112, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.44, 7.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0, 0.0, -1.0, -1.0, 0.0, -1.0, 0, -1.0, [(0.334, 1.0, 25.0), (0.35, 1.0, 25.0), (0.365, 1.0, 25.0), (0.37, 1.0, 25.0), (0.38, 1.0, 25.0), (0.39, 1.0, 25.0), (0.4, 1.0, 25.0), (0.42, 1.0, 25.0), (0.46, 1.0, 25.0), (0.5, 1.0, 25.0), (0.66, 1.0, 25.0), (1.06, 1.0, 25.0), (1.529, 1.0, 25.0), (2.325, 1.0, 25.0)], 1.734106, -1.0, -1.0, 0, 79.335058, 0, 1.0, 0)
const AGGASE2_E = Glass(GlassID(AGF, 995), 9, 5.2912, 1.397, 0.2845, 1.9282, 1600.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.73, 13.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0, 0.0, -1.0, -1.0, 0.0, -1.0, 0, -1.0, [(0.334, 1.0, 25.0), (0.35, 1.0, 25.0), (0.365, 1.0, 25.0), (0.37, 1.0, 25.0), (0.38, 1.0, 25.0), (0.39, 1.0, 25.0), (0.4, 1.0, 25.0), (0.42, 1.0, 25.0), (0.46, 1.0, 25.0), (0.5, 1.0, 25.0), (0.66, 1.0, 25.0), (1.06, 1.0, 25.0), (1.529, 1.0, 25.0), (2.325, 1.0, 25.0)], 1.0, -1.0, -1.0, 0, 0.0, 0, 1.0, 0)
const YVO4_E = Glass(GlassID(AGF, 996), 7, 4.59905, 0.110534, 0.04813, 0.0122676, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.63, 1.55, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0, 0.0, -1.0, -1.0, 0.0, -1.0, 0, -1.0, [], 1.0, -1.0, -1.0, 0, 0.0, 0, 1.0, 0)
end # module