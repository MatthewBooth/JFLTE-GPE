.class Lcom/android/server/location/GpsLocationProvider$9;
.super Landroid/location/IGpsGeofenceHardware$Stub;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$9;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {p0}, Landroid/location/IGpsGeofenceHardware$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addCircularHardwareGeofence(IDDDIIII)Z
    .locals 2
    .param p1    # I
    .param p2    # D
    .param p4    # D
    .param p6    # D
    .param p8    # I
    .param p9    # I
    .param p10    # I
    .param p11    # I

    # invokes: Lcom/android/server/location/GpsLocationProvider;->native_add_geofence(IDDDIIII)Z
    invoke-static/range {p1 .. p11}, Lcom/android/server/location/GpsLocationProvider;->access$2700(IDDDIIII)Z

    move-result v0

    return v0
.end method

.method public isHardwareGeofenceSupported()Z
    .locals 1

    # invokes: Lcom/android/server/location/GpsLocationProvider;->native_is_geofence_supported()Z
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$2600()Z

    move-result v0

    return v0
.end method

.method public pauseHardwareGeofence(I)Z
    .locals 1
    .param p1    # I

    # invokes: Lcom/android/server/location/GpsLocationProvider;->native_pause_geofence(I)Z
    invoke-static {p1}, Lcom/android/server/location/GpsLocationProvider;->access$2900(I)Z

    move-result v0

    return v0
.end method

.method public removeHardwareGeofence(I)Z
    .locals 1
    .param p1    # I

    # invokes: Lcom/android/server/location/GpsLocationProvider;->native_remove_geofence(I)Z
    invoke-static {p1}, Lcom/android/server/location/GpsLocationProvider;->access$2800(I)Z

    move-result v0

    return v0
.end method

.method public resumeHardwareGeofence(II)Z
    .locals 1
    .param p1    # I
    .param p2    # I

    # invokes: Lcom/android/server/location/GpsLocationProvider;->native_resume_geofence(II)Z
    invoke-static {p1, p2}, Lcom/android/server/location/GpsLocationProvider;->access$3000(II)Z

    move-result v0

    return v0
.end method
