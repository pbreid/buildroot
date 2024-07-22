################################################################################
#
# libcamera-apps
#
################################################################################

LIBCAMERA_APPS_VERSION = 1.5.0
LIBCAMERA_APPS_SITE = $(call github,raspberrypi,libcamera-apps,v$(LIBCAMERA_APPS_VERSION))
LIBCAMERA_APPS_LICENSE = BSD-2-Clause
LIBCAMERA_APPS_LICENSE_FILES = license.txt
LIBCAMERA_APPS_DEPENDENCIES = \
	host-pkgconf \
	boost \
	jpeg \
	libcamera \
	libexif \
	libpng \
	tiff

LIBCAMERA_APPS_CONF_OPTS = \
	-Denable_libav=disabled \
	-Denable_drm=enabled \
	-Denable_egl=disabled \
	-Denable_qt=disabled \
	-Denable_opencv=disabled \
	-Denable_tflite=disabled

$(eval $(meson-package))
