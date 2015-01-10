.class Lcom/android/server/location/GpsStatusListenerHelper$3;
.super Lcom/android/server/location/GpsStatusListenerHelper$Operation;
.source "GpsStatusListenerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GpsStatusListenerHelper;->onSvStatusChanged(I[I[F[F[FIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsStatusListenerHelper;

.field final synthetic val$almanacMask:I

.field final synthetic val$azimuths:[F

.field final synthetic val$elevations:[F

.field final synthetic val$ephemerisMask:I

.field final synthetic val$prns:[I

.field final synthetic val$snrs:[F

.field final synthetic val$svCount:I

.field final synthetic val$usedInFixMask:I


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsStatusListenerHelper;I[I[F[F[FIII)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/location/GpsStatusListenerHelper$3;->this$0:Lcom/android/server/location/GpsStatusListenerHelper;

    iput p2, p0, Lcom/android/server/location/GpsStatusListenerHelper$3;->val$svCount:I

    iput-object p3, p0, Lcom/android/server/location/GpsStatusListenerHelper$3;->val$prns:[I

    iput-object p4, p0, Lcom/android/server/location/GpsStatusListenerHelper$3;->val$snrs:[F

    iput-object p5, p0, Lcom/android/server/location/GpsStatusListenerHelper$3;->val$elevations:[F

    iput-object p6, p0, Lcom/android/server/location/GpsStatusListenerHelper$3;->val$azimuths:[F

    iput p7, p0, Lcom/android/server/location/GpsStatusListenerHelper$3;->val$ephemerisMask:I

    iput p8, p0, Lcom/android/server/location/GpsStatusListenerHelper$3;->val$almanacMask:I

    iput p9, p0, Lcom/android/server/location/GpsStatusListenerHelper$3;->val$usedInFixMask:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/location/GpsStatusListenerHelper$Operation;-><init>(Lcom/android/server/location/GpsStatusListenerHelper;Lcom/android/server/location/GpsStatusListenerHelper$1;)V

    return-void
.end method


# virtual methods
.method public execute(Landroid/location/IGpsStatusListener;)V
    .locals 9
    .param p1    # Landroid/location/IGpsStatusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v1, p0, Lcom/android/server/location/GpsStatusListenerHelper$3;->val$svCount:I

    iget-object v2, p0, Lcom/android/server/location/GpsStatusListenerHelper$3;->val$prns:[I

    iget-object v3, p0, Lcom/android/server/location/GpsStatusListenerHelper$3;->val$snrs:[F

    iget-object v4, p0, Lcom/android/server/location/GpsStatusListenerHelper$3;->val$elevations:[F

    iget-object v5, p0, Lcom/android/server/location/GpsStatusListenerHelper$3;->val$azimuths:[F

    iget v6, p0, Lcom/android/server/location/GpsStatusListenerHelper$3;->val$ephemerisMask:I

    iget v7, p0, Lcom/android/server/location/GpsStatusListenerHelper$3;->val$almanacMask:I

    iget v8, p0, Lcom/android/server/location/GpsStatusListenerHelper$3;->val$usedInFixMask:I

    move-object v0, p1

    invoke-interface/range {v0 .. v8}, Landroid/location/IGpsStatusListener;->onSvStatusChanged(I[I[F[F[FIII)V

    return-void
.end method

.method public bridge synthetic execute(Landroid/os/IInterface;)V
    .locals 0
    .param p1    # Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Landroid/location/IGpsStatusListener;

    invoke-virtual {p0, p1}, Lcom/android/server/location/GpsStatusListenerHelper$3;->execute(Landroid/location/IGpsStatusListener;)V

    return-void
.end method
