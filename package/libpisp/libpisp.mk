################################################################################
#
# libpisp
#
################################################################################

LIBPISP_VERSION = v1.0.6
LIBPISP_SITE = $(call github,raspberrypi,libpisp,$(LIBPISP_VERSION))
LIBPISP_LICENSE = BSD-2-Clause
LIBPISP_LICENSE_FILES = LICENSE
LIBPISP_INSTALL_STAGING = YES
LIBPISP_DEPENDENCIES = host-pkgconf host-meson nlohmann_json

# Add meson options
LIBPISP_CONF_OPTS = -Dlogging=enabled

# Disable logging if BR2_PACKAGE_LIBPISP_DISABLE_LOGGING is set
ifeq ($(BR2_PACKAGE_LIBPISP_DISABLE_LOGGING),y)
LIBPISP_CONF_OPTS += -Dlogging=disabled
endif

# Use the Meson build system
$(eval $(meson-package))
