.class Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;
.super Ljava/lang/Object;
.source "BluetoothControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeviceInfo"
.end annotation


# instance fields
.field bonded:Z

.field connectionState:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;->connectionState:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$1;)V
    .locals 0
    .param p1    # Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$1;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;-><init>()V

    return-void
.end method
