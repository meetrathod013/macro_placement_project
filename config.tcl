set ::env(DESIGN_NAME) top_macro_design

set ::env(VERILOG_FILES) [glob $::env(DESIGN_DIR)/scr/*.v]

set ::env(CLOCK_PORT) "clk"
set ::env(CLOCK_PERIOD) "10"

set ::env(FP_CORE_UTIL) 10
set ::env(FP_CORE_MARGIN) 5
set ::env(SYNTH_READ_BLACKBOX_LIB) 1

# DIE AREA (thoda bada rakha for macros)
set ::env(DIE_AREA) "0 0 400 400"

# Macro settings
set ::env(MACRO_LEFS) "dir::macros/simple_macro.lef"
set ::env(MACRO_LIBS) "dir::macros/simple_macro.lib"

set ::env(EXTRA_LEFS) [glob $::env(DESIGN_DIR)/scr/*.lef]

# Placement density
set ::env(PL_TARGET_DENSITY) 0.45

# IMPORTANT: manual macro placement
set ::env(MACRO_PLACEMENT_CFG) $::env(DESIGN_DIR)/macro.cfg
set ::env(MAGIC_WRITE_FULL_LEF) 1
set ::env(DESIGN_IS_CORE) 1
