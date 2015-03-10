.class Lcom/android/services/telephony/sip/SipConnectionService$2$1;
.super Ljava/lang/Object;
.source "SipConnectionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/services/telephony/sip/SipConnectionService$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/services/telephony/sip/SipConnectionService$2;

.field final synthetic val$profileFound:Landroid/net/sip/SipProfile;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/sip/SipConnectionService$2;Landroid/net/sip/SipProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/sip/SipConnectionService$2$1;->this$1:Lcom/android/services/telephony/sip/SipConnectionService$2;

    iput-object p2, p0, Lcom/android/services/telephony/sip/SipConnectionService$2$1;->val$profileFound:Landroid/net/sip/SipProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/services/telephony/sip/SipConnectionService$2$1;->this$1:Lcom/android/services/telephony/sip/SipConnectionService$2;

    iget-object v0, v0, Lcom/android/services/telephony/sip/SipConnectionService$2;->val$callback:Lcom/android/services/telephony/sip/SipConnectionService$IProfileFinderCallback;

    iget-object v1, p0, Lcom/android/services/telephony/sip/SipConnectionService$2$1;->val$profileFound:Landroid/net/sip/SipProfile;

    invoke-interface {v0, v1}, Lcom/android/services/telephony/sip/SipConnectionService$IProfileFinderCallback;->onFound(Landroid/net/sip/SipProfile;)V

    return-void
.end method
