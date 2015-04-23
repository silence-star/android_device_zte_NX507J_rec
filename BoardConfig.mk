USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/nubia/NX507J/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := msm8974
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := krait
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := MSM8974

BOARD_KERNEL_CMDLINE := console=null androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37 ehci-hcd.park=3
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/nubia/NX507J/kernel

BOARD_HAS_NO_SELECT_BUTTON := true


TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"

BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000 --tags_offset 0x01e00000 --dt device/nubia/NX507J/dt_img

BOARD_RECOVERY_SWIPE 				:= true
RECOVERY_FSTAB_VERSION 				:= 2
TARGET_RECOVERY_FSTAB 				:= device/nubia/NX507J/fstab.qcom
BOARD_USE_CUSTOM_RECOVERY_FONT 		:= \"fontcn46_28x73.h\"

COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD #修复双清缓慢，非必需
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE #加上这个选项会使用QCOM的时间修复
TARGET_SCREEN_WIDTH := 1080
RECOVERY_USE_MIGRATED_STORAGE := true
