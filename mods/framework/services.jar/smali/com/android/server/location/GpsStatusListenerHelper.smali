.class abstract Lcom/android/server/location/GpsStatusListenerHelper;
.super Lcom/android/server/location/RemoteListenerHelper;
.source "GpsStatusListenerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GpsStatusListenerHelper$Operation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/location/RemoteListenerHelper",
        "<",
        "Landroid/location/IGpsStatusListener;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "GpsStatusListenerHelper"

    invoke-direct {p0, v0}, Lcom/android/server/location/RemoteListenerHelper;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onFirstFix(I)V
    .locals 1
    .param p1    # I

    new-instance v0, Lcom/android/server/location/GpsStatusListenerHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/GpsStatusListenerHelper$1;-><init>(Lcom/android/server/location/GpsStatusListenerHelper;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/GpsStatusListenerHelper;->foreach(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    return-void
.end method

.method public onNmeaReceived(JLjava/lang/String;)V
    .locals 1
    .param p1    # J
    .param p3    # Ljava/lang/String;

    new-instance v0, Lcom/android/server/location/GpsStatusListenerHelper$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/location/GpsStatusListenerHelper$4;-><init>(Lcom/android/server/location/GpsStatusListenerHelper;JLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/GpsStatusListenerHelper;->foreach(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    return-void
.end method

.method public onStatusChanged(Z)V
    .locals 1
    .param p1    # Z

    new-instance v0, Lcom/android/server/location/GpsStatusListenerHelper$2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/GpsStatusListenerHelper$2;-><init>(Lcom/android/server/location/GpsStatusListenerHelper;Z)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/GpsStatusListenerHelper;->foreach(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    return-void
.end method

.method public onSvStatusChanged(I[I[F[F[FIII)V
    .locals 10
    .param p1    # I
    .param p2    # [I
    .param p3    # [F
    .param p4    # [F
    .param p5    # [F
    .param p6    # I
    .param p7    # I
    .param p8    # I

    new-instance v0, Lcom/android/server/location/GpsStatusListenerHelper$3;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/location/GpsStatusListenerHelper$3;-><init>(Lcom/android/server/location/GpsStatusListenerHelper;I[I[F[F[FIII)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/GpsStatusListenerHelper;->foreach(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    return-void
.end method
