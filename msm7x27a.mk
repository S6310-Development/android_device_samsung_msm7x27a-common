# Copyright (C) 2013 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/msm7x27a-common/overlay

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=2

PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_AAPT_CONFIG := normal mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

## Video
PRODUCT_PACKAGES += \
    libmm-omxcore \
    libOmxCore \
    libstagefrighthw \
    libdashplayer \
    qcmediaplayer

PRODUCT_BOOT_JARS += \
    qcmediaplayer

## Graphics
PRODUCT_PACKAGES += \
    copybit.msm7x27a \
    gralloc.msm7x27a \
    libqdMetaData \
    memtrack.msm7x27a \
    lights.msm7x27a

## GPS
PRODUCT_PACKAGES += \
    gps.msm7x27a

## Misc.
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs \
    com.android.future.usb.accessory

## Audio
PRODUCT_PACKAGES += \
    audio.primary.msm7x27a \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    libaudioutils \
    libtinyalsa \
    libaudio-resampler

## Other HALs
PRODUCT_PACKAGES += \
    camera.msm7x27a \
    power.msm7x27a \
    libhealthd.msm7x27a

## FM radio
PRODUCT_PACKAGES += \
    qcom.fmradio \
    libqcomfm_jni \
    FM2

# Bluetooth
PRODUCT_PACKAGES += \
    bluetooth-headers \
    hciconfig \
    btmon \
    btproxy \
    bluetoothd-snoop \
    btmgmt \
    hciattach \
    hcitool \
    l2ping \
    libsbc \
    avinfo \
    haltest \
    libdbus \
    audio.sco.default \
    bluetoothd

# Other
PRODUCT_PACKAGES += \
    libnetcmdiface \
    libqservice

# Product specific Packages
PRODUCT_PACKAGES += \
    SamsungServiceMode

PRODUCT_PACKAGES += Torch

## Recovery
PRODUCT_COPY_FILES += \
    device/samsung/msm7x27a-common/recovery/sbin/rmt_storage_recovery:recovery/root/sbin/rmt_storage_recovery \
    device/samsung/msm7x27a-common/recovery/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh

## Permissions
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_ffmpeg.xml:system/etc/media_codecs_ffmpeg.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml

## Qosmgr
PRODUCT_COPY_FILES += \
    device/samsung/msm7x27a-common/prebuilt/qosmgr_rules.xml:system/etc/qosmgr_rules.xml

## Media
PRODUCT_COPY_FILES += \
    device/samsung/msm7x27a-common/prebuilt/media_codecs.xml:system/etc/media_codecs.xml \
    device/samsung/msm7x27a-common/prebuilt/media_profiles.xml:system/etc/media_profiles.xml 

## Audio
PRODUCT_COPY_FILES += \
    device/samsung/msm7x27a-common/prebuilt/audio/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
    device/samsung/msm7x27a-common/prebuilt/audio/AudioFilter.csv:system/etc/AudioFilter.csv

## Init files
PRODUCT_COPY_FILES += \
    device/samsung/msm7x27a-common/ramdisk/fstab.qcom:root/fstab.qcom \
    device/samsung/msm7x27a-common/ramdisk/init.qcom.rc:root/init.qcom.rc \
    device/samsung/msm7x27a-common/ramdisk/init.qcom.bt.rc:root/init.qcom.bt.rc \
    device/samsung/msm7x27a-common/ramdisk/init.qcom.class_main.sh:root/init.qcom.class_main.sh \
    device/samsung/msm7x27a-common/ramdisk/init.qcom.ril.path.sh:root/init.qcom.ril.path.sh \
    device/samsung/msm7x27a-common/ramdisk/init.qcom.usb.rc:root/init.qcom.usb.rc \
    device/samsung/msm7x27a-common/ramdisk/lpm.rc:root/lpm.rc \
    device/samsung/msm7x27a-common/ramdisk/ueventd.qcom.rc:root/ueventd.qcom.rc

## Bluetooth files
PRODUCT_COPY_FILES += \
    device/samsung/msm7x27a-common/prebuilt/bluetooth/init.bt.sh:system/etc/init.bt.sh \

## Misc files
PRODUCT_COPY_FILES += \
    vendor/samsung/msm7x27a-common/proprietary/system/lib/liboncrpc.so:obj/lib/liboncrpc.so \
    vendor/samsung/msm7x27a-common/proprietary/system/lib/libnv.so:obj/lib/libnv.so

## Keychars
PRODUCT_COPY_FILES += \
    device/samsung/msm7x27a-common/prebuilt/usr/keychars/7x27a_kp.kcm:system/usr/keychars/7x27a_kp.kcm 

## Keylayout
PRODUCT_COPY_FILES += \
    device/samsung/msm7x27a-common/prebuilt/usr/keylayout/7x27a_kp.kl:system/usr/keylayout/7x27a_kp.kl \
    device/samsung/msm7x27a-common/prebuilt/usr/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    device/samsung/msm7x27a-common/prebuilt/usr/keylayout/atmel_mxt_ts.kl:system/usr/keylayout/atmel_mxt_ts.kl \
    device/samsung/msm7x27a-common/prebuilt/usr/keylayout/ft5x06_ts.kl:system/usr/keylayout/ft5x06_ts.kl \
    device/samsung/msm7x27a-common/prebuilt/usr/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    device/samsung/msm7x27a-common/prebuilt/usr/keylayout/surf_keypad.kl:system/usr/keylayout/surf_keypad.kl \
    device/samsung/msm7x27a-common/prebuilt/usr/keylayout/synaptics_rmi4_i2c.kl:system/usr/keylayout/synaptics_rmi4_i2c.kl 

## Touchscreen
PRODUCT_COPY_FILES += \
    device/samsung/msm7x27a-common/prebuilt/usr/idc/sec_touchscreen.idc:system/usr/idc/sec_touchscreen.idc

## Network
PRODUCT_COPY_FILES += \
    device/samsung/msm7x27a-common/prebuilt/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/samsung/msm7x27a-common/prebuilt/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
    device/samsung/msm7x27a-common/prebuilt/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf

## Audio
PRODUCT_COPY_FILES += \
    device/samsung/msm7x27a-common/prebuilt/audio/audio_policy.conf:system/etc/audio_policy.conf

## Charger
PRODUCT_PACKAGES += \
    charger \
    charger_res_images 

## WiFi
PRODUCT_PACKAGES += \
    libwpa_client \
    hostapd \
    wpa_supplicant

## Properties
PRODUCT_PROPERTY_OVERRIDES += \
    debug.composition.type=dyn \
    ro.opengles.version=131072 \
    ro.sf.lcd_density=160 \
    debug.gralloc.map_fb_memory=1 \
    debug.hwc.fakevsync=1

PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dexopt-data-only=1 \
    dalvik.vm.heapgrowthlimit=52m \
    dalvik.vm.heapsize=128m \
    dalvik.vm.heaptargetutilization=0.25

PRODUCT_PROPERTY_OVERRIDES += \
    com.qc.hardware=true \
    dev.pm.dyn_sample_period=700000 \
    dev.pm.dyn_samplingrate=1 \
    ro.vendor.extension_library=/system/lib/libqc-opt.so \
    debug.composition.type=dyn \
    persist.hwc.mdpcomp.enable=false

PRODUCT_PROPERTY_OVERRIDES += \
    mm.enable.smoothstreaming=true

PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp,adb \
    ro.vold.umsdirtyratio=50

PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dex2oat-filter=balanced \
    dalvik.vm.dex2oat-flags="--no-watch-dog" \
    dalvik.vm.image-dex2oat-filter=speed

PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=60

PRODUCT_PROPERTY_OVERRIDES += \
    debug.sf.hw=1

PRODUCT_PROPERTY_OVERRIDES += \
    persist.webview.provider=classic

PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.low_ram=true \
    config.disable_atlas=true \
    persist.sys.force_highendgfx=true \
    ro.config.max_starting_bg=6 \
    ro.sys.fw.bg_apps_limit=8

# ART
ADDITIONAL_DEFAULT_PROPERTIES += \
    dalvik.vm.dex2oat-Xms=8m \
    dalvik.vm.dex2oat-Xmx=96m \
    dalvik.vm.image-dex2oat-Xms=48m \
    dalvik.vm.image-dex2oat-Xmx=48m

$(call inherit-product, build/target/product/full.mk)
$(call inherit-product, device/common/gps/gps_eu_supl.mk)
$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)
$(call inherit-product, vendor/samsung/msm7x27a-common/samsung-common-vendor.mk)
