export PLATFORM               = asap7

export DESIGN_NAME            = counter_board

export VERILOG_FILES          = $(FLOW_HOME)/../../verilog/rtl/$(DESIGN_NAME).v

export SDC_FILE               = $(DESIGN_HOME)/$(PLATFORM)/$(DESIGN_NAME)/constraint.sdc

export DIE_AREA               = 0 0 100 100
export CORE_AREA              = 1 1 99 99
export PLACE_DENSITY          = 0.50

# a smoketest for this option, there are a
# few last gasp iterations
export SKIP_LAST_GASP ?= 1


export ASAP7_SRAM_PATH = $(FLOW_HOME)/platforms/$(PLATFORM)/asap7_sram_0p0

export ADDITIONAL_LEFS = $(ASAP7_SRAM_PATH)/LEF/srambank_256x4x64_6t122.lef

export ADDITIONAL_LIBS = $(ASAP7_SRAM_PATH)/LIB/srambank_256x4x64_6t122.lib

export ADDITIONAL_GDS  = $(ASAP7_SRAM_PATH)/gds/srambank_256x4x64_6t122.gds