.class public Lcom/android/server/usb/UsbStringTable;
.super Ljava/lang/Object;
.source "UsbStringTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbStringTable$UsbClassMap;
    }
.end annotation


# static fields
.field private static final STRING_USB_APPLICATION_SPECIFIC:Ljava/lang/String; = "Application Specific"

.field private static final STRING_USB_AUDIO:Ljava/lang/String; = "Audio"

.field private static final STRING_USB_CDC_CONTROL:Ljava/lang/String; = "CDC Control"

.field private static final STRING_USB_CDC_DATA:Ljava/lang/String; = "CDC Data"

.field private static final STRING_USB_CONTENT_SECURITY:Ljava/lang/String; = "Content Security"

.field private static final STRING_USB_DEVICE:Ljava/lang/String; = "Interface Descriptors"

.field private static final STRING_USB_DIAGNOSTIC_DEVICE:Ljava/lang/String; = "Diagnostic Device"

.field private static final STRING_USB_HID:Ljava/lang/String; = "HID"

.field private static final STRING_USB_HUB:Ljava/lang/String; = "Hub"

.field private static final STRING_USB_IMAGE:Ljava/lang/String; = "Image"

.field private static final STRING_USB_MASS_STROAGE:Ljava/lang/String; = "Mass Storage"

.field private static final STRING_USB_MISCELLANEOUS:Ljava/lang/String; = "Miscellaneous"

.field private static final STRING_USB_PERSONAL_HEALTHCARE:Ljava/lang/String; = "Personal Healthcare"

.field private static final STRING_USB_PHYSICAL:Ljava/lang/String; = "Physical"

.field private static final STRING_USB_PRINTER:Ljava/lang/String; = "Printer"

.field private static final STRING_USB_SMART_CARD:Ljava/lang/String; = "Smart Card"

.field private static final STRING_USB_VENDOR_SPECIFIC:Ljava/lang/String; = "Vendor Specific"

.field private static final STRING_USB_VIDEO:Ljava/lang/String; = "Video"

.field private static final STRING_USB_WIRELESS_CONTROLLER:Ljava/lang/String; = "Wireless Controller"

.field private static final TAG:Ljava/lang/String; = "UsbDevice"


# instance fields
.field private final UsbClassSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/server/usb/UsbStringTable$UsbClassMap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    iget-object v6, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "Interface Descriptors"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v1, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/4 v2, 0x1

    const-string v3, "Audio"

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v1, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/4 v2, 0x2

    const-string v3, "CDC Control"

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v1, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/4 v2, 0x3

    const-string v3, "HID"

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v1, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/4 v2, 0x5

    const-string v3, "Physical"

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/4 v2, 0x6

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-string v5, "Image"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v1, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/4 v2, 0x7

    const-string v3, "Printer"

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v1, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/16 v2, 0x8

    const-string v3, "Mass Storage"

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "Hub"

    const-string v6, "Full speed Hub"

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "Hub"

    const-string v6, "Hi-speed hub with single TT"

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v5, "Hub"

    const-string v6, "Hi-speed hub with multiple TTs"

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v1, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/16 v2, 0xa

    const-string v3, "CDC Data"

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v1, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/16 v2, 0xb

    const-string v3, "Smart Card"

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/16 v2, 0xd

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "Content Security"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v1, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/16 v2, 0xe

    const-string v3, "Video"

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v1, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/16 v2, 0xf

    const-string v3, "Personal Healthcare"

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/16 v2, 0xdc

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-string v5, "Diagnostic Device"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/16 v2, 0xe0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-string v5, "Wireless Controller"

    const-string v6, "Bluetooth Programming Interface"

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/16 v2, 0xe0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const-string v5, "Wireless Controller"

    const-string v6, "UWB Radio Control Interface"

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/16 v2, 0xe0

    const/4 v3, 0x1

    const/4 v4, 0x3

    const-string v5, "Wireless Controller"

    const-string v6, "Remote NDIS"

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/16 v2, 0xe0

    const/4 v3, 0x1

    const/4 v4, 0x4

    const-string v5, "Wireless Controller"

    const-string v6, "Bluetooth AMP Controller"

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/16 v2, 0xe0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v5, "Wireless Controller"

    const-string v6, "Host Wire Adapter Control/Data interface"

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/16 v2, 0xe0

    const/4 v3, 0x2

    const/4 v4, 0x2

    const-string v5, "Wireless Controller"

    const-string v6, "Device Wire Adapter Control/Data interface"

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/16 v2, 0xe0

    const/4 v3, 0x2

    const/4 v4, 0x3

    const-string v5, "Wireless Controller"

    const-string v6, "Device Wire Adapter Isochronous interface"

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/16 v2, 0xef

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-string v5, "Miscellaneous"

    const-string v6, "Active Sync device"

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/16 v2, 0xef

    const/4 v3, 0x1

    const/4 v4, 0x2

    const-string v5, "Miscellaneous"

    const-string v6, "Palm Sync"

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/16 v2, 0xef

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v5, "Miscellaneous"

    const-string v6, "Interface Association Descriptor"

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/16 v2, 0xef

    const/4 v3, 0x2

    const/4 v4, 0x2

    const-string v5, "Miscellaneous"

    const-string v6, "Wire Adapter Multifunction"

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/16 v2, 0xef

    const/4 v3, 0x3

    const/4 v4, 0x1

    const-string v5, "Miscellaneous"

    const-string v6, "Cable Based Association Framework"

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/16 v2, 0xfe

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-string v5, "Miscellaneous"

    const-string v6, "Device Firmware Upgrade"

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/16 v2, 0xfe

    const/4 v3, 0x2

    const/4 v4, 0x0

    const-string v5, "Miscellaneous"

    const-string v6, "IRDA Bridge device"

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/16 v2, 0xfe

    const/4 v3, 0x3

    const/4 v4, 0x0

    const-string v5, "Miscellaneous"

    const-string v6, "USB Test and Measurement Device"

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/16 v2, 0xfe

    const/4 v3, 0x3

    const/4 v4, 0x1

    const-string v5, "Miscellaneous"

    const-string v6, "USB Test and Measurement Device"

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v1, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/16 v2, 0xff

    const-string v3, "Vendor Specific"

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public findString(III)Ljava/lang/String;
    .locals 5
    .param p1    # I
    .param p2    # I
    .param p3    # I

    iget-object v4, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    monitor-enter v4

    :try_start_0
    const-string v2, "Unknown device"

    iget-object v3, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->equals(III)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    monitor-exit v4

    return-object v2

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
