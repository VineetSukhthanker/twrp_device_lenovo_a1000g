$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Otherwise, If you have 32-bit device, add the below line instead of above line
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_minimal.mk

# Another common config inclusion
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)

# If you are building from OmniROM's minimal source, Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Replace ${_CODENAME_} with your Device Name's Value.
# Replace ${_VENDORNAME_} with your Brand's / Manufacturer's Value.
PRODUCT_COPY_FILES += device/lenovo/a1000g/prebuilt/kernel:kernel
# Fles under $(LOCAL_PATH)/recovery/root/ gets automatically copied into recovery
# PRODUCT_COPY_FILES += $(LOCAL_PATH)/recovery/root/*:root/*

PRODUCT_DEVICE := a1000g
PRODUCT_NAME := omni_a1000g
PRODUCT_BRAND := lenovo
PRODUCT_MODEL := a1000g
PRODUCT_MANUFACTURER := lenovo

# Forcefully add mtp support (adb is already there)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Add fingerprint from Stock ROM build.prop
PRODUCT_BUILD_PROP_OVERRIDES += \
    # These lines are from my device. You MUST Replace yours.
    BUILD_FINGERPRINT="Lenovo/IdeaTab_A1000-G/A1000G:4.1.2/JZO54K/A1000G_A412_01_08_130605_2G:user/release-keys" \
    PRIVATE_BUILD_DESC="huaqin17_td_tb_jb-user LenovoIdeaTab_A1000-G A1000G_A412_01_08_130605_2G release-keys"
