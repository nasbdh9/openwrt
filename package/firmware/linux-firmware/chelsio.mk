Package/cxgb3-firmware = $(call Package/firmware-default,Chelsio T3 Adapters firmware)
define Package/cxgb3-firmware/install
	$(INSTALL_DIR) $(1)/lib/firmware/cxgb3
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/cxgb3/* \
		$(1)/lib/firmware/cxgb3/
endef
$(eval $(call BuildPackage,cxgb3-firmware))

Package/cxgb4-firmware = $(call Package/firmware-default,Chelsio T4/5/6 Adapters firmware)
define Package/cxgb4-firmware/install
	$(INSTALL_DIR) $(1)/lib/firmware/cxgb4
	$(CP) \
		$(PKG_BUILD_DIR)/cxgb4/* \
		$(1)/lib/firmware/cxgb4
endef
$(eval $(call BuildPackage,cxgb4-firmware))
