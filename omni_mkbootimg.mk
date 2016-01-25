LOCAL_PATH := $(call my-dir)

TDEV=SMT530
TTYP=TWRP2871
TPRO=recovery
TIMG=.img
TTAR=.tar
TPWD=xxx
d=`date +%Y%m%d-%H%M`

LZMA_RAMDISK := $(PRODUCT_OUT)/ramdisk-recovery-lzma.img
$(LZMA_RAMDISK): $(recovery_ramdisk)
	$(hide)	gunzip -f < $(recovery_ramdisk) | lzma -e > $@
	@echo -e ${CL_CYN}"lzma'in omnirom recovery image: $@"${CL_RST}

$(INSTALLED_RECOVERYIMAGE_TARGET): $(MKBOOTIMG) \
	$(LZMA_RAMDISK) \
	$(recovery_kernel)
	@echo -e ${CL_CYN}"----- Making recovery image ------"${CL_RST}
	$(hide) $(MKBOOTIMG) $(INTERNAL_RECOVERYIMAGE_ARGS) $(BOARD_MKBOOTIMG_ARGS) --output $@ --ramdisk $(LZMA_RAMDISK)
	$(hide) $(call assert-max-image-size,$@,$(BOARD_RECOVERYIMAGE_PARTITION_SIZE),raw)
	$(hide) cat  $(LOCAL_PATH)/seandroid >> $(PRODUCT_OUT)/recovery.img
	$(hide) cd $(PRODUCT_OUT); tar -H ustar -c recovery.img > recovery.tar
	$(hide) mv $(PRODUCT_OUT)/${TPRO}${TIMG} $(PRODUCT_OUT)/${TTYP}-${TDEV}_${d}${TIMG}
	$(hide) mv $(PRODUCT_OUT)/${TPRO}${TTAR} $(PRODUCT_OUT)/${TTYP}-${TDEV}_${d}${TTAR}
	@echo -e ${CL_CYN}"Made omnirom recovery image: $@"${CL_RST}
#	$(hide) curl -T $(PRODUCT_OUT)/${TTYP}-${TDEV}_${d}${TIMG} -u sub77:${PSWD} ftp://uploads.androidfilehost.com --ftp-create-dirs
#	$(hide) curl -T $(PRODUCT_OUT)/${TTYP}-${TDEV}_${d}${TTAR} -u sub77:${PSWD} ftp://uploads.androidfilehost.com --ftp-create-dirs
