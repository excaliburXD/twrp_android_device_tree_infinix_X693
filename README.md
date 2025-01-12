# Costum Recovery device tree for Infinix Note 10 (rocko)

## Status

Current state of features (from [here](https://twrp.me/faq/OfficialMaintainer.html)):

### Blocking checks

- [X] Correct screen/recovery size
- [X] Working Touch, screen
- [X] Backup to internal/microSD
- [X] Restore from internal/microSD
- [X] reboot to system (Stockrom not tested)
- [X] ADB

### Medium checks

- [X] update.zip sideload
- [X] UI colors (red/blue inversions)
- [X] Screen goes off and on
- [X] F2FS/EXT4 Support, exFAT/NTFS where supported
- [X] all important partitions listed in mount/backup lists
- [X] backup/restore to/from external (USB-OTG) storage
- [X] [backup/restore to/from adb](https://gerrit.omnirom.org/#/c/15943/)
- [X] decrypt /data
- [X] Correct date

### Minor checks

- [X] MTP export
- [X] reboot to bootloader
- [X] reboot to recovery
- [X] poweroff
- [X] battery level
- [X] temperature
- [X] input devices via USB (USB-OTG)
- [X] USB mass storage export
- [X] set brightness
- [X] vibrate
- [X] screenshot
- [X] partition SD card

## Building

```bash
source build/envsetup.sh
lunch twrp_rocko-eng
mka bootimage
```
## Device Information
```
- Manufacturer: infinix mobility limited
- Platform: mt6768
- Codename: Infinix-X693
- Brand: Infinix
- Flavor: sys_tssi_64_infinix-user
- Release Version: 11
- Kernel Version: 4.14.186
- Id: RP1A.200720.011
- Incremental: 230524V832
- CPU Abilist: arm64-v8a,armeabi-v7a,armeabi
- A/B Device: true
- Treble Device: true
- Fingerprint: Infinix/X693-GL/Infinix-X693:11/RP1A.200720.011/230524V666:user/release-keys
- Branch: sys_tssi_64_infinix-user-11-RP1A.200720.011-334839-release-keys
```
