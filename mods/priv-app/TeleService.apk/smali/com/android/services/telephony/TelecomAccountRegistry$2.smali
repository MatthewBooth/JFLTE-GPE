.class Lcom/android/services/telephony/TelecomAccountRegistry$2;
.super Landroid/telephony/PhoneStateListener;
.source "TelecomAccountRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/TelecomAccountRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/TelecomAccountRegistry;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/TelecomAccountRegistry;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/TelecomAccountRegistry$2;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2
    .param p1    # Landroid/telephony/ServiceState;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/services/telephony/TelecomAccountRegistry$2;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    # getter for: Lcom/android/services/telephony/TelecomAccountRegistry;->mServiceState:I
    invoke-static {v1}, Lcom/android/services/telephony/TelecomAccountRegistry;->access$700(Lcom/android/services/telephony/TelecomAccountRegistry;)I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/services/telephony/TelecomAccountRegistry$2;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    # invokes: Lcom/android/services/telephony/TelecomAccountRegistry;->tearDownAccounts()V
    invoke-static {v1}, Lcom/android/services/telephony/TelecomAccountRegistry;->access$500(Lcom/android/services/telephony/TelecomAccountRegistry;)V

    iget-object v1, p0, Lcom/android/services/telephony/TelecomAccountRegistry$2;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    # invokes: Lcom/android/services/telephony/TelecomAccountRegistry;->setupAccounts()V
    invoke-static {v1}, Lcom/android/services/telephony/TelecomAccountRegistry;->access$600(Lcom/android/services/telephony/TelecomAccountRegistry;)V

    :cond_0
    iget-object v1, p0, Lcom/android/services/telephony/TelecomAccountRegistry$2;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    # setter for: Lcom/android/services/telephony/TelecomAccountRegistry;->mServiceState:I
    invoke-static {v1, v0}, Lcom/android/services/telephony/TelecomAccountRegistry;->access$702(Lcom/android/services/telephony/TelecomAccountRegistry;I)I

    return-void
.end method
