include $(TOPDIR)/rules.mk

PKG_NAME:=ffol-fastdreg
PKG_VERSION:=1
PKG_RELEASE:=1

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/ffol-fastdreg
  SECTION:=fastd
  CATEGORY:=Freifunk Oldenburg
  TITLE:=Adds script which registers fastd-key
  DEPENDS:=+gluon-mesh-vpn-fastd
endef

define Package/ffol-fastdreg/description
	Adds script which registers fastd-key
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/ffol-fastdreg/install
	$(CP) ./files/* $(1)/
endef

$(eval $(call BuildPackage,fastdreg))
