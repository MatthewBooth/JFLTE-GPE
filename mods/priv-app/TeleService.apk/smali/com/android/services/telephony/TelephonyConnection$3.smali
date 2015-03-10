.class Lcom/android/services/telephony/TelephonyConnection$3;
.super Lcom/android/internal/telephony/Connection$ListenerBase;
.source "TelephonyConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/TelephonyConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/TelephonyConnection;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/TelephonyConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/TelephonyConnection$3;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    invoke-direct {p0}, Lcom/android/internal/telephony/Connection$ListenerBase;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioQualityChanged(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection$3;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/TelephonyConnection;->setAudioQuality(I)V

    return-void
.end method

.method public onLocalVideoCapabilityChanged(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection$3;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/TelephonyConnection;->setLocalVideoCapable(Z)V

    return-void
.end method

.method public onRemoteVideoCapabilityChanged(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection$3;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/TelephonyConnection;->setRemoteVideoCapable(Z)V

    return-void
.end method

.method public onVideoProviderChanged(Landroid/telecom/Connection$VideoProvider;)V
    .locals 1
    .param p1    # Landroid/telecom/Connection$VideoProvider;

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection$3;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/TelephonyConnection;->setVideoProvider(Landroid/telecom/Connection$VideoProvider;)V

    return-void
.end method

.method public onVideoStateChanged(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection$3;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/TelephonyConnection;->setVideoState(I)V

    return-void
.end method
