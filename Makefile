# SPDX-License-Identifier: GPL-2.0

KERNEL_SRC ?= /lib/modules/$(shell uname -r)/build

all:
	$(MAKE) -C $(KERNEL_SRC) M=$(CURDIR)/swtbt4l modules CONFIG_SKW_BT=m \
		skw_extra_flags="-I$(CURDIR)/include/linux/platform_data"

clean:
	$(MAKE) -C $(KERNEL_SRC) M=$(CURDIR)/swtbt4l clean
