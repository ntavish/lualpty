include $(TOPDIR)/rules.mk

PKG_NAME:=lualpty
PKG_VERSION:=0.1
PKG_RELEASE:=1

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(PKG_VERSION)
PKG_BUILD_DEPENDS := +lua

include $(INCLUDE_DIR)/package.mk

define Package/lualpty
	CATEGORY:=Libraries
	DEFAULT:=y
	TITLE:=lualpty
	URL:=http://www.tset.de/lpty/
	DEPENDS:= +lua +liblua +libc
endef

define Package/lualpty/description
Lua library for pty calls
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
	cp src/* $(PKG_BUILD_DIR)/
endef


define Package/lualpty/install
	$(INSTALL_DIR) $(1)/usr/lib/lua
	$(INSTALL_BIN) -m0755 $(PKG_BUILD_DIR)/lpty.so $(1)/usr/lib/lua/
endef

$(eval $(call BuildPackage,lualpty))
