#
# Copyright (C) 2006-2010 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=nodewatcher
PKG_VERSION:=2013-02-13
PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=git://freifunk-ol.de/ffol/software/nodewatcher.git
PKG_SOURCE:=/
PKG_SOURCE_VERSION:=HEAD
PKG_SOURCE_SUBDIR:=/

PKG_BUILD_DIR:=$(BUILD_DIR)

include $(INCLUDE_DIR)/package.mk

define Package/nodewatcher
  SECTION:=utilities
  CATEGORY:=Utilities
  TITLE:=Tool to collect system information of routers running openwrt and print or store them into a file
  DEPENDS:=+libuci
  URL:=http://git.freifunk-ol.de/index.php?p=ffol%2Fsoftware%2Fnodewatcher.git&a=summary
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