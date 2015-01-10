.class final Lcom/android/server/MmsServiceBroker$BinderService;
.super Lcom/android/internal/telephony/IMms$Stub;
.source "MmsServiceBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MmsServiceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MmsServiceBroker;


# direct methods
.method private constructor <init>(Lcom/android/server/MmsServiceBroker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-direct {p0}, Lcom/android/internal/telephony/IMms$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/MmsServiceBroker;Lcom/android/server/MmsServiceBroker$1;)V
    .locals 0
    .param p1    # Lcom/android/server/MmsServiceBroker;
    .param p2    # Lcom/android/server/MmsServiceBroker$1;

    invoke-direct {p0, p1}, Lcom/android/server/MmsServiceBroker$BinderService;-><init>(Lcom/android/server/MmsServiceBroker;)V

    return-void
.end method


# virtual methods
.method public addMultimediaMessageDraft(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # getter for: Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$400(Lcom/android/server/MmsServiceBroker;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SMS"

    const-string v2, "Add MMS draft"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # invokes: Lcom/android/server/MmsServiceBroker;->getAppOpsManager()Landroid/app/AppOpsManager;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$500(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    move-result-object v0

    const/16 v1, 0xf

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Lcom/android/server/MmsServiceBroker;->FAKE_MMS_DRAFT_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/android/server/MmsServiceBroker;->access$1100()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # invokes: Lcom/android/server/MmsServiceBroker;->getServiceGuarded()Lcom/android/internal/telephony/IMms;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$600(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/IMms;->addMultimediaMessageDraft(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public addTextMessageDraft(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # getter for: Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$400(Lcom/android/server/MmsServiceBroker;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SMS"

    const-string v2, "Add SMS draft"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # invokes: Lcom/android/server/MmsServiceBroker;->getAppOpsManager()Landroid/app/AppOpsManager;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$500(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    move-result-object v0

    const/16 v1, 0xf

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Lcom/android/server/MmsServiceBroker;->FAKE_SMS_DRAFT_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/android/server/MmsServiceBroker;->access$1000()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # invokes: Lcom/android/server/MmsServiceBroker;->getServiceGuarded()Lcom/android/internal/telephony/IMms;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$600(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/IMms;->addTextMessageDraft(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public archiveStoredConversation(Ljava/lang/String;JZ)Z
    .locals 4
    .param p1    # Ljava/lang/String;
    .param p2    # J
    .param p4    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # getter for: Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$400(Lcom/android/server/MmsServiceBroker;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SMS"

    const-string v2, "Update SMS/MMS message"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # invokes: Lcom/android/server/MmsServiceBroker;->getServiceGuarded()Lcom/android/internal/telephony/IMms;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$600(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IMms;->archiveStoredConversation(Ljava/lang/String;JZ)Z

    move-result v0

    return v0
.end method

.method public deleteStoredConversation(Ljava/lang/String;J)Z
    .locals 4
    .param p1    # Ljava/lang/String;
    .param p2    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # getter for: Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$400(Lcom/android/server/MmsServiceBroker;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SMS"

    const-string v2, "Delete conversation"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # invokes: Lcom/android/server/MmsServiceBroker;->getAppOpsManager()Landroid/app/AppOpsManager;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$500(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    move-result-object v0

    const/16 v1, 0xf

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # invokes: Lcom/android/server/MmsServiceBroker;->getServiceGuarded()Lcom/android/internal/telephony/IMms;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$600(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/IMms;->deleteStoredConversation(Ljava/lang/String;J)Z

    move-result v0

    goto :goto_0
.end method

.method public deleteStoredMessage(Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 3
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # getter for: Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$400(Lcom/android/server/MmsServiceBroker;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SMS"

    const-string v2, "Delete SMS/MMS message"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # invokes: Lcom/android/server/MmsServiceBroker;->getAppOpsManager()Landroid/app/AppOpsManager;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$500(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    move-result-object v0

    const/16 v1, 0xf

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # invokes: Lcom/android/server/MmsServiceBroker;->getServiceGuarded()Lcom/android/internal/telephony/IMms;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$600(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/IMms;->deleteStoredMessage(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v0

    goto :goto_0
.end method

.method public downloadMessage(JLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    .locals 9
    .param p1    # J
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # Landroid/net/Uri;
    .param p6    # Landroid/os/Bundle;
    .param p7    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # getter for: Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$400(Lcom/android/server/MmsServiceBroker;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.RECEIVE_MMS"

    const-string v2, "Download MMS message"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # invokes: Lcom/android/server/MmsServiceBroker;->getAppOpsManager()Landroid/app/AppOpsManager;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$500(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    move-result-object v0

    const/16 v1, 0x12

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2, p3}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # invokes: Lcom/android/server/MmsServiceBroker;->getServiceGuarded()Lcom/android/internal/telephony/IMms;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$600(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    move-result-object v1

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/IMms;->downloadMessage(JLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public getAutoPersisting()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # invokes: Lcom/android/server/MmsServiceBroker;->getServiceGuarded()Lcom/android/internal/telephony/IMms;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$600(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IMms;->getAutoPersisting()Z

    move-result v0

    return v0
.end method

.method public getCarrierConfigValues(J)Landroid/os/Bundle;
    .locals 1
    .param p1    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # invokes: Lcom/android/server/MmsServiceBroker;->getServiceGuarded()Lcom/android/internal/telephony/IMms;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$600(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/IMms;->getCarrierConfigValues(J)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public importMultimediaMessage(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JZZ)Landroid/net/Uri;
    .locals 8
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/net/Uri;
    .param p3    # Ljava/lang/String;
    .param p4    # J
    .param p6    # Z
    .param p7    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # getter for: Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$400(Lcom/android/server/MmsServiceBroker;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SMS"

    const-string v2, "Import MMS message"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # invokes: Lcom/android/server/MmsServiceBroker;->getAppOpsManager()Landroid/app/AppOpsManager;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$500(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    move-result-object v0

    const/16 v1, 0xf

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Lcom/android/server/MmsServiceBroker;->FAKE_MMS_SENT_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/android/server/MmsServiceBroker;->access$900()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # invokes: Lcom/android/server/MmsServiceBroker;->getServiceGuarded()Lcom/android/internal/telephony/IMms;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$600(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/IMms;->importMultimediaMessage(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JZZ)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public importTextMessage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JZZ)Landroid/net/Uri;
    .locals 11
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .param p4    # Ljava/lang/String;
    .param p5    # J
    .param p7    # Z
    .param p8    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # getter for: Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$400(Lcom/android/server/MmsServiceBroker;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SMS"

    const-string v2, "Import SMS message"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # invokes: Lcom/android/server/MmsServiceBroker;->getAppOpsManager()Landroid/app/AppOpsManager;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$500(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    move-result-object v0

    const/16 v1, 0xf

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Lcom/android/server/MmsServiceBroker;->FAKE_SMS_SENT_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/android/server/MmsServiceBroker;->access$800()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # invokes: Lcom/android/server/MmsServiceBroker;->getServiceGuarded()Lcom/android/internal/telephony/IMms;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$600(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Lcom/android/internal/telephony/IMms;->importTextMessage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JZZ)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public sendMessage(JLjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    .locals 9
    .param p1    # J
    .param p3    # Ljava/lang/String;
    .param p4    # Landroid/net/Uri;
    .param p5    # Ljava/lang/String;
    .param p6    # Landroid/os/Bundle;
    .param p7    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # getter for: Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$400(Lcom/android/server/MmsServiceBroker;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.SEND_SMS"

    const-string v2, "Send MMS message"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # invokes: Lcom/android/server/MmsServiceBroker;->getAppOpsManager()Landroid/app/AppOpsManager;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$500(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    move-result-object v0

    const/16 v1, 0x14

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2, p3}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # invokes: Lcom/android/server/MmsServiceBroker;->getServiceGuarded()Lcom/android/internal/telephony/IMms;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$600(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    move-result-object v1

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/IMms;->sendMessage(JLjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public sendStoredMessage(JLjava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    .locals 9
    .param p1    # J
    .param p3    # Ljava/lang/String;
    .param p4    # Landroid/net/Uri;
    .param p5    # Landroid/os/Bundle;
    .param p6    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # getter for: Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$400(Lcom/android/server/MmsServiceBroker;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.SEND_SMS"

    const-string v2, "Send stored MMS message"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # invokes: Lcom/android/server/MmsServiceBroker;->getAppOpsManager()Landroid/app/AppOpsManager;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$500(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    move-result-object v0

    const/16 v1, 0x14

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2, p3}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # invokes: Lcom/android/server/MmsServiceBroker;->getServiceGuarded()Lcom/android/internal/telephony/IMms;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$600(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    move-result-object v1

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/IMms;->sendStoredMessage(JLjava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public setAutoPersisting(Ljava/lang/String;Z)V
    .locals 3
    .param p1    # Ljava/lang/String;
    .param p2    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # getter for: Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$400(Lcom/android/server/MmsServiceBroker;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SMS"

    const-string v2, "Set auto persist"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # invokes: Lcom/android/server/MmsServiceBroker;->getAppOpsManager()Landroid/app/AppOpsManager;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$500(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    move-result-object v0

    const/16 v1, 0xf

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # invokes: Lcom/android/server/MmsServiceBroker;->getServiceGuarded()Lcom/android/internal/telephony/IMms;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$600(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/IMms;->setAutoPersisting(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public updateMmsDownloadStatus(II)V
    .locals 1
    .param p1    # I
    .param p2    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # invokes: Lcom/android/server/MmsServiceBroker;->enforceCarrierPrivilege()V
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$700(Lcom/android/server/MmsServiceBroker;)V

    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # invokes: Lcom/android/server/MmsServiceBroker;->getServiceGuarded()Lcom/android/internal/telephony/IMms;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$600(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/IMms;->updateMmsDownloadStatus(II)V

    return-void
.end method

.method public updateMmsSendStatus(I[BI)V
    .locals 1
    .param p1    # I
    .param p2    # [B
    .param p3    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # invokes: Lcom/android/server/MmsServiceBroker;->enforceCarrierPrivilege()V
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$700(Lcom/android/server/MmsServiceBroker;)V

    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # invokes: Lcom/android/server/MmsServiceBroker;->getServiceGuarded()Lcom/android/internal/telephony/IMms;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$600(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/IMms;->updateMmsSendStatus(I[BI)V

    return-void
.end method

.method public updateStoredMessageStatus(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Z
    .locals 3
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/net/Uri;
    .param p3    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # getter for: Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$400(Lcom/android/server/MmsServiceBroker;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SMS"

    const-string v2, "Update SMS/MMS message"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    # invokes: Lcom/android/server/MmsServiceBroker;->getServiceGuarded()Lcom/android/internal/telephony/IMms;
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$600(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/IMms;->updateStoredMessageStatus(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Z

    move-result v0

    return v0
.end method
