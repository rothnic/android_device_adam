#!/bin/sh

# Copyright (C) 2010 The Android Open Source Project
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

if [ $# -lt 1 ]
then
        echo "Usage:" $0 "<Source>"
        exit
fi

SOURCE=$1

VENDOR=notionink
DEVICE=adam

rm -r ../../../vendor/$VENDOR/$DEVICE
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary

# Pull needed standard libs
cp -a $SOURCE/system/lib/libaudio.so ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/lib/libaudiopolicy.so ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/lib/libcamera.so ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/lib/libcgdrv.so ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/lib/gles2_sanity.so ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/lib/gles2_simplespin.so ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/lib/libopencorehw.so ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/lib/omxplayer.so ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/lib/libhwmediarecorder.so ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/lib/libhwmediaplugin.so ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/lib/libgps.so ../../../vendor/$VENDOR/$DEVICE/proprietary

# Pull needed NV libs
cp -a $SOURCE/system/lib/libnvodm_dtvtuner.so ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/lib/libnvsm.so ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/lib/libnvddk_2d_v2.so ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/lib/libnvmm_utils.so ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/lib/libnvomxilclient.so ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/lib/libnvmm_video.so ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/lib/libnvrm_channel.so ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/lib/libnvmm_camera.so ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/lib/libnvdispatch_helper.so ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/lib/libnvmm_misc.so ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/lib/libnvmm_contentpipe.so ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/lib/libnvodm_misc.so ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/lib/libnvmm_tracklist.so ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/lib/libnvtestresults.so ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/lib/libnvapputil.so ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/lib/libnvmm_service.so ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/lib/libnvodm_hdmi.so ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/lib/libnvodm_imager.so ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/lib/libnvidia_graphics_jni.so ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/lib/libnvodm_query.so ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/lib/libnvidia_display_jni.so ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/lib/libnvwsi.so ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/lib/libnvmm_image.so ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/lib/libnvmm_vp6_video.so ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/lib/libnvdispmgr_d.so ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/lib/libnvmm.so ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/lib/libnvmm_parser.so ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/lib/libnvomx.so ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/lib/libnvos.so ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/lib/libnvddk_audiofx.so ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/lib/libnvddk_2d.so ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/lib/libnvrm_graphics.so ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/lib/libnvwinsys.so ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/lib/libnvrm.so ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/lib/libnvmm_manager.so ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/lib/libnvddk_aes_user.so ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/lib/libnvtestio.so ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/lib/libnvmm_writer.so ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/lib/libnvmm_videorenderer.so ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/lib/libnvmm_audio.so ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/lib/libnvec.so ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/lib/libpvnvomx.so ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/etc/pvnvomx.cfg ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/lib/nvmm_jpegenc_test.so ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/lib/nvec_update_app.so ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/lib/nvmm_videodec_test.so ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/lib/nvodm_imager_conformance.so ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/lib/nvmm_videoenc_test.so ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/lib/nvddk_2d_test_sanity.so ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/lib/nvodm_focuser_conformance.so ../../../vendor/$VENDOR/$DEVICE/proprietary

# Pull nvidia framework libs
cp -a $SOURCE/system/framework/com.nvidia.display.jar ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/framework/com.nvidia.graphics.jar ../../../vendor/$VENDOR/$DEVICE/proprietary

# Pull nvidia EGL libs
cp -a $SOURCE/system/lib/egl/libEGL_tegra.so ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/lib/egl/libGLESv1_CM_tegra.so ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/lib/egl/libGLESv2_tegra.so ../../../vendor/$VENDOR/$DEVICE/proprietary

# Pull nvidia permissions
cp -a $SOURCE/system/etc/permissions/com.nvidia.display.xml ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/etc/permissions/com.nvidia.graphics.xml ../../../vendor/$VENDOR/$DEVICE/proprietary

# Pull HW libs
cp -a $SOURCE/system/lib/hw/gralloc.tegra.so ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/lib/hw/overlay.tegra.so ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/lib/hw/lights.tegra.so ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/lib/hw/sensors.tegra.so ../../../vendor/$VENDOR/$DEVICE/proprietary

# Pull keychar files
cp -a $SOURCE/system/usr/keychars/nvec_keyboard.kcm.bin ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/usr/keychars/usb_keyboard_102_en_us.kcm.bin ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/usr/keychars/tegra-kbc.kcm.bin ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/usr/keychars/gpio-keys.kcm.bin ../../../vendor/$VENDOR/$DEVICE/proprietary

# Pull keylayout files
cp -a $SOURCE/system/usr/keylayout/gpio-keys.kl ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/usr/keylayout/nvec_keyboard.kl ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/usr/keylayout/tegra-kbc.kl ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/usr/keylayout/usb_keyboard_102_en_us.kl ../../../vendor/$VENDOR/$DEVICE/proprietary

# Pull bin files
cp -a $SOURCE/system/bin/nvmm_vc1dec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/bin/nvmm_wmaprodec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/bin/nvmm_h264dec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/bin/nvmm_service.axf ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/bin/nvmm_adtsdec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/bin/nvmm_wavdec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/bin/nvmm_reference.axf ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/bin/nv_hciattach ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/bin/nvmm_sorensondec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/bin/nvmm_mp3dec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/bin/nvddk_audiofx_core.axf ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/bin/nvmm_sw_mp3dec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/bin/nvmm_aacdec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/bin/nvrm_daemon ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/bin/nvmm_jpegenc.axf ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/bin/nvdmmultidisplay ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/bin/nvddk_audiofx_transport.axf ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/bin/nvmm_mp2dec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/bin/nvtest ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/bin/nvmm_mpeg4dec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/bin/nvmm_wmadec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/bin/nvmm_audiomixer.axf ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/bin/nvmm_manager.axf ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/bin/nvmm_jpegdec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/bin/nvrm_avp.axf ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/bin/tegrastats ../../../vendor/$VENDOR/$DEVICE/proprietary

# Pull wifi/bt files
cp -a $SOURCE/system/etc/bluez/bluecore6.psr ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/lib/hw/wlan/fw_bcm4329.bin ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/lib/hw/wlan/BCM4329B1.hcd ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/lib/hw/wlan/nvram.txt ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/lib/hw/wlan/fw_bcm4329_apsta.bin ../../../vendor/$VENDOR/$DEVICE/proprietary
cp -a $SOURCE/system/bin/bc_hciattach ../../../vendor/$VENDOR/$DEVICE/proprietary

./setup-makefiles.sh
