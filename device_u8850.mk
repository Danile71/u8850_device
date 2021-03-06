$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/huawei/u8850/u8850-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/huawei/u8850/overlay

LOCAL_PATH := device/huawei/u8850
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif
TARGET_NO_KERNEL := true
PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_u8850
PRODUCT_DEVICE := u8850

#copy system/usr
PRODUCT_COPY_FILES += \
   device/huawei/u8850/files/system/usr/idc/7k_handset.idc:/system/usr/idc/7k_handset.idc \
   device/huawei/u8850/files/system/usr/idc/atmel_mxt165_touch.idc:/system/usr/idc/atmel_mxt165_touch.idc \
   device/huawei/u8850/files/system/usr/idc/qwerty.idc:/system/usr/idc/qwerty.idc \
   device/huawei/u8850/files/system/usr/idc/qwerty2.idc:/system/usr/idc/qwerty2.idc \
   device/huawei/u8850/files/system/usr/keychars/fih_headsethook.kcm.bin:/system/usr/keychars/fih_headsethook.kcm.bin \
   device/huawei/u8850/files/system/usr/keychars/fih_ringswitch.kcm.bin:/system/usr/keychars/fih_ringswitch.kcm.bin \
   device/huawei/u8850/files/system/usr/keychars/Generic.kcm:/system/usr/keychars/Generic.kcm \
   device/huawei/u8850/files/system/usr/keychars/qwerty.kcm:/system/usr/keychars/qwerty.kcm \
   device/huawei/u8850/files/system/usr/keychars/qwerty.kcm.bin:/system/usr/keychars/qwerty.kcm.bin \
   device/huawei/u8850/files/system/usr/keychars/qwerty2.kcm:/system/usr/keychars/qwerty2.kcm \
   device/huawei/u8850/files/system/usr/keychars/qwerty2.kcm.bin:/system/usr/keychars/qwerty2.kcm.bin \
   device/huawei/u8850/files/system/usr/keychars/sf8_kybd.kcm.bin:/system/usr/keychars/sf8_kybd.kcm.bin \
   device/huawei/u8850/files/system/usr/keychars/surf_keypad.kcm.bin:/system/usr/keychars/surf_keypad.kcm.bin \
   device/huawei/u8850/files/system/usr/keychars/surf_keypad_numeric.kcm.bin:/system/usr/keychars/surf_keypad_numeric.kcm.bin \
   device/huawei/u8850/files/system/usr/keychars/surf_keypad_qwerty.kcm.bin:/system/usr/keychars/surf_keypad_qwerty.kcm.bin \
   device/huawei/u8850/files/system/usr/keychars/Virtual.kcm:/system/usr/keychars/Virtual.kcm \
   device/huawei/u8850/files/system/usr/keylayout/7k_handset.kl:/system/usr/keylayout/7k_handset.kl \
   device/huawei/u8850/files/system/usr/keylayout/atmel_mxt165_touch.idc:/system/usr/keylayout/atmel_mxt165_touch.idc \
   device/huawei/u8850/files/system/usr/keylayout/atmel_mxt165_touch.kl:/system/usr/keylayout/atmel_mxt165_touch.kl \
   device/huawei/u8850/files/system/usr/keylayout/fbx_kybd.kl:/system/usr/keylayout/fbx_kybd.kl \
   device/huawei/u8850/files/system/usr/keylayout/fih_headsethook.kl:/system/usr/keylayout/fih_headsethook.kl \
   device/huawei/u8850/files/system/usr/keylayout/fih_ringswitch.kl:/system/usr/keylayout/fih_ringswitch.kl \
   device/huawei/u8850/files/system/usr/keylayout/fluid-keypad.kl:/system/usr/keylayout/fluid-keypad.kl \
   device/huawei/u8850/files/system/usr/keylayout/Generic.kl:/system/usr/keylayout/Generic.kl \
   device/huawei/u8850/files/system/usr/keylayout/qwerty.kl:/system/usr/keylayout/qwerty.kl \
   device/huawei/u8850/files/system/usr/keylayout/sf8_kybd.kl:/system/usr/keylayout/sf8_kybd.kl \
   device/huawei/u8850/files/system/usr/keylayout/surf_keypad.kl:/system/usr/keylayout/surf_keypad.kl

#copy system/lib
#PRODUCT_COPY_FILES += \
#   device/huawei/u8850/files/system/lib/hw/audio.a2dp.default.so:/system/lib/hw/audio.a2dp.default.so \
#   device/huawei/u8850/files/system/lib/hw/audio.primary.default.so:/system/lib/hw/audio.primary.default.so \
#   device/huawei/u8850/files/system/lib/hw/audio_policy.msm7x30.so:/system/lib/hw/audio_policy.msm7x30.so 

#copy system/etc
PRODUCT_COPY_FILES += \
   device/huawei/u8850/files/system/etc/firmware/a225p5_pm4.fw:/system/etc/firmware/a225p5_pm4.fw \
   device/huawei/u8850/files/system/etc/firmware/a225_pfp.fw:/system/etc/firmware/a225_pfp.fw \
   device/huawei/u8850/files/system/etc/firmware/a225_pm4.fw:/system/etc/firmware/a225_pm4.fw \
   device/huawei/u8850/files/system/etc/firmware/a300_pfp.fw:/system/etc/firmware/a300_pfp.fw \
   device/huawei/u8850/files/system/etc/firmware/a300_pm4.fw:/system/etc/firmware/a300_pm4.fw \
   device/huawei/u8850/files/system/etc/firmware/leia_pfp_470.fw:/system/etc/firmware/leia_pfp_470.fw \
   device/huawei/u8850/files/system/etc/firmware/leia_pm4_470.fw:/system/etc/firmware/leia_pm4_470.fw \
   device/huawei/u8850/files/system/etc/firmware/vidc_720p_command_control.fw:/system/etc/firmware/vidc_720p_command_control.fw \
   device/huawei/u8850/files/system/etc/firmware/vidc_720p_h263_dec_mc.fw:/system/etc/firmware/vidc_720p_h263_dec_mc.fw \
   device/huawei/u8850/files/system/etc/firmware/vidc_720p_h264_dec_mc.fw:/system/etc/firmware/vidc_720p_h264_dec_mc.fw \
   device/huawei/u8850/files/system/etc/firmware/vidc_720p_h264_enc_mc.fw:/system/etc/firmware/vidc_720p_h264_enc_mc.fw \
   device/huawei/u8850/files/system/etc/firmware/vidc_720p_mp4_dec_mc.fw:/system/etc/firmware/vidc_720p_mp4_dec_mc.fw \
   device/huawei/u8850/files/system/etc/firmware/vidc_720p_mp4_enc_mc.fw:/system/etc/firmware/vidc_720p_mp4_enc_mc.fw \
   device/huawei/u8850/files/system/etc/firmware/vidc_720p_vc1_dec_mc.fw:/system/etc/firmware/vidc_720p_vc1_dec_mc.fw \
   device/huawei/u8850/files/system/etc/firmware/yamato_pfp.fw:/system/etc/firmware/yamato_pfp.fw \
   device/huawei/u8850/files/system/etc/firmware/yamato_pm4.fw:/system/etc/firmware/yamato_pm4.fw \
   device/huawei/u8850/files/system/etc/vold.fstab:/system/etc/vold.fstab \
   device/huawei/u8850/files/system/etc/init.qcom.sdio.sh:/system/etc/init.qcom.sdio.sh \
   device/huawei/u8850/files/system/etc/init.qcom.fm.sh:/system/etc/init.qcom.fm.sh \
   device/huawei/u8850/files/system/etc/init.qcom.post_boot.sh:/system/etc/init.qcom.post_boot.sh

#copy system/lib
PRODUCT_COPY_FILES += \
   device/huawei/u8850/files/system/etc/audio_policy.conf:/system/etc/audio_policy.conf \
   device/huawei/u8850/files/system/etc/bcm4329/BCM4329B1_002.002.023.0589.0617.hcd:/system/etc/bcm4329/BCM4329B1_002.002.023.0589.0617.hcd \
   device/huawei/u8850/files/system/etc/bcm4329/nvram.txt:/system/etc/bcm4329/nvram.txt \
   device/huawei/u8850/files/system/etc/bcm4329/sdio-ag-cdc-full11n-reclaim-roml-wme.bin:/system/etc/bcm4329/sdio-ag-cdc-full11n-reclaim-roml-wme.bin \
   device/huawei/u8850/files/system/lib/modules/dhd.ko:/system/lib/modules/dhd.ko \
   device/huawei/u8850/files/system/lib/modules/zram.ko:/system/lib/modules/zram.ko \
   device/huawei/u8850/files/system/lib/libc2d2_z180.so:/system/lib/libc2d2_z180.so \
   device/huawei/u8850/files/system/lib/libC2D2.so:/system/lib/libC2D2.so \
   device/huawei/u8850/files/system/lib/libgenlock.so:/system/lib/libgenlock.so \
   device/huawei/u8850/files/system/lib/libgsl.so:/system/lib/libgsl.so \
   device/huawei/u8850/files/system/lib/libOpenVG.so:/system/lib/libOpenVG.so \
   device/huawei/u8850/files/system/lib/libsc-a2xx.so:/system/lib/libsc-a2xx.so \
   device/huawei/u8850/files/system/lib/egl/eglsubAndroid.so:/system/lib/egl/eglsubAndroid.so \
   device/huawei/u8850/files/system/lib/egl/libEGL_adreno200.so:/system/lib/egl/libEGL_adreno200.so \
   device/huawei/u8850/files/system/lib/egl/libGLES_android.so:/system/lib/egl/libGLES_android.so \
   device/huawei/u8850/files/system/lib/egl/libGLESv1_CM_adreno200.so:/system/lib/egl/libGLESv1_CM_adreno200.so \
   device/huawei/u8850/files/system/lib/egl/libGLESv2_adreno200.so:/system/lib/egl/libGLESv2_adreno200.so \
   device/huawei/u8850/files/system/lib/egl/libGLESv2S3D_adreno200.so:/system/lib/egl/libGLESv2S3D_adreno200.so \
   device/huawei/u8850/files/system/lib/egl/libq3dtools_adreno200.so:/system/lib/egl/libq3dtools_adreno200.so


PRODUCT_PACKAGE_OVERLAYS += device/huawei/u8850/overlay

# Video
PRODUCT_PACKAGES += \
    copybit.msm7x30 \
    gralloc.msm7x30 \
    hwcomposer.msm7x30 \
    libgenlock \
    libmemalloc \
    liboverlay \
    libQcomUI \
    libtilerenderer

PRODUCT_PACKAGES += \
    lights.u8850 \
    gps.u8850

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio_policy.msm7x30 \
    audio.primary.msm7x30 \
    libaudioutils \
    libtinyalsa

PRODUCT_PROPERTY_OVERRIDES += \
        rild.libpath=/system/lib/libril-qc-1.so \
	rild.libargs="-d /dev/smd0" \
	ro.telephony.default_network=0	\
	ro.telephony.ril_class=HwQcomRIL \
	mobiledata.interfaces=rmnet0,gprs,ppp0 \
	ro.sf.lcd_density=240 \
#	persist.sys.usb.config=mtp,adb \
	wifi.interface=wlan0 \
	keyguard.no_require_sim=true \
	ro.com.google.locationfeatures=1 \
	dalvik.vm.dexopt-flags=m=y \
	dalvik.vm.dexopt-data-only=1 \
	dalvik.vm.lockprof.threshold=500 \
	dalvik.vm.execution-mode=int:jit \
	ro.opengles.version=131072  \
	ro.product.locale.language=ru \
	ro.product.locale.region=RU


















