.class Lcom/android/services/telephony/sip/SipSettings$6;
.super Ljava/lang/Object;
.source "SipSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/services/telephony/sip/SipSettings;->unregisterProfile(Landroid/net/sip/SipProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/sip/SipSettings;

.field final synthetic val$p:Landroid/net/sip/SipProfile;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/sip/SipSettings;Landroid/net/sip/SipProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/sip/SipSettings$6;->this$0:Lcom/android/services/telephony/sip/SipSettings;

    iput-object p2, p0, Lcom/android/services/telephony/sip/SipSettings$6;->val$p:Landroid/net/sip/SipProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/services/telephony/sip/SipSettings$6;->this$0:Lcom/android/services/telephony/sip/SipSettings;

    # getter for: Lcom/android/services/telephony/sip/SipSettings;->mSipManager:Landroid/net/sip/SipManager;
    invoke-static {v1}, Lcom/android/services/telephony/sip/SipSettings;->access$1100(Lcom/android/services/telephony/sip/SipSettings;)Landroid/net/sip/SipManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/services/telephony/sip/SipSettings$6;->val$p:Landroid/net/sip/SipProfile;

    invoke-virtual {v2}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/sip/SipManager;->close(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterProfile, unregister failed, SipService died? Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/services/telephony/sip/SipSettings;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/services/telephony/sip/SipSettings;->access$700(Ljava/lang/String;)V

    goto :goto_0
.end method
