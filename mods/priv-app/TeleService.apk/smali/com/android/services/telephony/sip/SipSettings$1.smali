.class Lcom/android/services/telephony/sip/SipSettings$1;
.super Ljava/lang/Thread;
.source "SipSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/services/telephony/sip/SipSettings;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/sip/SipSettings;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lcom/android/services/telephony/sip/SipSettings;Landroid/content/Intent;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/sip/SipSettings$1;->this$0:Lcom/android/services/telephony/sip/SipSettings;

    iput-object p2, p0, Lcom/android/services/telephony/sip/SipSettings$1;->val$intent:Landroid/content/Intent;

    iput p3, p0, Lcom/android/services/telephony/sip/SipSettings$1;->val$resultCode:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v2, p0, Lcom/android/services/telephony/sip/SipSettings$1;->this$0:Lcom/android/services/telephony/sip/SipSettings;

    # getter for: Lcom/android/services/telephony/sip/SipSettings;->mProfile:Landroid/net/sip/SipProfile;
    invoke-static {v2}, Lcom/android/services/telephony/sip/SipSettings;->access$400(Lcom/android/services/telephony/sip/SipSettings;)Landroid/net/sip/SipProfile;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/services/telephony/sip/SipSettings$1;->this$0:Lcom/android/services/telephony/sip/SipSettings;

    iget-object v3, p0, Lcom/android/services/telephony/sip/SipSettings$1;->this$0:Lcom/android/services/telephony/sip/SipSettings;

    # getter for: Lcom/android/services/telephony/sip/SipSettings;->mProfile:Landroid/net/sip/SipProfile;
    invoke-static {v3}, Lcom/android/services/telephony/sip/SipSettings;->access$400(Lcom/android/services/telephony/sip/SipSettings;)Landroid/net/sip/SipProfile;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/services/telephony/sip/SipSettings;->deleteProfile(Landroid/net/sip/SipProfile;)V

    :cond_0
    iget-object v2, p0, Lcom/android/services/telephony/sip/SipSettings$1;->val$intent:Landroid/content/Intent;

    const-string v3, "sip_profile"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/sip/SipProfile;

    iget v2, p0, Lcom/android/services/telephony/sip/SipSettings$1;->val$resultCode:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/services/telephony/sip/SipSettings$1;->this$0:Lcom/android/services/telephony/sip/SipSettings;

    # invokes: Lcom/android/services/telephony/sip/SipSettings;->addProfile(Landroid/net/sip/SipProfile;)V
    invoke-static {v2, v1}, Lcom/android/services/telephony/sip/SipSettings;->access$500(Lcom/android/services/telephony/sip/SipSettings;Landroid/net/sip/SipProfile;)V

    :cond_1
    iget-object v2, p0, Lcom/android/services/telephony/sip/SipSettings$1;->this$0:Lcom/android/services/telephony/sip/SipSettings;

    # invokes: Lcom/android/services/telephony/sip/SipSettings;->updateProfilesStatus()V
    invoke-static {v2}, Lcom/android/services/telephony/sip/SipSettings;->access$600(Lcom/android/services/telephony/sip/SipSettings;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult, can not handle the profile:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/services/telephony/sip/SipSettings;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/services/telephony/sip/SipSettings;->access$700(Ljava/lang/String;)V

    goto :goto_0
.end method
