.class Lcom/android/phone/PrimarySubSelectionController$1;
.super Landroid/content/BroadcastReceiver;
.source "PrimarySubSelectionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PrimarySubSelectionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PrimarySubSelectionController;


# direct methods
.method constructor <init>(Lcom/android/phone/PrimarySubSelectionController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/PrimarySubSelectionController$1;->this$0:Lcom/android/phone/PrimarySubSelectionController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/4 v8, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "slot"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "ss"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/PrimarySubSelectionController$1;->this$0:Lcom/android/phone/PrimarySubSelectionController;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_SIM_STATE_CHANGED intent received on slot = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "SIM STATE IS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/phone/PrimarySubSelectionController;->logd(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/PrimarySubSelectionController;->access$000(Lcom/android/phone/PrimarySubSelectionController;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/phone/PrimarySubSelectionController$1;->this$0:Lcom/android/phone/PrimarySubSelectionController;

    # getter for: Lcom/android/phone/PrimarySubSelectionController;->mIccLoaded:[Z
    invoke-static {v4}, Lcom/android/phone/PrimarySubSelectionController;->access$100(Lcom/android/phone/PrimarySubSelectionController;)[Z

    move-result-object v4

    aput-boolean v8, v4, v2

    const-string v4, "LOADED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/phone/PrimarySubSelectionController$1;->this$0:Lcom/android/phone/PrimarySubSelectionController;

    # getter for: Lcom/android/phone/PrimarySubSelectionController;->mIccLoaded:[Z
    invoke-static {v4}, Lcom/android/phone/PrimarySubSelectionController;->access$100(Lcom/android/phone/PrimarySubSelectionController;)[Z

    move-result-object v4

    const/4 v5, 0x1

    aput-boolean v5, v4, v2

    iget-object v4, p0, Lcom/android/phone/PrimarySubSelectionController$1;->this$0:Lcom/android/phone/PrimarySubSelectionController;

    invoke-virtual {v4}, Lcom/android/phone/PrimarySubSelectionController;->getPrimarySlot()I

    move-result v1

    iget-object v4, p0, Lcom/android/phone/PrimarySubSelectionController$1;->this$0:Lcom/android/phone/PrimarySubSelectionController;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_SIM_STATE_CHANGED current defalut dds :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDataSubscription()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroid/telephony/SubscriptionManager;->getSlotId(J)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/phone/PrimarySubSelectionController;->logd(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/PrimarySubSelectionController;->access$000(Lcom/android/phone/PrimarySubSelectionController;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/phone/PrimarySubSelectionController$1;->this$0:Lcom/android/phone/PrimarySubSelectionController;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_SIM_STATE_CHANGED  primay slot is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , icc loaded slot is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/phone/PrimarySubSelectionController;->logd(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/PrimarySubSelectionController;->access$000(Lcom/android/phone/PrimarySubSelectionController;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDataSubscription()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/telephony/SubscriptionManager;->getSlotId(J)I

    move-result v4

    if-ne v4, v1, :cond_1

    iget-object v4, p0, Lcom/android/phone/PrimarySubSelectionController$1;->this$0:Lcom/android/phone/PrimarySubSelectionController;

    # setter for: Lcom/android/phone/PrimarySubSelectionController;->mRestoreDdsToPrimarySub:Z
    invoke-static {v4, v8}, Lcom/android/phone/PrimarySubSelectionController;->access$202(Lcom/android/phone/PrimarySubSelectionController;Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/phone/PrimarySubSelectionController$1;->this$0:Lcom/android/phone/PrimarySubSelectionController;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_SIM_STATE_CHANGED mRestoreDdsToPrimarySub: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/PrimarySubSelectionController$1;->this$0:Lcom/android/phone/PrimarySubSelectionController;

    # getter for: Lcom/android/phone/PrimarySubSelectionController;->mRestoreDdsToPrimarySub:Z
    invoke-static {v6}, Lcom/android/phone/PrimarySubSelectionController;->access$200(Lcom/android/phone/PrimarySubSelectionController;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/phone/PrimarySubSelectionController;->logd(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/PrimarySubSelectionController;->access$000(Lcom/android/phone/PrimarySubSelectionController;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/phone/PrimarySubSelectionController$1;->this$0:Lcom/android/phone/PrimarySubSelectionController;

    # getter for: Lcom/android/phone/PrimarySubSelectionController;->mRestoreDdsToPrimarySub:Z
    invoke-static {v4}, Lcom/android/phone/PrimarySubSelectionController;->access$200(Lcom/android/phone/PrimarySubSelectionController;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-ne v2, v1, :cond_2

    iget-object v4, p0, Lcom/android/phone/PrimarySubSelectionController$1;->this$0:Lcom/android/phone/PrimarySubSelectionController;

    const-string v5, "restore dds to primary card"

    # invokes: Lcom/android/phone/PrimarySubSelectionController;->logd(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/PrimarySubSelectionController;->access$000(Lcom/android/phone/PrimarySubSelectionController;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v4

    aget-wide v4, v4, v8

    invoke-static {v4, v5}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(J)V

    iget-object v4, p0, Lcom/android/phone/PrimarySubSelectionController$1;->this$0:Lcom/android/phone/PrimarySubSelectionController;

    # setter for: Lcom/android/phone/PrimarySubSelectionController;->mRestoreDdsToPrimarySub:Z
    invoke-static {v4, v8}, Lcom/android/phone/PrimarySubSelectionController;->access$202(Lcom/android/phone/PrimarySubSelectionController;Z)Z

    :cond_2
    iget-object v4, p0, Lcom/android/phone/PrimarySubSelectionController$1;->this$0:Lcom/android/phone/PrimarySubSelectionController;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_SIM_STATE_CHANGED intent received on slot = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "icc is loaded ? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/PrimarySubSelectionController$1;->this$0:Lcom/android/phone/PrimarySubSelectionController;

    # getter for: Lcom/android/phone/PrimarySubSelectionController;->mIccLoaded:[Z
    invoke-static {v6}, Lcom/android/phone/PrimarySubSelectionController;->access$100(Lcom/android/phone/PrimarySubSelectionController;)[Z

    move-result-object v6

    aget-boolean v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/phone/PrimarySubSelectionController;->logd(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/PrimarySubSelectionController;->access$000(Lcom/android/phone/PrimarySubSelectionController;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v4, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/PrimarySubSelectionController$1;->this$0:Lcom/android/phone/PrimarySubSelectionController;

    const-string v5, "Recieved EVENT ACTION_LOCALE_CHANGED"

    # invokes: Lcom/android/phone/PrimarySubSelectionController;->logd(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/PrimarySubSelectionController;->access$000(Lcom/android/phone/PrimarySubSelectionController;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/phone/PrimarySubSelectionController$1;->this$0:Lcom/android/phone/PrimarySubSelectionController;

    # getter for: Lcom/android/phone/PrimarySubSelectionController;->mSIMChangedDialog:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/android/phone/PrimarySubSelectionController;->access$300(Lcom/android/phone/PrimarySubSelectionController;)Landroid/app/AlertDialog;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/PrimarySubSelectionController$1;->this$0:Lcom/android/phone/PrimarySubSelectionController;

    # getter for: Lcom/android/phone/PrimarySubSelectionController;->mSIMChangedDialog:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/android/phone/PrimarySubSelectionController;->access$300(Lcom/android/phone/PrimarySubSelectionController;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/PrimarySubSelectionController$1;->this$0:Lcom/android/phone/PrimarySubSelectionController;

    const-string v5, "Update SIMChanged dialog"

    # invokes: Lcom/android/phone/PrimarySubSelectionController;->logd(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/PrimarySubSelectionController;->access$000(Lcom/android/phone/PrimarySubSelectionController;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/phone/PrimarySubSelectionController$1;->this$0:Lcom/android/phone/PrimarySubSelectionController;

    # getter for: Lcom/android/phone/PrimarySubSelectionController;->mSIMChangedDialog:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/android/phone/PrimarySubSelectionController;->access$300(Lcom/android/phone/PrimarySubSelectionController;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v4, p0, Lcom/android/phone/PrimarySubSelectionController$1;->this$0:Lcom/android/phone/PrimarySubSelectionController;

    invoke-virtual {v4}, Lcom/android/phone/PrimarySubSelectionController;->alertSIMChanged()V

    goto/16 :goto_0
.end method
