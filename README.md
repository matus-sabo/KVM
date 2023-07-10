# KVM libvirt passthrough virtualization

QEMU / libvirt with virt-manager GUI

# Host os system 

- **Fedora 38** 
```bash
             .',;::::;,'.                edko@edko 
         .';:cccccccccccc:;,.            --------- 
      .;cccccccccccccccccccccc;.         OS: Fedora Linux 38 (Workstation Edition) x86_64 
    .:cccccccccccccccccccccccccc:.       Host: ALZA Alza BattleBox Ryzen RX 6900 X 
  .;ccccccccccccc;.:dddl:.;ccccccc;.     Kernel: 6.3.11-200.fc38.x86_64 
 .:ccccccccccccc;OWMKOOXMWd;ccccccc:.    Uptime: 49 mins 
.:ccccccccccccc;KMMc;cc;xMMc:ccccccc:.   Packages: 1900 (rpm), 9 (flatpak) 
,cccccccccccccc;MMM.;cc;;WW::cccccccc,   Shell: bash 5.2.15 
:cccccccccccccc;MMM.;cccccccccccccccc:   Resolution: 3440x1440 
:ccccccc;oxOOOo;MMM0OOk.;cccccccccccc:   DE: GNOME 44.2 
cccccc:0MMKxdd:;MMMkddc.;cccccccccccc;   WM: Mutter 
ccccc:XM0';cccc;MMM.;cccccccccccccccc'   WM Theme: Adwaita 
ccccc;MMo;ccccc;MMW.;ccccccccccccccc;    Theme: Adwaita [GTK2/3] 
ccccc;0MNc.ccc.xMMd:ccccccccccccccc;     Icons: Adwaita [GTK2/3] 
cccccc;dNMWXXXWM0::cccccccccccccc:,      Terminal: gnome-terminal 
cccccccc;.:odl:.;cccccccccccccc:,.       CPU: AMD Ryzen 9 5900X (24) @ 3.700GHz 
:cccccccccccccccccccccccccccc:'.         GPU: AMD ATI Radeon RX 7700S/7600S/7600M XT 
.:cccccccccccccccccccccc:;,..            GPU: AMD ATI Radeon RX 6800/6800 XT / 6900 XT 
  '::cccccccccccccc::;,.                 Memory: 3199MiB / 31983MiB 
```

# KVM os systems 

- **Fedora 38** 
```bash
             .',;::::;,'.                edko@edko-vm 
         .';:cccccccccccc:;,.            ------------ 
      .;cccccccccccccccccccccc;.         OS: Fedora Linux 38 (Workstation Editi 
    .:cccccccccccccccccccccccccc:.       Host: KVM/QEMU (Standard PC (Q35 + ICH 
  .;ccccccccccccc;.:dddl:.;ccccccc;.     Kernel: 6.3.11-200.fc38.x86_64 
 .:ccccccccccccc;OWMKOOXMWd;ccccccc:.    Uptime: 34 secs 
.:ccccccccccccc;KMMc;cc;xMMc:ccccccc:.   Packages: 1962 (rpm), 7 (flatpak) 
,cccccccccccccc;MMM.;cc;;WW::cccccccc,   Shell: bash 5.2.15 
:cccccccccccccc;MMM.;cccccccccccccccc:   Resolution: 3440x1440 
:ccccccc;oxOOOo;MMM0OOk.;cccccccccccc:   DE: GNOME 44.2 
cccccc:0MMKxdd:;MMMkddc.;cccccccccccc;   WM: Mutter 
ccccc:XM0';cccc;MMM.;cccccccccccccccc'   WM Theme: Adwaita 
ccccc;MMo;ccccc;MMW.;ccccccccccccccc;    Theme: Adwaita [GTK2/3] 
ccccc;0MNc.ccc.xMMd:ccccccccccccccc;     Icons: Adwaita [GTK2/3] 
cccccc;dNMWXXXWM0::cccccccccccccc:,      Terminal: gnome-terminal 
cccccccc;.:odl:.;cccccccccccccc:,.       CPU: AMD Ryzen 9 5900X (20) @ 3.692GHz 
:cccccccccccccccccccccccccccc:'.         GPU: AMD ATI Radeon RX 6800/6800 XT /  
.:cccccccccccccccccccccc:;,..            Memory: 1687MiB / 26011MiB 
  '::cccccccccccccc::;,.
```

- **Mac OSX** 
```bash
                    'c.          edko@edko-vm 
                 ,xNMM.          ------------ 
               .OMMMMo           OS: macOS 13.4.1 22F82 x86_64 
               OMMM0,            Host: iMacPro1,1 
     .;loddo:' loolloddol;.      Kernel: 22.5.0 
   cKMMMMMMMMMMNWMMMMMMMMMM0:    Uptime: 9 mins 
 .KMMMMMMMMMMMMMMMMMMMMMMMWd.    Packages: 2 (brew) 
 XMMMMMMMMMMMMMMMMMMMMMMMX.      Shell: zsh 5.9 
;MMMMMMMMMMMMMMMMMMMMMMMM:       Resolution: 3440x1440 
:MMMMMMMMMMMMMMMMMMMMMMMM:       DE: Aqua 
.MMMMMMMMMMMMMMMMMMMMMMMMX.      WM: Quartz Compositor 
 kMMMMMMMMMMMMMMMMMMMMMMMMWd.    WM Theme: Blue (Dark) 
 .XMMMMMMMMMMMMMMMMMMMMMMMMMMk   Terminal: HyperTerm 
  .XMMMMMMMMMMMMMMMMMMMMMMMMK.   Terminal Font: Menlo 
    kMMMMMMMMMMMMMMMMMMMMMMd     CPU: Intel (Haswell, no TSX) 
     ;KMMMMMMMWXXWMMMMMMMk.      GPU: AMD Radeon RX 6900 XT 
       .cooc,.    .,coo:.        Memory: 9000MiB / 26624MiB
```

- **Windows** 
```bash
        ,.=:!!t3Z3z.,                  matus@edko-vm
       :tt:::tt333EE3                  -------------
       Et:::ztt33EEEL @Ee.,      ..,   OS: Windows 11 Pro N x86_64
      ;tt:::tt333EE7 ;EEEEEEttttt33#   Host: QEMU Standard PC (Q35 + ICH9, 2009)
     :Et:::zt333EEQ. $EEEEEttttt33QL   Kernel: 10.0.22621
     it::::tt333EEF @EEEEEEttttt33F    Uptime: 5 mins
    ;3=*^```"*4EEV :EEEEEEttttt33@.    Packages: 4 (scoop)
    ,.=::::!t=., ` @EEEEEEtttz33QF     Shell: bash 5.2.15
   ;::::::::zt33)   "4EEEtttji3P*      Resolution: 3440x1440
  :t::::::::tt33.:Z3z..  `` ,..g.      DE: Aero
  i::::::::zt33F AEEEtttt::::ztF       WM: Explorer
 ;:::::::::t33V ;EEEttttt::::t3        WM Theme: aero
 E::::::::zt33L @EEEtttt::::z3F        CPU: AMD Ryzen 9 5900X (20) @ 3.700GHz
{3=*^```"*4E3) ;EEEtttt:::::tZ`        GPU: Caption
             ` :EEEEtttt::::z7         GPU: AMD Radeon RX 6900 XT
                 "VEzjt:;;z>*`         GPU
                                       Memory: 6099MiB / 26604MiB
```

# Build Specs

- **MB** | ASUS TUF X570-PRO WiFi

- **Processor** | AMD Ryzen 9 5900X

- **Graphics (host)** | SAPPHIRE PULSE AMD Radeon RX 7600 8 G

- **Graphics (VFIO)** | SAPPHIRE NITRO + Radeon RX 6900 XT Special Edition

- **Memory** | G.SKILL 32 GB KIT DDR 4 3600 MHz Trident Z RGB

- **Storage** | WD Black SN850 NVMe SSD 2 TB

# lspci
```bash
00:00.0 Host bridge [0600]: Advanced Micro Devices, Inc. [AMD] Starship/Matisse Root Complex [1022:1480]
00:00.2 IOMMU [0806]: Advanced Micro Devices, Inc. [AMD] Starship/Matisse IOMMU [1022:1481]
00:01.0 Host bridge [0600]: Advanced Micro Devices, Inc. [AMD] Starship/Matisse PCIe Dummy Host Bridge [1022:1482]
00:01.2 PCI bridge [0604]: Advanced Micro Devices, Inc. [AMD] Starship/Matisse GPP Bridge [1022:1483]
00:02.0 Host bridge [0600]: Advanced Micro Devices, Inc. [AMD] Starship/Matisse PCIe Dummy Host Bridge [1022:1482]
00:03.0 Host bridge [0600]: Advanced Micro Devices, Inc. [AMD] Starship/Matisse PCIe Dummy Host Bridge [1022:1482]
00:03.1 PCI bridge [0604]: Advanced Micro Devices, Inc. [AMD] Starship/Matisse GPP Bridge [1022:1483]
00:04.0 Host bridge [0600]: Advanced Micro Devices, Inc. [AMD] Starship/Matisse PCIe Dummy Host Bridge [1022:1482]
00:05.0 Host bridge [0600]: Advanced Micro Devices, Inc. [AMD] Starship/Matisse PCIe Dummy Host Bridge [1022:1482]
00:07.0 Host bridge [0600]: Advanced Micro Devices, Inc. [AMD] Starship/Matisse PCIe Dummy Host Bridge [1022:1482]
00:07.1 PCI bridge [0604]: Advanced Micro Devices, Inc. [AMD] Starship/Matisse Internal PCIe GPP Bridge 0 to bus[E:B] [1022:1484]
00:08.0 Host bridge [0600]: Advanced Micro Devices, Inc. [AMD] Starship/Matisse PCIe Dummy Host Bridge [1022:1482]
00:08.1 PCI bridge [0604]: Advanced Micro Devices, Inc. [AMD] Starship/Matisse Internal PCIe GPP Bridge 0 to bus[E:B] [1022:1484]
00:14.0 SMBus [0c05]: Advanced Micro Devices, Inc. [AMD] FCH SMBus Controller [1022:790b] (rev 61)
00:14.3 ISA bridge [0601]: Advanced Micro Devices, Inc. [AMD] FCH LPC Bridge [1022:790e] (rev 51)
00:18.0 Host bridge [0600]: Advanced Micro Devices, Inc. [AMD] Matisse/Vermeer Data Fabric: Device 18h; Function 0 [1022:1440]
00:18.1 Host bridge [0600]: Advanced Micro Devices, Inc. [AMD] Matisse/Vermeer Data Fabric: Device 18h; Function 1 [1022:1441]
00:18.2 Host bridge [0600]: Advanced Micro Devices, Inc. [AMD] Matisse/Vermeer Data Fabric: Device 18h; Function 2 [1022:1442]
00:18.3 Host bridge [0600]: Advanced Micro Devices, Inc. [AMD] Matisse/Vermeer Data Fabric: Device 18h; Function 3 [1022:1443]
00:18.4 Host bridge [0600]: Advanced Micro Devices, Inc. [AMD] Matisse/Vermeer Data Fabric: Device 18h; Function 4 [1022:1444]
00:18.5 Host bridge [0600]: Advanced Micro Devices, Inc. [AMD] Matisse/Vermeer Data Fabric: Device 18h; Function 5 [1022:1445]
00:18.6 Host bridge [0600]: Advanced Micro Devices, Inc. [AMD] Matisse/Vermeer Data Fabric: Device 18h; Function 6 [1022:1446]
00:18.7 Host bridge [0600]: Advanced Micro Devices, Inc. [AMD] Matisse/Vermeer Data Fabric: Device 18h; Function 7 [1022:1447]
01:00.0 PCI bridge [0604]: Advanced Micro Devices, Inc. [AMD] Matisse Switch Upstream [1022:57ad]
02:01.0 PCI bridge [0604]: Advanced Micro Devices, Inc. [AMD] Matisse PCIe GPP Bridge [1022:57a3]
02:02.0 PCI bridge [0604]: Advanced Micro Devices, Inc. [AMD] Matisse PCIe GPP Bridge [1022:57a3]
02:04.0 PCI bridge [0604]: Advanced Micro Devices, Inc. [AMD] Matisse PCIe GPP Bridge [1022:57a3]
02:05.0 PCI bridge [0604]: Advanced Micro Devices, Inc. [AMD] Matisse PCIe GPP Bridge [1022:57a3]
02:08.0 PCI bridge [0604]: Advanced Micro Devices, Inc. [AMD] Matisse PCIe GPP Bridge [1022:57a4]
02:09.0 PCI bridge [0604]: Advanced Micro Devices, Inc. [AMD] Matisse PCIe GPP Bridge [1022:57a4]
02:0a.0 PCI bridge [0604]: Advanced Micro Devices, Inc. [AMD] Matisse PCIe GPP Bridge [1022:57a4]
03:00.0 Non-Volatile memory controller [0108]: Sandisk Corp WD PC SN810 / Black SN850 NVMe SSD [15b7:5011] (rev 01)
04:00.0 PCI bridge [0604]: Advanced Micro Devices, Inc. [AMD/ATI] Navi 10 XL Upstream Port of PCI Express Switch [1002:1478] (rev 12)
05:00.0 PCI bridge [0604]: Advanced Micro Devices, Inc. [AMD/ATI] Navi 10 XL Downstream Port of PCI Express Switch [1002:1479] (rev 12)
06:00.0 VGA compatible controller [0300]: Advanced Micro Devices, Inc. [AMD/ATI] Navi 33 [Radeon RX 7700S/7600S/7600M XT] [1002:7480] (rev cf)
06:00.1 Audio device [0403]: Advanced Micro Devices, Inc. [AMD/ATI] Device [1002:ab30]
07:00.0 Network controller [0280]: Intel Corporation Wi-Fi 6 AX200 [8086:2723] (rev 1a)
08:00.0 Ethernet controller [0200]: Intel Corporation Ethernet Controller I225-V [8086:15f3] (rev 03)
09:00.0 Non-Essential Instrumentation [1300]: Advanced Micro Devices, Inc. [AMD] Starship/Matisse Reserved SPP [1022:1485]
09:00.1 USB controller [0c03]: Advanced Micro Devices, Inc. [AMD] Matisse USB 3.0 Host Controller [1022:149c]
09:00.3 USB controller [0c03]: Advanced Micro Devices, Inc. [AMD] Matisse USB 3.0 Host Controller [1022:149c]
0a:00.0 SATA controller [0106]: Advanced Micro Devices, Inc. [AMD] FCH SATA Controller [AHCI mode] [1022:7901] (rev 51)
0b:00.0 SATA controller [0106]: Advanced Micro Devices, Inc. [AMD] FCH SATA Controller [AHCI mode] [1022:7901] (rev 51)
0c:00.0 PCI bridge [0604]: Advanced Micro Devices, Inc. [AMD/ATI] Navi 10 XL Upstream Port of PCI Express Switch [1002:1478] (rev c0)
0d:00.0 PCI bridge [0604]: Advanced Micro Devices, Inc. [AMD/ATI] Navi 10 XL Downstream Port of PCI Express Switch [1002:1479]
0e:00.0 VGA compatible controller [0300]: Advanced Micro Devices, Inc. [AMD/ATI] Navi 21 [Radeon RX 6800/6800 XT / 6900 XT] [1002:73bf] (rev c0)
0e:00.1 Audio device [0403]: Advanced Micro Devices, Inc. [AMD/ATI] Navi 21/23 HDMI/DP Audio Controller [1002:ab28]
0f:00.0 Non-Essential Instrumentation [1300]: Advanced Micro Devices, Inc. [AMD] Starship/Matisse PCIe Dummy Function [1022:148a]
10:00.0 Non-Essential Instrumentation [1300]: Advanced Micro Devices, Inc. [AMD] Starship/Matisse Reserved SPP [1022:1485]
10:00.1 Encryption controller [1080]: Advanced Micro Devices, Inc. [AMD] Starship/Matisse Cryptographic Coprocessor PSPCPP [1022:1486]
10:00.3 USB controller [0c03]: Advanced Micro Devices, Inc. [AMD] Matisse USB 3.0 Host Controller [1022:149c]
10:00.4 Audio device [0403]: Advanced Micro Devices, Inc. [AMD] Starship/Matisse HD Audio Controller [1022:1487]
```

# lsusb
```bash
Bus 006 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
Bus 005 Device 005: ID 09da:fa10 A4Tech Co., Ltd. USB Device 
Bus 005 Device 004: ID 09da:fac7 A4Tech Co., Ltd. USB Device 
Bus 005 Device 003: ID 0c76:120c JMTek, LLC. CMI-9010-BK
Bus 005 Device 002: ID 0c45:6366 Microdia Webcam Vitade AF
Bus 005 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
Bus 004 Device 002: ID 125f:a67a A-DATA Technology Co., Ltd. SD700
Bus 004 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
Bus 003 Device 002: ID 0b05:1939 ASUSTek Computer, Inc. AURA LED Controller
Bus 003 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
Bus 002 Device 003: ID 0bda:8153 Realtek Semiconductor Corp. RTL8153 Gigabit Ethernet Adapter
Bus 002 Device 002: ID 2109:0817 VIA Labs, Inc. USB3.0 Hub             
Bus 002 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
Bus 001 Device 005: ID 1e71:2007 NZXT NZXT USB Device
Bus 001 Device 008: ID 8087:0029 Intel Corp. AX200 Bluetooth
Bus 001 Device 007: ID 1a40:0801 Terminus Technology Inc. USB 2.0 Hub
Bus 001 Device 006: ID 2109:2817 VIA Labs, Inc. USB2.0 Hub             
Bus 001 Device 004: ID 2109:0102 VIA Labs, Inc. USB 2.0 BILLBOARD             
Bus 001 Device 002: ID 1a40:0801 Terminus Technology Inc. USB 2.0 Hub
Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub

```

# BIOS 

## Grub enable IOMMU
Add amd_iommu=on to /etc/default/grub

GRUB_CMDLINE_LINUX="... amd_iommu=on ..."

## VFIO kernel modules
Create /etc/modules-load.d/vfio.conf to enable VFIO kernel modules
```
vfio
vfio-pci
vfio_virqfd
vfio_iommu_type1
```

## VFIO config
Create /etc/modprobe.d/vfio.conf with PCI ids of devices you would like to passthrough
```
options vfio-pci ids=1002:73bf,1002:ab28
```

## Update GRUB
```bash
sudo grub2-mkconfig -o /boot/efi/EFI/fedora/grub.cfg
sudo dracut -fv
```

## Install libvirt
```bash
sudo dnf install @virtualization
sudo systemctl start libvirtd
sudo systemctl enable libvirtd
sudo usermod -a -G libvirt $(whoami)
```

# Fedora VM ( vm-sample/fedora.xml )
Working out of the box

# Windows VM ( vm-sample/windows.xml )
Install virtio drivers to windows VM
https://github.com/virtio-win/virtio-win-pkg-scripts/tree/master

# OSX VM ( vm-sample/osx.xml )

Cpu `cores` value must be power of 2 ( 2, 4, 8, 16, ... )

```xml
<topology sockets="5" dies="1" cores="2" threads="2"/>
```

## Apple OSK key
You need set correct `osk` key value in `vm-sample/osx.xml` you can use google or copy from [OSX-KVM/macOS-libvirt-Catalina.xml](https://github.com/kholia/OSX-KVM/blob/master/macOS-libvirt-Catalina.xml)
```xml
<qemu:arg value="isa-applesmc,osk=..."/>
```

## MacOS Installer
Clone [OSX-KVM](https://github.com/kholia/OSX-KVM) 

Run `fetch-macOS-v2.py` to download macOS installer
```bash
./fetch-macOS-v2.py
```

Convert downloaded dmg installer to img 
```bash
dmg2img -i BaseSystem.dmg BaseSystem.img
```

Copy `BaseSystem.img` to root of this repository

## Opencore boot
Download [thenickdude](https://github.com/thenickdude/KVM-Opencore) [OpenCore ISO](https://github.com/thenickdude/KVM-Opencore/releases)
and put it root of this repository

I am using `OpenCore-v20.iso` if you use different version you will have to update `scripts/osx-efi-mount.sh` to match name of the file.

Run `./scripts/osx-efi-mount.sh` to mount `OpenCore-v20.iso` in read / write mode.

You will see mounted `EFI` folder in root of this repository 

I need to modify only `EFI/OC/config.plist` file

If you need other modifications follow [OpenCore](https://dortania.github.io/OpenCore-Install-Guide) guide.

## Opencore config.plist boot args

**agdpmod=pikera** | GPU blackscreen fix | 0e:00.0 VGA compatible controller [0300]: Advanced Micro Devices, Inc. [AMD/ATI] Navi 21 [Radeon RX 6800/6800 XT / 6900 XT] [1002:73bf] (rev c0)

**alcid=11** | Audio device | 10:00.4 Audio device [0403]: Advanced Micro Devices, Inc. [AMD] Starship/Matisse HD Audio Controller [1022:1487]


Sample of `config.plist` - `boot-args`
```xml
<key>boot-args</key>
<string>keepsyms=1 agdpmod=pikera alcid=11</string>
```

## Opencore config.plist SMBIOS

Generate new [SMBIOS](https://github.com/corpnewt/GenSMBIOS) for `iMacPro1,1` and replace in `PlatformInfo` -> `Generic`

Sample of generated SMBIOS
```bash
  #######################################################
 #              iMacPro1,1 SMBIOS Info                 #
#######################################################

Type:         iMacPro1,1
Serial:       C02ZNTY3HX87
Board Serial: C029451044NJG361H
SmUUID:       0872E5FF-8416-4FB3-9039-0EE691FB1CB1
Apple ROM:    F0B0E7D1B5E5
```


Sample of `config.plist` - `PlatformInfo` -> `Generic`
```xml
<key>Generic</key>
<dict>
    <key>AdviseFeatures</key>
    <false/>
    <key>MLB</key>
    <string>C029451044NJG361H</string>
    <key>MaxBIOSVersion</key>
    <false/>
    <key>ProcessorType</key>
    <integer>0</integer>
    <key>ROM</key>
    <data>m7zhIYfl</data>
    <key>SpoofVendor</key>
    <true/>
    <key>SystemMemoryStatus</key>
    <string>Auto</string>
    <key>SystemProductName</key>
    <string>iMacPro1,1</string>
    <key>SystemSerialNumber</key>
    <string>F0B0E7D1B5E5</string>
    <key>SystemUUID</key>
    <string>0872E5FF-8416-4FB3-9039-0EE691FB1CB1</string>
</dict>
```
## Opencore config.plist boot resolution (optional)
You can modify `Resolution` (during boot time) to match your display in my case (3440x1440@32)

Sample of `config.plist` - `Output`
```xml
<key>Output</key>
<dict>
    <key>ClearScreenOnModeSwitch</key>
    <false/>
    <key>ConsoleMode</key>
    <string></string>
    <key>DirectGopRendering</key>
    <false/>
    <key>ForceResolution</key>
    <false/>
    <key>GopBurstMode</key>
    <false/>
    <key>GopPassThrough</key>
    <string>Disabled</string>
    <key>IgnoreTextInGraphics</key>
    <false/>
    <key>ProvideConsoleGop</key>
    <true/>
    <key>ReconnectGraphicsOnConnect</key>
    <false/>
    <key>ReconnectOnResChange</key>
    <false/>
    <key>ReplaceTabWithSpace</key>
    <false/>
    <key>Resolution</key>
    <string>3440x1440@32</string>
    <key>SanitiseClearScreen</key>
    <false/>
    <key>TextRenderer</key>
    <string>BuiltinGraphics</string>
    <key>UIScale</key>
    <integer>0</integer>
    <key>UgaPassThrough</key>
    <false/>
</dict>
```
Run `./scripts/osx-efi-umount.sh` to unmount `OpenCore-v20.iso`

# Postinstall VFIO

## libvirt hooks 

Create hooks directroy

```bash
sudo mkdir /etc/libvirt/hooks
```

Mount /etc/libvirt/hooks to `./hooks` as local user

```bash
 ./scripts/hooks-mount.sh
```

Unmount `./hooks`, set permissions and restart `libvirtd` service

```bash
 ./scripts/hooks-umount.sh
```

## Switch displays libvirt hook

Install dependecy and copy from `./hooks-sample` to `./hooks` folder

```
sudo dnf install ddcutil
```

Set correct ENV values in `./hooks/kvm.conf`

## Debug
```
journalctl -u virtqemud
```

# Thanks to
[OSX-KVM](https://github.com/kholia/OSX-KVM)

[KVM-Opencore](https://github.com/thenickdude/KVM-Opencore)

[DarwinKVM](https://github.com/royalgraphx/DarwinKVM)

[GenSMBIOS](https://github.com/corpnewt/GenSMBIOS)

[Fedora virtio](https://docs.fedoraproject.org/en-US/quick-docs/creating-windows-virtual-machines-using-virtio-drivers)

[Arch PCI passthrough examples](https://wiki.archlinux.org/title/PCI_passthrough_via_OVMF/Examples)

[VFIO-Tools](https://github.com/PassthroughPOST/VFIO-Tools)