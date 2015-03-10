.class Lcom/android/services/telephony/sip/SipConnectionService$2;
.super Ljava/lang/Object;
.source "SipConnectionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/services/telephony/sip/SipConnectionService;->findProfile(Ljava/lang/String;Lcom/android/services/telephony/sip/SipConnectionService$IProfileFinderCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/sip/SipConnectionService;

.field final synthetic val$callback:Lcom/android/services/telephony/sip/SipConnectionService$IProfileFinderCallback;

.field final synthetic val$profileUri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/sip/SipConnectionService;Ljava/lang/String;Lcom/android/services/telephony/sip/SipConnectionService$IProfileFinderCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/sip/SipConnectionService$2;->this$0:Lcom/android/services/telephony/sip/SipConnectionService;

    iput-object p2, p0, Lcom/android/services/telephony/sip/SipConnectionService$2;->val$profileUri:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/services/telephony/sip/SipConnectionService$2;->val$callback:Lcom/android/services/telephony/sip/SipConnectionService$IProfileFinderCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/services/telephony/sip/SipConnectionService$2;->this$0:Lcom/android/services/telephony/sip/SipConnectionService;

    # getter for: Lcom/android/services/telephony/sip/SipConnectionService;->mSipProfileDb:Lcom/android/services/telephony/sip/SipProfileDb;
    invoke-static {v5}, Lcom/android/services/telephony/sip/SipConnectionService;->access$100(Lcom/android/services/telephony/sip/SipConnectionService;)Lcom/android/services/telephony/sip/SipProfileDb;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/services/telephony/sip/SipProfileDb;->retrieveSipProfileList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/sip/SipProfile;

    iget-object v5, p0, Lcom/android/services/telephony/sip/SipConnectionService$2;->val$profileUri:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v4, v1

    :cond_1
    move-object v2, v4

    iget-object v5, p0, Lcom/android/services/telephony/sip/SipConnectionService$2;->this$0:Lcom/android/services/telephony/sip/SipConnectionService;

    # getter for: Lcom/android/services/telephony/sip/SipConnectionService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/services/telephony/sip/SipConnectionService;->access$200(Lcom/android/services/telephony/sip/SipConnectionService;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/android/services/telephony/sip/SipConnectionService$2$1;

    invoke-direct {v6, p0, v2}, Lcom/android/services/telephony/sip/SipConnectionService$2$1;-><init>(Lcom/android/services/telephony/sip/SipConnectionService$2;Landroid/net/sip/SipProfile;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
