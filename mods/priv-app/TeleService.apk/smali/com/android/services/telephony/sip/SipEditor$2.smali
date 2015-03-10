.class Lcom/android/services/telephony/sip/SipEditor$2;
.super Ljava/lang/Object;
.source "SipEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/services/telephony/sip/SipEditor;->replaceProfile(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/sip/SipEditor;

.field final synthetic val$newProfile:Landroid/net/sip/SipProfile;

.field final synthetic val$oldProfile:Landroid/net/sip/SipProfile;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/sip/SipEditor;Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/sip/SipEditor$2;->this$0:Lcom/android/services/telephony/sip/SipEditor;

    iput-object p2, p0, Lcom/android/services/telephony/sip/SipEditor$2;->val$oldProfile:Landroid/net/sip/SipProfile;

    iput-object p3, p0, Lcom/android/services/telephony/sip/SipEditor$2;->val$newProfile:Landroid/net/sip/SipProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/services/telephony/sip/SipEditor$2;->this$0:Lcom/android/services/telephony/sip/SipEditor;

    iget-object v2, p0, Lcom/android/services/telephony/sip/SipEditor$2;->val$oldProfile:Landroid/net/sip/SipProfile;

    # invokes: Lcom/android/services/telephony/sip/SipEditor;->deleteAndUnregisterProfile(Landroid/net/sip/SipProfile;)V
    invoke-static {v1, v2}, Lcom/android/services/telephony/sip/SipEditor;->access$200(Lcom/android/services/telephony/sip/SipEditor;Landroid/net/sip/SipProfile;)V

    iget-object v1, p0, Lcom/android/services/telephony/sip/SipEditor$2;->this$0:Lcom/android/services/telephony/sip/SipEditor;

    iget-object v2, p0, Lcom/android/services/telephony/sip/SipEditor$2;->val$newProfile:Landroid/net/sip/SipProfile;

    # invokes: Lcom/android/services/telephony/sip/SipEditor;->saveAndRegisterProfile(Landroid/net/sip/SipProfile;)V
    invoke-static {v1, v2}, Lcom/android/services/telephony/sip/SipEditor;->access$300(Lcom/android/services/telephony/sip/SipEditor;Landroid/net/sip/SipProfile;)V

    iget-object v1, p0, Lcom/android/services/telephony/sip/SipEditor$2;->this$0:Lcom/android/services/telephony/sip/SipEditor;

    invoke-virtual {v1}, Lcom/android/services/telephony/sip/SipEditor;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "replaceProfile, can not save/register new SipProfile, exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/services/telephony/sip/SipEditor;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/services/telephony/sip/SipEditor;->access$400(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/services/telephony/sip/SipEditor$2;->this$0:Lcom/android/services/telephony/sip/SipEditor;

    # invokes: Lcom/android/services/telephony/sip/SipEditor;->showAlert(Ljava/lang/Throwable;)V
    invoke-static {v1, v0}, Lcom/android/services/telephony/sip/SipEditor;->access$500(Lcom/android/services/telephony/sip/SipEditor;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
