.class Lcom/android/systemui/SystemUIApplication$1;
.super Landroid/content/BroadcastReceiver;
.source "SystemUIApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/SystemUIApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/SystemUIApplication;


# direct methods
.method constructor <init>(Lcom/android/systemui/SystemUIApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/SystemUIApplication$1;->this$0:Lcom/android/systemui/SystemUIApplication;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/SystemUIApplication$1;->this$0:Lcom/android/systemui/SystemUIApplication;

    # getter for: Lcom/android/systemui/SystemUIApplication;->mBootCompleted:Z
    invoke-static {v2}, Lcom/android/systemui/SystemUIApplication;->access$000(Lcom/android/systemui/SystemUIApplication;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/SystemUIApplication$1;->this$0:Lcom/android/systemui/SystemUIApplication;

    invoke-virtual {v2, p0}, Lcom/android/systemui/SystemUIApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v2, p0, Lcom/android/systemui/SystemUIApplication$1;->this$0:Lcom/android/systemui/SystemUIApplication;

    const/4 v3, 0x1

    # setter for: Lcom/android/systemui/SystemUIApplication;->mBootCompleted:Z
    invoke-static {v2, v3}, Lcom/android/systemui/SystemUIApplication;->access$002(Lcom/android/systemui/SystemUIApplication;Z)Z

    iget-object v2, p0, Lcom/android/systemui/SystemUIApplication$1;->this$0:Lcom/android/systemui/SystemUIApplication;

    # getter for: Lcom/android/systemui/SystemUIApplication;->mServicesStarted:Z
    invoke-static {v2}, Lcom/android/systemui/SystemUIApplication;->access$100(Lcom/android/systemui/SystemUIApplication;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/SystemUIApplication$1;->this$0:Lcom/android/systemui/SystemUIApplication;

    # getter for: Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;
    invoke-static {v2}, Lcom/android/systemui/SystemUIApplication;->access$200(Lcom/android/systemui/SystemUIApplication;)[Lcom/android/systemui/SystemUI;

    move-result-object v2

    array-length v0, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/SystemUIApplication$1;->this$0:Lcom/android/systemui/SystemUIApplication;

    # getter for: Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;
    invoke-static {v2}, Lcom/android/systemui/SystemUIApplication;->access$200(Lcom/android/systemui/SystemUIApplication;)[Lcom/android/systemui/SystemUI;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/systemui/SystemUI;->onBootCompleted()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
