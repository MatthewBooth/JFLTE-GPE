.class Lcom/android/services/telephony/GsmConferenceController$1;
.super Landroid/telecom/Connection$Listener;
.source "GsmConferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/GsmConferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/GsmConferenceController;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/GsmConferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/GsmConferenceController$1;->this$0:Lcom/android/services/telephony/GsmConferenceController;

    invoke-direct {p0}, Landroid/telecom/Connection$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroyed(Landroid/telecom/Connection;)V
    .locals 1
    .param p1    # Landroid/telecom/Connection;

    iget-object v0, p0, Lcom/android/services/telephony/GsmConferenceController$1;->this$0:Lcom/android/services/telephony/GsmConferenceController;

    check-cast p1, Lcom/android/services/telephony/GsmConnection;

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/GsmConferenceController;->remove(Lcom/android/services/telephony/GsmConnection;)V

    return-void
.end method

.method public onDisconnected(Landroid/telecom/Connection;Landroid/telecom/DisconnectCause;)V
    .locals 1
    .param p1    # Landroid/telecom/Connection;
    .param p2    # Landroid/telecom/DisconnectCause;

    iget-object v0, p0, Lcom/android/services/telephony/GsmConferenceController$1;->this$0:Lcom/android/services/telephony/GsmConferenceController;

    # invokes: Lcom/android/services/telephony/GsmConferenceController;->recalculate()V
    invoke-static {v0}, Lcom/android/services/telephony/GsmConferenceController;->access$000(Lcom/android/services/telephony/GsmConferenceController;)V

    return-void
.end method

.method public onStateChanged(Landroid/telecom/Connection;I)V
    .locals 1
    .param p1    # Landroid/telecom/Connection;
    .param p2    # I

    iget-object v0, p0, Lcom/android/services/telephony/GsmConferenceController$1;->this$0:Lcom/android/services/telephony/GsmConferenceController;

    # invokes: Lcom/android/services/telephony/GsmConferenceController;->recalculate()V
    invoke-static {v0}, Lcom/android/services/telephony/GsmConferenceController;->access$000(Lcom/android/services/telephony/GsmConferenceController;)V

    return-void
.end method
