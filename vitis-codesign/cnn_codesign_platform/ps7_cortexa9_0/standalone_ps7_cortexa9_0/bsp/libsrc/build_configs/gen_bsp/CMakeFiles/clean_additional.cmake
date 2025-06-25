# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "C:\\Users\\TRETEC\\OneDrive\\Documents\\Master2\\HLS-FPGA\\cnn_hls\\vitis-codesign\\cnn_codesign_platform\\ps7_cortexa9_0\\standalone_ps7_cortexa9_0\\bsp\\include\\sleep.h"
  "C:\\Users\\TRETEC\\OneDrive\\Documents\\Master2\\HLS-FPGA\\cnn_hls\\vitis-codesign\\cnn_codesign_platform\\ps7_cortexa9_0\\standalone_ps7_cortexa9_0\\bsp\\include\\xiltimer.h"
  "C:\\Users\\TRETEC\\OneDrive\\Documents\\Master2\\HLS-FPGA\\cnn_hls\\vitis-codesign\\cnn_codesign_platform\\ps7_cortexa9_0\\standalone_ps7_cortexa9_0\\bsp\\include\\xtimer_config.h"
  "C:\\Users\\TRETEC\\OneDrive\\Documents\\Master2\\HLS-FPGA\\cnn_hls\\vitis-codesign\\cnn_codesign_platform\\ps7_cortexa9_0\\standalone_ps7_cortexa9_0\\bsp\\lib\\libxiltimer.a"
  )
endif()
