.class public abstract Landroid/bluetooth/le/AdvertiseCallback;
.super Ljava/lang/Object;
.source "AdvertiseCallback.java"


# static fields
.field public static final ADVERTISE_FAILED_ALREADY_STARTED:I = 0x3

.field public static final ADVERTISE_FAILED_DATA_TOO_LARGE:I = 0x1

.field public static final ADVERTISE_FAILED_FEATURE_UNSUPPORTED:I = 0x5

.field public static final ADVERTISE_FAILED_INTERNAL_ERROR:I = 0x4

.field public static final ADVERTISE_FAILED_TOO_MANY_ADVERTISERS:I = 0x2

.field public static final ADVERTISE_SUCCESS:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartFailure(I)V
    .locals 0
    .param p1    # I

    return-void
.end method

.method public onStartSuccess(Landroid/bluetooth/le/AdvertiseSettings;)V
    .locals 0
    .param p1    # Landroid/bluetooth/le/AdvertiseSettings;

    return-void
.end method
