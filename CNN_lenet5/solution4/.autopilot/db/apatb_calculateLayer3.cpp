#include "hls_signal_handler.h"
#include <algorithm>
#include <complex>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <exception>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <map>
#include "ap_fixed.h"
#include "ap_int.h"
#include "autopilot_cbe.h"
#include "hls_half.h"
#include "hls_stream.h"

using namespace std;

// wrapc file define:
#define AUTOTB_TVIN_Layer2_Neurons_CPU "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Neurons_CPU.dat"
#define AUTOTB_TVOUT_Layer2_Neurons_CPU "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Neurons_CPU.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_0 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_0.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_0 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_0.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_1 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_1.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_1 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_1.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_2 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_2.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_2 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_2.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_3 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_3.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_3 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_3.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_4 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_4.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_4 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_4.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_5 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_5.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_5 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_5.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_6 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_6.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_6 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_6.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_7 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_7.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_7 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_7.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_8 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_8.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_8 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_8.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_9 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_9.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_9 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_9.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_10 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_10.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_10 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_10.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_11 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_11.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_11 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_11.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_12 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_12.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_12 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_12.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_13 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_13.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_13 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_13.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_14 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_14.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_14 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_14.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_15 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_15.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_15 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_15.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_16 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_16.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_16 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_16.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_17 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_17.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_17 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_17.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_18 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_18.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_18 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_18.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_19 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_19.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_19 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_19.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_20 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_20.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_20 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_20.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_21 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_21.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_21 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_21.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_22 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_22.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_22 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_22.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_23 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_23.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_23 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_23.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_24 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_24.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_24 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_24.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_25 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_25.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_25 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_25.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_26 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_26.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_26 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_26.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_27 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_27.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_27 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_27.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_28 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_28.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_28 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_28.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_29 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_29.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_29 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_29.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_30 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_30.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_30 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_30.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_31 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_31.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_31 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_31.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_32 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_32.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_32 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_32.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_33 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_33.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_33 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_33.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_34 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_34.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_34 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_34.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_35 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_35.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_35 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_35.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_36 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_36.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_36 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_36.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_37 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_37.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_37 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_37.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_38 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_38.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_38 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_38.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_39 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_39.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_39 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_39.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_40 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_40.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_40 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_40.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_41 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_41.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_41 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_41.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_42 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_42.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_42 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_42.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_43 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_43.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_43 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_43.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_44 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_44.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_44 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_44.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_45 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_45.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_45 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_45.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_46 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_46.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_46 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_46.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_47 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_47.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_47 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_47.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_48 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_48.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_48 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_48.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_49 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_49.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_49 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_49.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_50 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_50.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_50 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_50.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_51 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_51.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_51 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_51.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_52 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_52.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_52 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_52.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_53 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_53.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_53 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_53.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_54 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_54.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_54 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_54.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_55 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_55.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_55 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_55.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_56 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_56.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_56 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_56.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_57 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_57.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_57 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_57.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_58 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_58.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_58 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_58.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_59 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_59.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_59 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_59.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_60 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_60.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_60 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_60.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_61 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_61.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_61 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_61.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_62 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_62.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_62 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_62.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_63 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_63.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_63 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_63.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_64 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_64.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_64 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_64.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_65 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_65.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_65 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_65.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_66 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_66.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_66 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_66.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_67 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_67.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_67 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_67.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_68 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_68.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_68 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_68.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_69 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_69.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_69 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_69.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_70 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_70.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_70 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_70.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_71 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_71.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_71 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_71.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_72 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_72.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_72 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_72.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_73 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_73.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_73 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_73.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_74 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_74.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_74 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_74.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_75 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_75.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_75 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_75.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_76 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_76.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_76 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_76.dat"
#define AUTOTB_TVIN_Layer2_Weights_CPU_77 "../tv/cdatafile/c.calculateLayer3.autotvin_Layer2_Weights_CPU_77.dat"
#define AUTOTB_TVOUT_Layer2_Weights_CPU_77 "../tv/cdatafile/c.calculateLayer3.autotvout_Layer2_Weights_CPU_77.dat"
#define AUTOTB_TVIN_Layer3_Neurons_CPU "../tv/cdatafile/c.calculateLayer3.autotvin_Layer3_Neurons_CPU.dat"
#define AUTOTB_TVOUT_Layer3_Neurons_CPU "../tv/cdatafile/c.calculateLayer3.autotvout_Layer3_Neurons_CPU.dat"


// tvout file define:
#define AUTOTB_TVOUT_PC_Layer3_Neurons_CPU "../tv/rtldatafile/rtl.calculateLayer3.autotvout_Layer3_Neurons_CPU.dat"


namespace hls::sim
{
  template<size_t n>
  struct Byte {
    unsigned char a[n];

    Byte()
    {
      for (size_t i = 0; i < n; ++i) {
        a[i] = 0;
      }
    }

    template<typename T>
    Byte<n>& operator= (const T &val)
    {
      std::memcpy(a, &val, n);
      return *this;
    }
  };

  struct SimException : public std::exception {
    const std::string msg;
    const size_t line;
    SimException(const std::string &msg, const size_t line)
      : msg(msg), line(line)
    {
    }
  };

  void errExit(const size_t line, const std::string &msg)
  {
    std::string s;
    s += "ERROR";
//  s += '(';
//  s += __FILE__;
//  s += ":";
//  s += std::to_string(line);
//  s += ')';
    s += ": ";
    s += msg;
    s += "\n";
    fputs(s.c_str(), stderr);
    exit(1);
  }
}

namespace hls::sim
{
  size_t divide_ceil(size_t a, size_t b)
  {
    return (a + b - 1) / b;
  }

  const bool little_endian()
  {
    int a = 1;
    return *(char*)&a == 1;
  }

  inline void rev_endian(unsigned char *p, size_t nbytes)
  {
    std::reverse(p, p+nbytes);
  }

  const bool LE = little_endian();

  inline size_t least_nbyte(size_t width)
  {
    return (width+7)>>3;
  }

  std::string formatData(unsigned char *pos, size_t wbits)
  {
    size_t wbytes = least_nbyte(wbits);
    size_t i = LE ? wbytes-1 : 0;
    auto next = [&] () {
      auto c = pos[i];
      LE ? --i : ++i;
      return c;
    };
    std::ostringstream ss;
    ss << "0x";
    if (int t = (wbits & 0x7)) {
      if (t <= 4) {
        unsigned char mask = (1<<t)-1;
        ss << std::hex << std::setfill('0') << std::setw(1)
           << (int) (next() & mask);
        wbytes -= 1;
      }
    }
    for (size_t i = 0; i < wbytes; ++i) {
      ss << std::hex << std::setfill('0') << std::setw(2) << (int)next();
    }
    return ss.str();
  }

  char ord(char c)
  {
    if (c >= 'a' && c <= 'f') {
      return c-'a'+10;
    } else if (c >= 'A' && c <= 'F') {
      return c-'A'+10;
    } else if (c >= '0' && c <= '9') {
      return c-'0';
    } else {
      throw SimException("Not Hexdecimal Digit", __LINE__);
    }
  }

  void unformatData(const char *data, unsigned char *put, size_t pbytes = 0)
  {
    size_t nchars = strlen(data+2);
    size_t nbytes = (nchars+1)>>1;
    if (pbytes == 0) {
      pbytes = nbytes;
    } else if (pbytes > nbytes) {
      throw SimException("Wrong size specified", __LINE__);
    }
    put = LE ? put : put+pbytes-1;
    auto nextp = [&] () {
      return LE ? put++ : put--;
    };
    const char *c = data + (nchars + 2) - 1;
    auto next = [&] () {
      char res { *c == 'x' ? (char)0 : ord(*c) };
      --c;
      return res;
    };
    for (size_t i = 0; i < pbytes; ++i) {
      char l = next();
      char h = next();
      *nextp() = (h<<4)+l;
    }
  }

  char* strip(char *s)
  {
    while (isspace(*s)) {
      ++s;
    }
    for (char *p = s+strlen(s)-1; p >= s; --p) {
      if (isspace(*p)) {
        *p = 0;
      } else {
        return s;
      }
    }
    return s;
  }

  size_t sum(const std::vector<size_t> &v)
  {
    size_t res = 0;
    for (const auto &e : v) {
      res += e;
    }
    return res;
  }

  const char* bad = "Bad TV file";
  const char* err = "Error on TV file";

  const unsigned char bmark[] = {
    0x5a, 0x5a, 0xa5, 0xa5, 0x0f, 0x0f, 0xf0, 0xf0
  };

#ifdef USE_BINARY_TV_FILE
  class Input {
    FILE *fp;
    long pos;

    void read(unsigned char *buf, size_t size)
    {
      if (fread(buf, size, 1, fp) != 1) {
        throw SimException(bad, __LINE__);
      }
      if (LE) {
        rev_endian(buf, size);
      }
    }

  public:
    void advance(size_t nbytes)
    {
      if (fseek(fp, nbytes, SEEK_CUR) == -1) {
        throw SimException(bad, __LINE__);
      }
    }

    Input(const char *path) : fp(nullptr)
    {
      fp = fopen(path, "rb");
      if (fp == nullptr) {
        errExit(__LINE__, err);
      }
    }

    void begin()
    {
      advance(8);
      pos = ftell(fp);
    }

    void reset()
    {
      fseek(fp, pos, SEEK_SET);
    }

    void into(unsigned char *param, size_t wbytes, size_t asize, size_t nbytes)
    {
      size_t n = nbytes / asize;
      size_t r = nbytes % asize;
      for (size_t i = 0; i < n; ++i) {
        read(param, wbytes);
        param += asize;
      }
      if (r > 0) {
        advance(asize-r);
        read(param, r);
      }
    }

    ~Input()
    {
      unsigned char buf[8];
      size_t res = fread(buf, 8, 1, fp);
      fclose(fp);
      if (res != 1) {
        errExit(__LINE__, bad);
      }
      if (std::memcmp(buf, bmark, 8) != 0) {
        errExit(__LINE__, bad);
      }
    }
  };

  class Output {
    FILE *fp;

    void write(unsigned char *buf, size_t size)
    {
      if (LE) {
        rev_endian(buf, size);
      }
      if (fwrite(buf, size, 1, fp) != 1) {
        throw SimException(err, __LINE__);
      }
      if (LE) {
        rev_endian(buf, size);
      }
    }

  public:
    Output(const char *path) : fp(nullptr)
    {
      fp = fopen(path, "wb");
      if (fp == nullptr) {
        errExit(__LINE__, err);
      }
    }

    void begin(size_t total)
    {
      unsigned char buf[8] = {0};
      std::memcpy(buf, &total, sizeof(buf));
      write(buf, sizeof(buf));
    }

    void from(unsigned char *param, size_t wbytes, size_t asize, size_t nbytes, size_t skip)
    {
      param -= asize*skip;
      size_t n = divide_ceil(nbytes, asize);
      for (size_t i = 0; i < n; ++i) {
        write(param, wbytes);
        param += asize;
      }
    }

    ~Output()
    {
      size_t res = fwrite(bmark, 8, 1, fp);
      fclose(fp);
      if (res != 1) {
        errExit(__LINE__, err);
      }
    }
  };
#endif

  class Reader {
    FILE *fp;
    long pos;
    int size;
    char *s;

    void readline()
    {
      s = fgets(s, size, fp);
      if (s == nullptr) {
        throw SimException(bad, __LINE__);
      }
    }

  public:
    Reader(const char *path) : fp(nullptr), size(1<<12), s(new char[size])
    {
      try {
        fp = fopen(path, "r");
        if (fp == nullptr) {
          throw SimException(err, __LINE__);
        } else {
          readline();
          static const char mark[] = "[[[runtime]]]\n";
          if (strcmp(s, mark) != 0) {
            throw SimException(bad, __LINE__);
          }
        }
      } catch (const hls::sim::SimException &e) {
        errExit(e.line, e.msg);
      }
    }

    ~Reader()
    {
      fclose(fp);
      delete[] s;
    }

    void begin()
    {
      readline();
      static const char mark[] = "[[transaction]]";
      if (strncmp(s, mark, strlen(mark)) != 0) {
        throw SimException(bad, __LINE__);
      }
      pos = ftell(fp);
    }

    void reset()
    {
      fseek(fp, pos, SEEK_SET);
    }

    void skip(size_t n)
    {
      for (size_t i = 0; i < n; ++i) {
        readline();
      }
    }

    char* next()
    {
      long pos = ftell(fp);
      readline();
      if (*s == '[') {
        fseek(fp, pos, SEEK_SET);
        return nullptr;
      }
      return strip(s);
    }

    void end()
    {
      do {
        readline();
      } while (strcmp(s, "[[/transaction]]\n") != 0);
    }
  };

  class Writer {
    FILE *fp;

    void write(const char *s)
    {
      if (fputs(s, fp) == EOF) {
        throw SimException(err, __LINE__);
      }
    }

  public:
    Writer(const char *path) : fp(nullptr)
    {
      try {
        fp = fopen(path, "w");
        if (fp == nullptr) {
          throw SimException(err, __LINE__);
        } else {
          static const char mark[] = "[[[runtime]]]\n";
          write(mark);
        }
      } catch (const hls::sim::SimException &e) {
        errExit(e.line, e.msg);
      }
    }

    virtual ~Writer()
    {
      try {
        static const char mark[] = "[[[/runtime]]]\n";
        write(mark);
      } catch (const hls::sim::SimException &e) {
        errExit(e.line, e.msg);
      }
      fclose(fp);
    }

    void begin(size_t AESL_transaction)
    {
      static const char mark[] = "[[transaction]]           ";
      write(mark);
      auto buf = std::to_string(AESL_transaction);
      buf.push_back('\n');
      buf.push_back('\0');
      write(buf.data());
    }

    void next(const char *s)
    {
      write(s);
      write("\n");
    }

    void end()
    {
      static const char mark[] = "[[/transaction]]\n";
      write(mark);
    }
  };

  bool RTLOutputCheckAndReplacement(char *data)
  {
    bool changed = false;
    for (size_t i = 2; i < strlen(data); ++i) {
      if (data[i] == 'X' || data[i] == 'x') {
        data[i] = '0';
        changed = true;
      }
    }
    return changed;
  }

  void warnOnX()
  {
    static const char msg[] =
      "WARNING: [SIM 212-201] RTL produces unknown value "
      "'x' or 'X' on some port, possible cause: "
      "There are uninitialized variables in the design.\n";
    fprintf(stderr, msg);
  }

#ifndef POST_CHECK
  class RefTCL {
    FILE *fp;
    std::ostringstream ss;

    void formatDepth()
    {
      ss << "set depth_list {\n";
      for (auto &p : depth) {
        ss << "  {" << p.first << " " << p.second << "}\n";
      }
      if (nameHBM != "") {
        ss << "  {" << nameHBM << " " << depthHBM << "}\n";
      }
      ss << "}\n";
    }

    void formatTransNum()
    {
      ss << "set trans_num " << AESL_transaction << "\n";
    }

    void formatHBM()
    {
      ss << "set HBM_ArgDict {\n"
         << "  Name " << nameHBM << "\n"
         << "  Port " << portHBM << "\n"
         << "  BitWidth " << widthHBM << "\n"
         << "}\n";
    }

    void close()
    {
      formatDepth();
      formatTransNum();
      if (nameHBM != "") {
        formatHBM();
      }
      std::string &&s { ss.str() };
      size_t res = fwrite(s.data(), s.size(), 1, fp);
      fclose(fp);
      if (res != 1) {
        errExit(__LINE__, err);
      }
    }

  public:
    std::map<const std::string, size_t> depth;
    std::string nameHBM;
    size_t depthHBM;
    std::string portHBM;
    unsigned widthHBM;
    size_t AESL_transaction;
    std::mutex mut;

    RefTCL(const char *path)
    {
      fp = fopen(path, "w");
      if (fp == nullptr) {
        errExit(__LINE__, err);
      }
    }

    void set(const char* name, size_t dep)
    {
      std::lock_guard<std::mutex> guard(mut);
      if (depth[name] < dep) {
        depth[name] = dep;
      }
    }

    ~RefTCL()
    {
      close();
    }
  };

#endif

  struct Register {
    const char* name;
    unsigned width;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* owriter;
    Writer* iwriter;
#endif
    void* param;

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      if (strcmp(name, "return") == 0) {
        tcl.set("ap_return", 1);
      } else {
        tcl.set(name, 1);
      }
    }
#endif
    ~Register()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete owriter;
      delete iwriter;
#endif
    }
  };

  template<typename Reader, typename Writer>
  struct Memory {
    unsigned width;
    unsigned asize;
    bool hbm;
    std::vector<const char*> name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* owriter;
    Writer* iwriter;
#endif
    std::vector<void*> param;
    std::vector<size_t> nbytes;
    std::vector<size_t> offset;
    std::vector<bool> hasWrite;

    size_t depth()
    {
      size_t depth = 0;
      for (size_t n : nbytes) {
        depth += divide_ceil(n, asize);
      }
      return depth;
    }

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      if (hbm) {
        tcl.nameHBM.append(name[0]);
        tcl.portHBM.append("{").append(name[0]);
        for (size_t i = 1; i < name.size(); ++i) {
          tcl.nameHBM.append("_").append(name[i]);
          tcl.portHBM.append(" ").append(name[i]);
        }
        tcl.nameHBM.append("_HBM");
        tcl.portHBM.append("}");
        tcl.widthHBM = width;
        tcl.depthHBM = divide_ceil(nbytes[0], asize);
      } else {
        tcl.set(name[0], depth());
      }
    }
#endif

    ~Memory()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete owriter;
      delete iwriter;
#endif
    }
  };

  struct A2Stream {
    unsigned width;
    unsigned asize;
    const char* name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* owriter;
    Writer* iwriter;
#endif
    void* param;
    size_t nbytes;
    bool hasWrite;

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      tcl.set(name, divide_ceil(nbytes, asize));
    }
#endif

    ~A2Stream()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete owriter;
      delete iwriter;
#endif
    }
  };

  template<typename E>
  struct Stream {
    unsigned width;
    const char* name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* writer;
    Writer* swriter;
    Writer* gwriter;
#endif
    hls::stream<E>* param;
    std::vector<E> buf;
    size_t initSize;
    size_t depth;
    bool hasWrite;

    void markSize()
    {
      initSize = param->size();
    }

    void buffer()
    {
      buf.clear();
      while (!param->empty()) {
        buf.push_back(param->read());
      }
      for (auto &e : buf) {
        param->write(e);
      }
    }

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      tcl.set(name, depth);
    }
#endif

    ~Stream()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete writer;
      delete swriter;
      delete gwriter;
#endif
    }
  };

#ifdef POST_CHECK
  void check(Register &port)
  {
    port.reader->begin();
    bool foundX = false;
    if (char *s = port.reader->next()) {
      foundX |= RTLOutputCheckAndReplacement(s);
      unformatData(s, (unsigned char*)port.param);
    }
    port.reader->end();
    if (foundX) {
      warnOnX();
    }
  }

#ifdef USE_BINARY_TV_FILE
  void checkHBM(Memory<Input, Output> &port)
  {
    port.reader->begin();
    size_t wbytes = least_nbyte(port.width);
    for (size_t i = 0; i < port.param.size(); ++i) {
      if (port.hasWrite[i]) {
        port.reader->reset();
        size_t skip = wbytes * port.offset[i];
        port.reader->advance(skip);
        port.reader->into((unsigned char*)port.param[i], wbytes,
                           port.asize, port.nbytes[i] - skip);
      }
    }
  }

  void check(Memory<Input, Output> &port)
  {
    if (port.hbm) {
      return checkHBM(port);
    } else {
      port.reader->begin();
      size_t wbytes = least_nbyte(port.width);
      for (size_t i = 0; i < port.param.size(); ++i) {
        if (port.hasWrite[i]) {
          port.reader->into((unsigned char*)port.param[i], wbytes,
                             port.asize, port.nbytes[i]);
        } else {
          size_t n = divide_ceil(port.nbytes[i], port.asize);
          port.reader->advance(port.asize*n);
        }
      }
    }
  }
#endif
  void transfer(Reader *reader, size_t nbytes, unsigned char *put, bool &foundX)
  {
    if (char *s = reader->next()) {
      foundX |= RTLOutputCheckAndReplacement(s);
      unformatData(s, put, nbytes);
    } else {
      throw SimException("No more data", __LINE__);
    }
  }

  void checkHBM(Memory<Reader, Writer> &port)
  {
    port.reader->begin();
    bool foundX = false;
    size_t wbytes = least_nbyte(port.width);
    for (size_t i = 0, last = port.param.size()-1; i <= last; ++i) {
      if (port.hasWrite[i]) {
        port.reader->skip(port.offset[i]);
        size_t n = port.nbytes[i] / port.asize - port.offset[i];
        unsigned char *put = (unsigned char*)port.param[i];
        for (size_t j = 0; j < n; ++j) {
          transfer(port.reader, wbytes, put, foundX);
          put += port.asize;
        }
        if (i < last) {
          port.reader->reset();
        }
      }
    }
    port.reader->end();
    if (foundX) {
      warnOnX();
    }
  }

  void check(Memory<Reader, Writer> &port)
  {
    if (port.hbm) {
      return checkHBM(port);
    } else {
      port.reader->begin();
      bool foundX = false;
      size_t wbytes = least_nbyte(port.width);
      for (size_t i = 0; i < port.param.size(); ++i) {
        if (port.hasWrite[i]) {
          size_t n = port.nbytes[i] / port.asize;
          size_t r = port.nbytes[i] % port.asize;
          unsigned char *put = (unsigned char*)port.param[i];
          for (size_t j = 0; j < n; ++j) {
            transfer(port.reader, wbytes, put, foundX);
            put += port.asize;
          }
          if (r > 0) {
            transfer(port.reader, r, put, foundX);
          }
        } else {
          size_t n = divide_ceil(port.nbytes[i], port.asize);
          port.reader->skip(n);
        }
      }
      port.reader->end();
      if (foundX) {
        warnOnX();
      }
    }
  }

  void check(A2Stream &port)
  {
    port.reader->begin();
    bool foundX = false;
    if (port.hasWrite) {
      size_t wbytes = least_nbyte(port.width);
      size_t n = port.nbytes / port.asize;
      size_t r = port.nbytes % port.asize;
      unsigned char *put = (unsigned char*)port.param;
      for (size_t j = 0; j < n; ++j) {
        if (char *s = port.reader->next()) {
          foundX |= RTLOutputCheckAndReplacement(s);
          unformatData(s, put, wbytes);
        }
        put += port.asize;
      }
      if (r > 0) {
        if (char *s = port.reader->next()) {
          foundX |= RTLOutputCheckAndReplacement(s);
          unformatData(s, put, r);
        }
      }
    }
    port.reader->end();
    if (foundX) {
      warnOnX();
    }
  }

  template<typename E>
  void check(Stream<E> &port)
  {
    if (port.hasWrite) {
      port.reader->begin();
      bool foundX = false;
      E *p = new E;
      while (char *s = port.reader->next()) {
        foundX |= RTLOutputCheckAndReplacement(s);
        unformatData(s, (unsigned char*)p);
        port.param->write(*p);
      }
      delete p;
      port.reader->end();
      if (foundX) {
        warnOnX();
      }
    } else {
      port.reader->begin();
      size_t n = 0;
      if (char *s = port.reader->next()) {
        std::istringstream ss(s);
        ss >> n;
      } else {
        throw SimException(bad, __LINE__);
      }
      port.reader->end();
      for (size_t j = 0; j < n; ++j) {
        port.param->read();
      }
    }
  }
#else
  void dump(Register &port, Writer *writer, size_t AESL_transaction)
  {
    writer->begin(AESL_transaction);
    std::string &&s { formatData((unsigned char*)port.param, port.width) };
    writer->next(s.data());
    writer->end();
  }

  void error_on_depth_unspecified(const char *portName)
  {
    std::string msg {"A depth specification is required for MAXI interface port "};
    msg.append("'");
    msg.append(portName);
    msg.append("'");
    msg.append(" for cosimulation.");
    throw SimException(msg, __LINE__);
  }

#ifdef USE_BINARY_TV_FILE
  void dump(Memory<Input, Output> &port, Output *writer, size_t AESL_transaction)
  {
    writer->begin(port.depth());
    size_t wbytes = least_nbyte(port.width);
    for (size_t i = 0; i < port.param.size(); ++i) {
      if (port.nbytes[i] == 0) {
        error_on_depth_unspecified(port.hbm ? port.name[i] : port.name[0]);
      }
      writer->from((unsigned char*)port.param[i], wbytes, port.asize,
                   port.nbytes[i], 0);
    }
  }

#endif
  void dump(Memory<Reader, Writer> &port, Writer *writer, size_t AESL_transaction)
  {
    writer->begin(AESL_transaction);
    for (size_t i = 0; i < port.param.size(); ++i) {
      if (port.nbytes[i] == 0) {
        error_on_depth_unspecified(port.hbm ? port.name[i] : port.name[0]);
      }
      size_t n = divide_ceil(port.nbytes[i], port.asize);
      unsigned char *put = (unsigned char*)port.param[i];
      for (size_t j = 0; j < n; ++j) {
        std::string &&s {
          formatData(put, port.width)
        };
        writer->next(s.data());
        put += port.asize;
      }
      if (port.hbm) {
        break;
      }
    }
    writer->end();
  }

  void dump(A2Stream &port, Writer *writer, size_t AESL_transaction)
  {
    writer->begin(AESL_transaction);
    size_t n = divide_ceil(port.nbytes, port.asize);
    unsigned char *put = (unsigned char*)port.param;
    for (size_t j = 0; j < n; ++j) {
      std::string &&s { formatData(put, port.width) };
      writer->next(s.data());
      put += port.asize;
    }
    writer->end();
  }

  template<typename E>
  void dump(Stream<E> &port, size_t AESL_transaction)
  {
    if (port.hasWrite) {
      port.writer->begin(AESL_transaction);
      port.depth = port.param->size()-port.initSize;
      for (size_t j = 0; j < port.depth; ++j) {
        std::string &&s {
          formatData((unsigned char*)&port.buf[port.initSize+j], port.width)
        };
        port.writer->next(s.c_str());
      }
      port.writer->end();

      port.swriter->begin(AESL_transaction);
      port.swriter->next(std::to_string(port.depth).c_str());
      port.swriter->end();
    } else {
      port.writer->begin(AESL_transaction);
      port.depth = port.initSize-port.param->size();
      for (size_t j = 0; j < port.depth; ++j) {
        std::string &&s {
          formatData((unsigned char*)&port.buf[j], port.width)
        };
        port.writer->next(s.c_str());
      }
      port.writer->end();

      port.swriter->begin(AESL_transaction);
      port.swriter->next(std::to_string(port.depth).c_str());
      port.swriter->end();

      port.gwriter->begin(AESL_transaction);
      size_t n = (port.depth ? port.initSize : port.depth);
      size_t d = port.depth;
      do {
        port.gwriter->next(std::to_string(n--).c_str());
      } while (d--);
      port.gwriter->end();
    }
  }
#endif
}



extern "C"
void calculateLayer3_hw_stub_wrapper(void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*);

extern "C"
void apatb_calculateLayer3_hw(void* __xlx_apatb_param_Layer2_Neurons_CPU, void* __xlx_apatb_param_Layer2_Weights_CPU_0, void* __xlx_apatb_param_Layer2_Weights_CPU_1, void* __xlx_apatb_param_Layer2_Weights_CPU_2, void* __xlx_apatb_param_Layer2_Weights_CPU_3, void* __xlx_apatb_param_Layer2_Weights_CPU_4, void* __xlx_apatb_param_Layer2_Weights_CPU_5, void* __xlx_apatb_param_Layer2_Weights_CPU_6, void* __xlx_apatb_param_Layer2_Weights_CPU_7, void* __xlx_apatb_param_Layer2_Weights_CPU_8, void* __xlx_apatb_param_Layer2_Weights_CPU_9, void* __xlx_apatb_param_Layer2_Weights_CPU_10, void* __xlx_apatb_param_Layer2_Weights_CPU_11, void* __xlx_apatb_param_Layer2_Weights_CPU_12, void* __xlx_apatb_param_Layer2_Weights_CPU_13, void* __xlx_apatb_param_Layer2_Weights_CPU_14, void* __xlx_apatb_param_Layer2_Weights_CPU_15, void* __xlx_apatb_param_Layer2_Weights_CPU_16, void* __xlx_apatb_param_Layer2_Weights_CPU_17, void* __xlx_apatb_param_Layer2_Weights_CPU_18, void* __xlx_apatb_param_Layer2_Weights_CPU_19, void* __xlx_apatb_param_Layer2_Weights_CPU_20, void* __xlx_apatb_param_Layer2_Weights_CPU_21, void* __xlx_apatb_param_Layer2_Weights_CPU_22, void* __xlx_apatb_param_Layer2_Weights_CPU_23, void* __xlx_apatb_param_Layer2_Weights_CPU_24, void* __xlx_apatb_param_Layer2_Weights_CPU_25, void* __xlx_apatb_param_Layer2_Weights_CPU_26, void* __xlx_apatb_param_Layer2_Weights_CPU_27, void* __xlx_apatb_param_Layer2_Weights_CPU_28, void* __xlx_apatb_param_Layer2_Weights_CPU_29, void* __xlx_apatb_param_Layer2_Weights_CPU_30, void* __xlx_apatb_param_Layer2_Weights_CPU_31, void* __xlx_apatb_param_Layer2_Weights_CPU_32, void* __xlx_apatb_param_Layer2_Weights_CPU_33, void* __xlx_apatb_param_Layer2_Weights_CPU_34, void* __xlx_apatb_param_Layer2_Weights_CPU_35, void* __xlx_apatb_param_Layer2_Weights_CPU_36, void* __xlx_apatb_param_Layer2_Weights_CPU_37, void* __xlx_apatb_param_Layer2_Weights_CPU_38, void* __xlx_apatb_param_Layer2_Weights_CPU_39, void* __xlx_apatb_param_Layer2_Weights_CPU_40, void* __xlx_apatb_param_Layer2_Weights_CPU_41, void* __xlx_apatb_param_Layer2_Weights_CPU_42, void* __xlx_apatb_param_Layer2_Weights_CPU_43, void* __xlx_apatb_param_Layer2_Weights_CPU_44, void* __xlx_apatb_param_Layer2_Weights_CPU_45, void* __xlx_apatb_param_Layer2_Weights_CPU_46, void* __xlx_apatb_param_Layer2_Weights_CPU_47, void* __xlx_apatb_param_Layer2_Weights_CPU_48, void* __xlx_apatb_param_Layer2_Weights_CPU_49, void* __xlx_apatb_param_Layer2_Weights_CPU_50, void* __xlx_apatb_param_Layer2_Weights_CPU_51, void* __xlx_apatb_param_Layer2_Weights_CPU_52, void* __xlx_apatb_param_Layer2_Weights_CPU_53, void* __xlx_apatb_param_Layer2_Weights_CPU_54, void* __xlx_apatb_param_Layer2_Weights_CPU_55, void* __xlx_apatb_param_Layer2_Weights_CPU_56, void* __xlx_apatb_param_Layer2_Weights_CPU_57, void* __xlx_apatb_param_Layer2_Weights_CPU_58, void* __xlx_apatb_param_Layer2_Weights_CPU_59, void* __xlx_apatb_param_Layer2_Weights_CPU_60, void* __xlx_apatb_param_Layer2_Weights_CPU_61, void* __xlx_apatb_param_Layer2_Weights_CPU_62, void* __xlx_apatb_param_Layer2_Weights_CPU_63, void* __xlx_apatb_param_Layer2_Weights_CPU_64, void* __xlx_apatb_param_Layer2_Weights_CPU_65, void* __xlx_apatb_param_Layer2_Weights_CPU_66, void* __xlx_apatb_param_Layer2_Weights_CPU_67, void* __xlx_apatb_param_Layer2_Weights_CPU_68, void* __xlx_apatb_param_Layer2_Weights_CPU_69, void* __xlx_apatb_param_Layer2_Weights_CPU_70, void* __xlx_apatb_param_Layer2_Weights_CPU_71, void* __xlx_apatb_param_Layer2_Weights_CPU_72, void* __xlx_apatb_param_Layer2_Weights_CPU_73, void* __xlx_apatb_param_Layer2_Weights_CPU_74, void* __xlx_apatb_param_Layer2_Weights_CPU_75, void* __xlx_apatb_param_Layer2_Weights_CPU_76, void* __xlx_apatb_param_Layer2_Weights_CPU_77, void* __xlx_apatb_param_Layer3_Neurons_CPU)
{
#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port0 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port0 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Neurons_CPU" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Neurons_CPU),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Neurons_CPU),
#endif
#endif
  };
  port0.param = { __xlx_apatb_param_Layer2_Neurons_CPU };
  port0.nbytes = { 4056 };
  port0.offset = {  };
  port0.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port1 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port1 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_0" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_0),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_0),
#endif
#endif
  };
  port1.param = { __xlx_apatb_param_Layer2_Weights_CPU_0 };
  port1.nbytes = { 400 };
  port1.offset = {  };
  port1.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port2 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port2 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_1" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_1),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_1),
#endif
#endif
  };
  port2.param = { __xlx_apatb_param_Layer2_Weights_CPU_1 };
  port2.nbytes = { 400 };
  port2.offset = {  };
  port2.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port3 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port3 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_2" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_2),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_2),
#endif
#endif
  };
  port3.param = { __xlx_apatb_param_Layer2_Weights_CPU_2 };
  port3.nbytes = { 400 };
  port3.offset = {  };
  port3.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port4 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port4 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_3" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_3),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_3),
#endif
#endif
  };
  port4.param = { __xlx_apatb_param_Layer2_Weights_CPU_3 };
  port4.nbytes = { 400 };
  port4.offset = {  };
  port4.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port5 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port5 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_4" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_4),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_4),
#endif
#endif
  };
  port5.param = { __xlx_apatb_param_Layer2_Weights_CPU_4 };
  port5.nbytes = { 400 };
  port5.offset = {  };
  port5.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port6 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port6 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_5" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_5),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_5),
#endif
#endif
  };
  port6.param = { __xlx_apatb_param_Layer2_Weights_CPU_5 };
  port6.nbytes = { 400 };
  port6.offset = {  };
  port6.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port7 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port7 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_6" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_6),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_6),
#endif
#endif
  };
  port7.param = { __xlx_apatb_param_Layer2_Weights_CPU_6 };
  port7.nbytes = { 400 };
  port7.offset = {  };
  port7.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port8 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port8 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_7" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_7),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_7),
#endif
#endif
  };
  port8.param = { __xlx_apatb_param_Layer2_Weights_CPU_7 };
  port8.nbytes = { 400 };
  port8.offset = {  };
  port8.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port9 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port9 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_8" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_8),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_8),
#endif
#endif
  };
  port9.param = { __xlx_apatb_param_Layer2_Weights_CPU_8 };
  port9.nbytes = { 400 };
  port9.offset = {  };
  port9.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port10 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port10 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_9" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_9),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_9),
#endif
#endif
  };
  port10.param = { __xlx_apatb_param_Layer2_Weights_CPU_9 };
  port10.nbytes = { 400 };
  port10.offset = {  };
  port10.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port11 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port11 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_10" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_10),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_10),
#endif
#endif
  };
  port11.param = { __xlx_apatb_param_Layer2_Weights_CPU_10 };
  port11.nbytes = { 400 };
  port11.offset = {  };
  port11.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port12 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port12 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_11" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_11),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_11),
#endif
#endif
  };
  port12.param = { __xlx_apatb_param_Layer2_Weights_CPU_11 };
  port12.nbytes = { 400 };
  port12.offset = {  };
  port12.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port13 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port13 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_12" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_12),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_12),
#endif
#endif
  };
  port13.param = { __xlx_apatb_param_Layer2_Weights_CPU_12 };
  port13.nbytes = { 400 };
  port13.offset = {  };
  port13.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port14 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port14 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_13" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_13),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_13),
#endif
#endif
  };
  port14.param = { __xlx_apatb_param_Layer2_Weights_CPU_13 };
  port14.nbytes = { 400 };
  port14.offset = {  };
  port14.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port15 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port15 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_14" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_14),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_14),
#endif
#endif
  };
  port15.param = { __xlx_apatb_param_Layer2_Weights_CPU_14 };
  port15.nbytes = { 400 };
  port15.offset = {  };
  port15.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port16 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port16 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_15" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_15),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_15),
#endif
#endif
  };
  port16.param = { __xlx_apatb_param_Layer2_Weights_CPU_15 };
  port16.nbytes = { 400 };
  port16.offset = {  };
  port16.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port17 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port17 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_16" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_16),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_16),
#endif
#endif
  };
  port17.param = { __xlx_apatb_param_Layer2_Weights_CPU_16 };
  port17.nbytes = { 400 };
  port17.offset = {  };
  port17.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port18 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port18 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_17" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_17),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_17),
#endif
#endif
  };
  port18.param = { __xlx_apatb_param_Layer2_Weights_CPU_17 };
  port18.nbytes = { 400 };
  port18.offset = {  };
  port18.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port19 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port19 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_18" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_18),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_18),
#endif
#endif
  };
  port19.param = { __xlx_apatb_param_Layer2_Weights_CPU_18 };
  port19.nbytes = { 400 };
  port19.offset = {  };
  port19.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port20 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port20 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_19" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_19),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_19),
#endif
#endif
  };
  port20.param = { __xlx_apatb_param_Layer2_Weights_CPU_19 };
  port20.nbytes = { 400 };
  port20.offset = {  };
  port20.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port21 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port21 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_20" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_20),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_20),
#endif
#endif
  };
  port21.param = { __xlx_apatb_param_Layer2_Weights_CPU_20 };
  port21.nbytes = { 400 };
  port21.offset = {  };
  port21.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port22 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port22 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_21" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_21),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_21),
#endif
#endif
  };
  port22.param = { __xlx_apatb_param_Layer2_Weights_CPU_21 };
  port22.nbytes = { 400 };
  port22.offset = {  };
  port22.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port23 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port23 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_22" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_22),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_22),
#endif
#endif
  };
  port23.param = { __xlx_apatb_param_Layer2_Weights_CPU_22 };
  port23.nbytes = { 400 };
  port23.offset = {  };
  port23.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port24 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port24 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_23" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_23),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_23),
#endif
#endif
  };
  port24.param = { __xlx_apatb_param_Layer2_Weights_CPU_23 };
  port24.nbytes = { 400 };
  port24.offset = {  };
  port24.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port25 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port25 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_24" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_24),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_24),
#endif
#endif
  };
  port25.param = { __xlx_apatb_param_Layer2_Weights_CPU_24 };
  port25.nbytes = { 400 };
  port25.offset = {  };
  port25.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port26 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port26 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_25" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_25),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_25),
#endif
#endif
  };
  port26.param = { __xlx_apatb_param_Layer2_Weights_CPU_25 };
  port26.nbytes = { 400 };
  port26.offset = {  };
  port26.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port27 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port27 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_26" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_26),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_26),
#endif
#endif
  };
  port27.param = { __xlx_apatb_param_Layer2_Weights_CPU_26 };
  port27.nbytes = { 400 };
  port27.offset = {  };
  port27.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port28 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port28 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_27" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_27),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_27),
#endif
#endif
  };
  port28.param = { __xlx_apatb_param_Layer2_Weights_CPU_27 };
  port28.nbytes = { 400 };
  port28.offset = {  };
  port28.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port29 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port29 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_28" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_28),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_28),
#endif
#endif
  };
  port29.param = { __xlx_apatb_param_Layer2_Weights_CPU_28 };
  port29.nbytes = { 400 };
  port29.offset = {  };
  port29.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port30 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port30 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_29" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_29),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_29),
#endif
#endif
  };
  port30.param = { __xlx_apatb_param_Layer2_Weights_CPU_29 };
  port30.nbytes = { 400 };
  port30.offset = {  };
  port30.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port31 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port31 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_30" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_30),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_30),
#endif
#endif
  };
  port31.param = { __xlx_apatb_param_Layer2_Weights_CPU_30 };
  port31.nbytes = { 400 };
  port31.offset = {  };
  port31.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port32 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port32 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_31" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_31),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_31),
#endif
#endif
  };
  port32.param = { __xlx_apatb_param_Layer2_Weights_CPU_31 };
  port32.nbytes = { 400 };
  port32.offset = {  };
  port32.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port33 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port33 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_32" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_32),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_32),
#endif
#endif
  };
  port33.param = { __xlx_apatb_param_Layer2_Weights_CPU_32 };
  port33.nbytes = { 400 };
  port33.offset = {  };
  port33.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port34 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port34 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_33" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_33),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_33),
#endif
#endif
  };
  port34.param = { __xlx_apatb_param_Layer2_Weights_CPU_33 };
  port34.nbytes = { 400 };
  port34.offset = {  };
  port34.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port35 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port35 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_34" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_34),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_34),
#endif
#endif
  };
  port35.param = { __xlx_apatb_param_Layer2_Weights_CPU_34 };
  port35.nbytes = { 400 };
  port35.offset = {  };
  port35.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port36 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port36 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_35" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_35),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_35),
#endif
#endif
  };
  port36.param = { __xlx_apatb_param_Layer2_Weights_CPU_35 };
  port36.nbytes = { 400 };
  port36.offset = {  };
  port36.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port37 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port37 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_36" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_36),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_36),
#endif
#endif
  };
  port37.param = { __xlx_apatb_param_Layer2_Weights_CPU_36 };
  port37.nbytes = { 400 };
  port37.offset = {  };
  port37.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port38 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port38 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_37" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_37),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_37),
#endif
#endif
  };
  port38.param = { __xlx_apatb_param_Layer2_Weights_CPU_37 };
  port38.nbytes = { 400 };
  port38.offset = {  };
  port38.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port39 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port39 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_38" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_38),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_38),
#endif
#endif
  };
  port39.param = { __xlx_apatb_param_Layer2_Weights_CPU_38 };
  port39.nbytes = { 400 };
  port39.offset = {  };
  port39.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port40 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port40 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_39" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_39),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_39),
#endif
#endif
  };
  port40.param = { __xlx_apatb_param_Layer2_Weights_CPU_39 };
  port40.nbytes = { 400 };
  port40.offset = {  };
  port40.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port41 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port41 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_40" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_40),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_40),
#endif
#endif
  };
  port41.param = { __xlx_apatb_param_Layer2_Weights_CPU_40 };
  port41.nbytes = { 400 };
  port41.offset = {  };
  port41.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port42 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port42 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_41" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_41),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_41),
#endif
#endif
  };
  port42.param = { __xlx_apatb_param_Layer2_Weights_CPU_41 };
  port42.nbytes = { 400 };
  port42.offset = {  };
  port42.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port43 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port43 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_42" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_42),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_42),
#endif
#endif
  };
  port43.param = { __xlx_apatb_param_Layer2_Weights_CPU_42 };
  port43.nbytes = { 400 };
  port43.offset = {  };
  port43.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port44 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port44 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_43" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_43),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_43),
#endif
#endif
  };
  port44.param = { __xlx_apatb_param_Layer2_Weights_CPU_43 };
  port44.nbytes = { 400 };
  port44.offset = {  };
  port44.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port45 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port45 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_44" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_44),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_44),
#endif
#endif
  };
  port45.param = { __xlx_apatb_param_Layer2_Weights_CPU_44 };
  port45.nbytes = { 400 };
  port45.offset = {  };
  port45.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port46 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port46 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_45" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_45),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_45),
#endif
#endif
  };
  port46.param = { __xlx_apatb_param_Layer2_Weights_CPU_45 };
  port46.nbytes = { 400 };
  port46.offset = {  };
  port46.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port47 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port47 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_46" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_46),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_46),
#endif
#endif
  };
  port47.param = { __xlx_apatb_param_Layer2_Weights_CPU_46 };
  port47.nbytes = { 400 };
  port47.offset = {  };
  port47.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port48 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port48 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_47" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_47),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_47),
#endif
#endif
  };
  port48.param = { __xlx_apatb_param_Layer2_Weights_CPU_47 };
  port48.nbytes = { 400 };
  port48.offset = {  };
  port48.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port49 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port49 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_48" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_48),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_48),
#endif
#endif
  };
  port49.param = { __xlx_apatb_param_Layer2_Weights_CPU_48 };
  port49.nbytes = { 400 };
  port49.offset = {  };
  port49.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port50 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port50 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_49" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_49),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_49),
#endif
#endif
  };
  port50.param = { __xlx_apatb_param_Layer2_Weights_CPU_49 };
  port50.nbytes = { 400 };
  port50.offset = {  };
  port50.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port51 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port51 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_50" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_50),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_50),
#endif
#endif
  };
  port51.param = { __xlx_apatb_param_Layer2_Weights_CPU_50 };
  port51.nbytes = { 400 };
  port51.offset = {  };
  port51.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port52 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port52 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_51" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_51),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_51),
#endif
#endif
  };
  port52.param = { __xlx_apatb_param_Layer2_Weights_CPU_51 };
  port52.nbytes = { 400 };
  port52.offset = {  };
  port52.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port53 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port53 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_52" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_52),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_52),
#endif
#endif
  };
  port53.param = { __xlx_apatb_param_Layer2_Weights_CPU_52 };
  port53.nbytes = { 400 };
  port53.offset = {  };
  port53.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port54 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port54 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_53" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_53),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_53),
#endif
#endif
  };
  port54.param = { __xlx_apatb_param_Layer2_Weights_CPU_53 };
  port54.nbytes = { 400 };
  port54.offset = {  };
  port54.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port55 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port55 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_54" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_54),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_54),
#endif
#endif
  };
  port55.param = { __xlx_apatb_param_Layer2_Weights_CPU_54 };
  port55.nbytes = { 400 };
  port55.offset = {  };
  port55.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port56 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port56 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_55" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_55),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_55),
#endif
#endif
  };
  port56.param = { __xlx_apatb_param_Layer2_Weights_CPU_55 };
  port56.nbytes = { 400 };
  port56.offset = {  };
  port56.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port57 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port57 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_56" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_56),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_56),
#endif
#endif
  };
  port57.param = { __xlx_apatb_param_Layer2_Weights_CPU_56 };
  port57.nbytes = { 400 };
  port57.offset = {  };
  port57.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port58 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port58 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_57" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_57),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_57),
#endif
#endif
  };
  port58.param = { __xlx_apatb_param_Layer2_Weights_CPU_57 };
  port58.nbytes = { 400 };
  port58.offset = {  };
  port58.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port59 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port59 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_58" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_58),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_58),
#endif
#endif
  };
  port59.param = { __xlx_apatb_param_Layer2_Weights_CPU_58 };
  port59.nbytes = { 400 };
  port59.offset = {  };
  port59.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port60 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port60 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_59" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_59),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_59),
#endif
#endif
  };
  port60.param = { __xlx_apatb_param_Layer2_Weights_CPU_59 };
  port60.nbytes = { 400 };
  port60.offset = {  };
  port60.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port61 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port61 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_60" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_60),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_60),
#endif
#endif
  };
  port61.param = { __xlx_apatb_param_Layer2_Weights_CPU_60 };
  port61.nbytes = { 400 };
  port61.offset = {  };
  port61.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port62 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port62 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_61" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_61),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_61),
#endif
#endif
  };
  port62.param = { __xlx_apatb_param_Layer2_Weights_CPU_61 };
  port62.nbytes = { 400 };
  port62.offset = {  };
  port62.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port63 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port63 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_62" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_62),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_62),
#endif
#endif
  };
  port63.param = { __xlx_apatb_param_Layer2_Weights_CPU_62 };
  port63.nbytes = { 400 };
  port63.offset = {  };
  port63.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port64 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port64 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_63" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_63),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_63),
#endif
#endif
  };
  port64.param = { __xlx_apatb_param_Layer2_Weights_CPU_63 };
  port64.nbytes = { 400 };
  port64.offset = {  };
  port64.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port65 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port65 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_64" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_64),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_64),
#endif
#endif
  };
  port65.param = { __xlx_apatb_param_Layer2_Weights_CPU_64 };
  port65.nbytes = { 400 };
  port65.offset = {  };
  port65.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port66 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port66 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_65" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_65),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_65),
#endif
#endif
  };
  port66.param = { __xlx_apatb_param_Layer2_Weights_CPU_65 };
  port66.nbytes = { 400 };
  port66.offset = {  };
  port66.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port67 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port67 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_66" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_66),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_66),
#endif
#endif
  };
  port67.param = { __xlx_apatb_param_Layer2_Weights_CPU_66 };
  port67.nbytes = { 400 };
  port67.offset = {  };
  port67.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port68 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port68 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_67" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_67),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_67),
#endif
#endif
  };
  port68.param = { __xlx_apatb_param_Layer2_Weights_CPU_67 };
  port68.nbytes = { 400 };
  port68.offset = {  };
  port68.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port69 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port69 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_68" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_68),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_68),
#endif
#endif
  };
  port69.param = { __xlx_apatb_param_Layer2_Weights_CPU_68 };
  port69.nbytes = { 400 };
  port69.offset = {  };
  port69.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port70 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port70 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_69" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_69),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_69),
#endif
#endif
  };
  port70.param = { __xlx_apatb_param_Layer2_Weights_CPU_69 };
  port70.nbytes = { 400 };
  port70.offset = {  };
  port70.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port71 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port71 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_70" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_70),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_70),
#endif
#endif
  };
  port71.param = { __xlx_apatb_param_Layer2_Weights_CPU_70 };
  port71.nbytes = { 400 };
  port71.offset = {  };
  port71.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port72 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port72 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_71" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_71),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_71),
#endif
#endif
  };
  port72.param = { __xlx_apatb_param_Layer2_Weights_CPU_71 };
  port72.nbytes = { 400 };
  port72.offset = {  };
  port72.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port73 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port73 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_72" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_72),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_72),
#endif
#endif
  };
  port73.param = { __xlx_apatb_param_Layer2_Weights_CPU_72 };
  port73.nbytes = { 400 };
  port73.offset = {  };
  port73.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port74 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port74 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_73" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_73),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_73),
#endif
#endif
  };
  port74.param = { __xlx_apatb_param_Layer2_Weights_CPU_73 };
  port74.nbytes = { 400 };
  port74.offset = {  };
  port74.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port75 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port75 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_74" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_74),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_74),
#endif
#endif
  };
  port75.param = { __xlx_apatb_param_Layer2_Weights_CPU_74 };
  port75.nbytes = { 400 };
  port75.offset = {  };
  port75.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port76 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port76 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_75" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_75),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_75),
#endif
#endif
  };
  port76.param = { __xlx_apatb_param_Layer2_Weights_CPU_75 };
  port76.nbytes = { 400 };
  port76.offset = {  };
  port76.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port77 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port77 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_76" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_76),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_76),
#endif
#endif
  };
  port77.param = { __xlx_apatb_param_Layer2_Weights_CPU_76 };
  port77.nbytes = { 400 };
  port77.offset = {  };
  port77.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port78 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port78 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer2_Weights_CPU_77" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer2_Weights_CPU_77),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer2_Weights_CPU_77),
#endif
#endif
  };
  port78.param = { __xlx_apatb_param_Layer2_Weights_CPU_77 };
  port78.nbytes = { 400 };
  port78.offset = {  };
  port78.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port79 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port79 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "Layer3_Neurons_CPU" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_Layer3_Neurons_CPU),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_Layer3_Neurons_CPU),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_Layer3_Neurons_CPU),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_Layer3_Neurons_CPU),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_Layer3_Neurons_CPU),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_Layer3_Neurons_CPU),
#endif
#endif
  };
  port79.param = { __xlx_apatb_param_Layer3_Neurons_CPU };
  port79.nbytes = { 5000 };
  port79.offset = {  };
  port79.hasWrite = { true };

  try {
#ifdef POST_CHECK
    CodeState = ENTER_WRAPC_PC;
    check(port79);
#else
    static hls::sim::RefTCL tcl("../tv/cdatafile/ref.tcl");
    CodeState = DUMP_INPUTS;
    dump(port0, port0.iwriter, tcl.AESL_transaction);
    dump(port1, port1.iwriter, tcl.AESL_transaction);
    dump(port2, port2.iwriter, tcl.AESL_transaction);
    dump(port3, port3.iwriter, tcl.AESL_transaction);
    dump(port4, port4.iwriter, tcl.AESL_transaction);
    dump(port5, port5.iwriter, tcl.AESL_transaction);
    dump(port6, port6.iwriter, tcl.AESL_transaction);
    dump(port7, port7.iwriter, tcl.AESL_transaction);
    dump(port8, port8.iwriter, tcl.AESL_transaction);
    dump(port9, port9.iwriter, tcl.AESL_transaction);
    dump(port10, port10.iwriter, tcl.AESL_transaction);
    dump(port11, port11.iwriter, tcl.AESL_transaction);
    dump(port12, port12.iwriter, tcl.AESL_transaction);
    dump(port13, port13.iwriter, tcl.AESL_transaction);
    dump(port14, port14.iwriter, tcl.AESL_transaction);
    dump(port15, port15.iwriter, tcl.AESL_transaction);
    dump(port16, port16.iwriter, tcl.AESL_transaction);
    dump(port17, port17.iwriter, tcl.AESL_transaction);
    dump(port18, port18.iwriter, tcl.AESL_transaction);
    dump(port19, port19.iwriter, tcl.AESL_transaction);
    dump(port20, port20.iwriter, tcl.AESL_transaction);
    dump(port21, port21.iwriter, tcl.AESL_transaction);
    dump(port22, port22.iwriter, tcl.AESL_transaction);
    dump(port23, port23.iwriter, tcl.AESL_transaction);
    dump(port24, port24.iwriter, tcl.AESL_transaction);
    dump(port25, port25.iwriter, tcl.AESL_transaction);
    dump(port26, port26.iwriter, tcl.AESL_transaction);
    dump(port27, port27.iwriter, tcl.AESL_transaction);
    dump(port28, port28.iwriter, tcl.AESL_transaction);
    dump(port29, port29.iwriter, tcl.AESL_transaction);
    dump(port30, port30.iwriter, tcl.AESL_transaction);
    dump(port31, port31.iwriter, tcl.AESL_transaction);
    dump(port32, port32.iwriter, tcl.AESL_transaction);
    dump(port33, port33.iwriter, tcl.AESL_transaction);
    dump(port34, port34.iwriter, tcl.AESL_transaction);
    dump(port35, port35.iwriter, tcl.AESL_transaction);
    dump(port36, port36.iwriter, tcl.AESL_transaction);
    dump(port37, port37.iwriter, tcl.AESL_transaction);
    dump(port38, port38.iwriter, tcl.AESL_transaction);
    dump(port39, port39.iwriter, tcl.AESL_transaction);
    dump(port40, port40.iwriter, tcl.AESL_transaction);
    dump(port41, port41.iwriter, tcl.AESL_transaction);
    dump(port42, port42.iwriter, tcl.AESL_transaction);
    dump(port43, port43.iwriter, tcl.AESL_transaction);
    dump(port44, port44.iwriter, tcl.AESL_transaction);
    dump(port45, port45.iwriter, tcl.AESL_transaction);
    dump(port46, port46.iwriter, tcl.AESL_transaction);
    dump(port47, port47.iwriter, tcl.AESL_transaction);
    dump(port48, port48.iwriter, tcl.AESL_transaction);
    dump(port49, port49.iwriter, tcl.AESL_transaction);
    dump(port50, port50.iwriter, tcl.AESL_transaction);
    dump(port51, port51.iwriter, tcl.AESL_transaction);
    dump(port52, port52.iwriter, tcl.AESL_transaction);
    dump(port53, port53.iwriter, tcl.AESL_transaction);
    dump(port54, port54.iwriter, tcl.AESL_transaction);
    dump(port55, port55.iwriter, tcl.AESL_transaction);
    dump(port56, port56.iwriter, tcl.AESL_transaction);
    dump(port57, port57.iwriter, tcl.AESL_transaction);
    dump(port58, port58.iwriter, tcl.AESL_transaction);
    dump(port59, port59.iwriter, tcl.AESL_transaction);
    dump(port60, port60.iwriter, tcl.AESL_transaction);
    dump(port61, port61.iwriter, tcl.AESL_transaction);
    dump(port62, port62.iwriter, tcl.AESL_transaction);
    dump(port63, port63.iwriter, tcl.AESL_transaction);
    dump(port64, port64.iwriter, tcl.AESL_transaction);
    dump(port65, port65.iwriter, tcl.AESL_transaction);
    dump(port66, port66.iwriter, tcl.AESL_transaction);
    dump(port67, port67.iwriter, tcl.AESL_transaction);
    dump(port68, port68.iwriter, tcl.AESL_transaction);
    dump(port69, port69.iwriter, tcl.AESL_transaction);
    dump(port70, port70.iwriter, tcl.AESL_transaction);
    dump(port71, port71.iwriter, tcl.AESL_transaction);
    dump(port72, port72.iwriter, tcl.AESL_transaction);
    dump(port73, port73.iwriter, tcl.AESL_transaction);
    dump(port74, port74.iwriter, tcl.AESL_transaction);
    dump(port75, port75.iwriter, tcl.AESL_transaction);
    dump(port76, port76.iwriter, tcl.AESL_transaction);
    dump(port77, port77.iwriter, tcl.AESL_transaction);
    dump(port78, port78.iwriter, tcl.AESL_transaction);
    dump(port79, port79.iwriter, tcl.AESL_transaction);
    port0.doTCL(tcl);
    port1.doTCL(tcl);
    port2.doTCL(tcl);
    port3.doTCL(tcl);
    port4.doTCL(tcl);
    port5.doTCL(tcl);
    port6.doTCL(tcl);
    port7.doTCL(tcl);
    port8.doTCL(tcl);
    port9.doTCL(tcl);
    port10.doTCL(tcl);
    port11.doTCL(tcl);
    port12.doTCL(tcl);
    port13.doTCL(tcl);
    port14.doTCL(tcl);
    port15.doTCL(tcl);
    port16.doTCL(tcl);
    port17.doTCL(tcl);
    port18.doTCL(tcl);
    port19.doTCL(tcl);
    port20.doTCL(tcl);
    port21.doTCL(tcl);
    port22.doTCL(tcl);
    port23.doTCL(tcl);
    port24.doTCL(tcl);
    port25.doTCL(tcl);
    port26.doTCL(tcl);
    port27.doTCL(tcl);
    port28.doTCL(tcl);
    port29.doTCL(tcl);
    port30.doTCL(tcl);
    port31.doTCL(tcl);
    port32.doTCL(tcl);
    port33.doTCL(tcl);
    port34.doTCL(tcl);
    port35.doTCL(tcl);
    port36.doTCL(tcl);
    port37.doTCL(tcl);
    port38.doTCL(tcl);
    port39.doTCL(tcl);
    port40.doTCL(tcl);
    port41.doTCL(tcl);
    port42.doTCL(tcl);
    port43.doTCL(tcl);
    port44.doTCL(tcl);
    port45.doTCL(tcl);
    port46.doTCL(tcl);
    port47.doTCL(tcl);
    port48.doTCL(tcl);
    port49.doTCL(tcl);
    port50.doTCL(tcl);
    port51.doTCL(tcl);
    port52.doTCL(tcl);
    port53.doTCL(tcl);
    port54.doTCL(tcl);
    port55.doTCL(tcl);
    port56.doTCL(tcl);
    port57.doTCL(tcl);
    port58.doTCL(tcl);
    port59.doTCL(tcl);
    port60.doTCL(tcl);
    port61.doTCL(tcl);
    port62.doTCL(tcl);
    port63.doTCL(tcl);
    port64.doTCL(tcl);
    port65.doTCL(tcl);
    port66.doTCL(tcl);
    port67.doTCL(tcl);
    port68.doTCL(tcl);
    port69.doTCL(tcl);
    port70.doTCL(tcl);
    port71.doTCL(tcl);
    port72.doTCL(tcl);
    port73.doTCL(tcl);
    port74.doTCL(tcl);
    port75.doTCL(tcl);
    port76.doTCL(tcl);
    port77.doTCL(tcl);
    port78.doTCL(tcl);
    port79.doTCL(tcl);
    CodeState = CALL_C_DUT;
    calculateLayer3_hw_stub_wrapper(__xlx_apatb_param_Layer2_Neurons_CPU, __xlx_apatb_param_Layer2_Weights_CPU_0, __xlx_apatb_param_Layer2_Weights_CPU_1, __xlx_apatb_param_Layer2_Weights_CPU_2, __xlx_apatb_param_Layer2_Weights_CPU_3, __xlx_apatb_param_Layer2_Weights_CPU_4, __xlx_apatb_param_Layer2_Weights_CPU_5, __xlx_apatb_param_Layer2_Weights_CPU_6, __xlx_apatb_param_Layer2_Weights_CPU_7, __xlx_apatb_param_Layer2_Weights_CPU_8, __xlx_apatb_param_Layer2_Weights_CPU_9, __xlx_apatb_param_Layer2_Weights_CPU_10, __xlx_apatb_param_Layer2_Weights_CPU_11, __xlx_apatb_param_Layer2_Weights_CPU_12, __xlx_apatb_param_Layer2_Weights_CPU_13, __xlx_apatb_param_Layer2_Weights_CPU_14, __xlx_apatb_param_Layer2_Weights_CPU_15, __xlx_apatb_param_Layer2_Weights_CPU_16, __xlx_apatb_param_Layer2_Weights_CPU_17, __xlx_apatb_param_Layer2_Weights_CPU_18, __xlx_apatb_param_Layer2_Weights_CPU_19, __xlx_apatb_param_Layer2_Weights_CPU_20, __xlx_apatb_param_Layer2_Weights_CPU_21, __xlx_apatb_param_Layer2_Weights_CPU_22, __xlx_apatb_param_Layer2_Weights_CPU_23, __xlx_apatb_param_Layer2_Weights_CPU_24, __xlx_apatb_param_Layer2_Weights_CPU_25, __xlx_apatb_param_Layer2_Weights_CPU_26, __xlx_apatb_param_Layer2_Weights_CPU_27, __xlx_apatb_param_Layer2_Weights_CPU_28, __xlx_apatb_param_Layer2_Weights_CPU_29, __xlx_apatb_param_Layer2_Weights_CPU_30, __xlx_apatb_param_Layer2_Weights_CPU_31, __xlx_apatb_param_Layer2_Weights_CPU_32, __xlx_apatb_param_Layer2_Weights_CPU_33, __xlx_apatb_param_Layer2_Weights_CPU_34, __xlx_apatb_param_Layer2_Weights_CPU_35, __xlx_apatb_param_Layer2_Weights_CPU_36, __xlx_apatb_param_Layer2_Weights_CPU_37, __xlx_apatb_param_Layer2_Weights_CPU_38, __xlx_apatb_param_Layer2_Weights_CPU_39, __xlx_apatb_param_Layer2_Weights_CPU_40, __xlx_apatb_param_Layer2_Weights_CPU_41, __xlx_apatb_param_Layer2_Weights_CPU_42, __xlx_apatb_param_Layer2_Weights_CPU_43, __xlx_apatb_param_Layer2_Weights_CPU_44, __xlx_apatb_param_Layer2_Weights_CPU_45, __xlx_apatb_param_Layer2_Weights_CPU_46, __xlx_apatb_param_Layer2_Weights_CPU_47, __xlx_apatb_param_Layer2_Weights_CPU_48, __xlx_apatb_param_Layer2_Weights_CPU_49, __xlx_apatb_param_Layer2_Weights_CPU_50, __xlx_apatb_param_Layer2_Weights_CPU_51, __xlx_apatb_param_Layer2_Weights_CPU_52, __xlx_apatb_param_Layer2_Weights_CPU_53, __xlx_apatb_param_Layer2_Weights_CPU_54, __xlx_apatb_param_Layer2_Weights_CPU_55, __xlx_apatb_param_Layer2_Weights_CPU_56, __xlx_apatb_param_Layer2_Weights_CPU_57, __xlx_apatb_param_Layer2_Weights_CPU_58, __xlx_apatb_param_Layer2_Weights_CPU_59, __xlx_apatb_param_Layer2_Weights_CPU_60, __xlx_apatb_param_Layer2_Weights_CPU_61, __xlx_apatb_param_Layer2_Weights_CPU_62, __xlx_apatb_param_Layer2_Weights_CPU_63, __xlx_apatb_param_Layer2_Weights_CPU_64, __xlx_apatb_param_Layer2_Weights_CPU_65, __xlx_apatb_param_Layer2_Weights_CPU_66, __xlx_apatb_param_Layer2_Weights_CPU_67, __xlx_apatb_param_Layer2_Weights_CPU_68, __xlx_apatb_param_Layer2_Weights_CPU_69, __xlx_apatb_param_Layer2_Weights_CPU_70, __xlx_apatb_param_Layer2_Weights_CPU_71, __xlx_apatb_param_Layer2_Weights_CPU_72, __xlx_apatb_param_Layer2_Weights_CPU_73, __xlx_apatb_param_Layer2_Weights_CPU_74, __xlx_apatb_param_Layer2_Weights_CPU_75, __xlx_apatb_param_Layer2_Weights_CPU_76, __xlx_apatb_param_Layer2_Weights_CPU_77, __xlx_apatb_param_Layer3_Neurons_CPU);
    CodeState = DUMP_OUTPUTS;
    dump(port79, port79.owriter, tcl.AESL_transaction);
    tcl.AESL_transaction++;
#endif
  } catch (const hls::sim::SimException &e) {
    hls::sim::errExit(e.line, e.msg);
  }
}