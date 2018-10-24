WORKLIB = work
WORKDIR = xsim.dir/work/
VDBDIR = $(WORKDIR)

XVHDL_FLAGS = -v 0 -work $(WORKLIB)=$(WORKDIR)
XELAB_FLAGS = -debug all -O3 -rangecheck -stat -v 0
XSIMDIR = xsim.dir/

SOURCEDIR = ../
SOURCES = glyph_util.vhd \
    glyph_util_tb.vhd
TXT_UTIL_SOURCEDIR= ../../txt_util/
TXT_UTIL_SOURCES = txt_util.vhd

VDBFILES=$(patsubst %.vhd, %.vdb, $(addprefix $(WORKDIR), \
    $(SOURCES) $(TXT_UTIL_SOURCES) \
))

TOP_TARGETS=glyph_util_tb
TOP_TARGET_SNAPSHOTS=$(addprefix ss-, $(TOP_TARGETS))
TOP_TARGET_SNAPSHOT_DIRS=$(addsuffix /, \
	$(addprefix xsim.dir/, $(TOP_TARGET_SNAPSHOTS)))

.PHONY: all all-compile all-elab
.PHONY: all-clean all-compile-clean all-elab-clean

all: all-compile all-elab
all-compile: $(VDBFILES)
all-elab: $(TOP_TARGETS)

$(TOP_TARGETS): $(VDBFILES)
	xelab $(XELAB_FLAGS) -s $(addprefix ss-, $@) $(WORKLIB).$@

$(VDBFILES):
	xvhdl $(XVHDL_FLAGS) $(filter %.vhd, $^)

$(VDBDIR)txt_util.vdb: $(TXT_UTIL_SOURCEDIR)txt_util.vhd
$(VDBDIR)glyph_util.vdb: $(VDBDIR)txt_util.vdb $(SOURCEDIR)glyph_util.vhd
$(VDBDIR)glyph_util_tb.vdb: $(VDBDIR)glyph_util.vdb \
    $(SOURCEDIR)glyph_util_tb.vhd


all-clean: all-elab-clean all-compile-clean

all-compile-clean:
	rm -rf $(VDBFILES) $(WORKDIR)

all-elab-clean:
	rm -rf $(TOP_TARGET_SNAPSHOT_DIRS)

