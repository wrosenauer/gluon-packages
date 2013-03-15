#
# Copyright (C) 2006-2010 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=nodewatcher
PKG_VERSION:=0.0
PKG_RELEASE:=1

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)
PKG_SOURCE:=$(PKG_NAME).tar.gz
PKG_SOURCE_URL:=http://dev.freifunk-ol.de/packages
PKG_MD5SUM:=d92ad620c41261a45a46e18bfdf139e1

include $(INCLUDE_DIR)/package.mk

define Package/nodewatcher
  SECTION:=utilities
  CATEGORY:=Utilities
  TITLE:=Freifunk Oldenburg Nodewatcher
  URL:=http://freifunk-ol.de
  DEPENDS:=+libuci +ip
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_BUILD_DIR)/nodewatcher $(1)/usr/bin/
endef

define Package/nodewatcher/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_BUILD_DIR)/nodewatcher $(1)/usr/bin/
endef

$(eval $(call BuildPackage,nodewatcher))