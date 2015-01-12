.class Lcom/android/dialer/interactions/UndemoteOutgoingCallReceiver$1;
.super Ljava/lang/Thread;
.source "UndemoteOutgoingCallReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/interactions/UndemoteOutgoingCallReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/interactions/UndemoteOutgoingCallReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/dialer/interactions/UndemoteOutgoingCallReceiver;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/interactions/UndemoteOutgoingCallReceiver$1;->this$0:Lcom/android/dialer/interactions/UndemoteOutgoingCallReceiver;

    iput-object p2, p0, Lcom/android/dialer/interactions/UndemoteOutgoingCallReceiver$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/dialer/interactions/UndemoteOutgoingCallReceiver$1;->val$number:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v2, p0, Lcom/android/dialer/interactions/UndemoteOutgoingCallReceiver$1;->this$0:Lcom/android/dialer/interactions/UndemoteOutgoingCallReceiver;

    iget-object v3, p0, Lcom/android/dialer/interactions/UndemoteOutgoingCallReceiver$1;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/dialer/interactions/UndemoteOutgoingCallReceiver$1;->val$number:Ljava/lang/String;

    # invokes: Lcom/android/dialer/interactions/UndemoteOutgoingCallReceiver;->getContactIdFromPhoneNumber(Landroid/content/Context;Ljava/lang/String;)J
    invoke-static {v2, v3, v4}, Lcom/android/dialer/interactions/UndemoteOutgoingCallReceiver;->access$000(Lcom/android/dialer/interactions/UndemoteOutgoingCallReceiver;Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/dialer/interactions/UndemoteOutgoingCallReceiver$1;->this$0:Lcom/android/dialer/interactions/UndemoteOutgoingCallReceiver;

    iget-object v3, p0, Lcom/android/dialer/interactions/UndemoteOutgoingCallReceiver$1;->val$context:Landroid/content/Context;

    # invokes: Lcom/android/dialer/interactions/UndemoteOutgoingCallReceiver;->undemoteContactWithId(Landroid/content/Context;J)V
    invoke-static {v2, v3, v0, v1}, Lcom/android/dialer/interactions/UndemoteOutgoingCallReceiver;->access$100(Lcom/android/dialer/interactions/UndemoteOutgoingCallReceiver;Landroid/content/Context;J)V

    :cond_0
    return-void
.end method
