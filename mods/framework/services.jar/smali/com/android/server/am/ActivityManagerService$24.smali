.class Lcom/android/server/am/ActivityManagerService$24;
.super Landroid/content/IIntentReceiver$Stub;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->startUser(IZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$foreground:Z

.field final synthetic val$oldUserId:I

.field final synthetic val$userId:I

.field final synthetic val$uss:Lcom/android/server/am/UserStartedState;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/UserStartedState;ZII)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$24;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$24;->val$uss:Lcom/android/server/am/UserStartedState;

    iput-boolean p3, p0, Lcom/android/server/am/ActivityManagerService$24;->val$foreground:Z

    iput p4, p0, Lcom/android/server/am/ActivityManagerService$24;->val$oldUserId:I

    iput p5, p0, Lcom/android/server/am/ActivityManagerService$24;->val$userId:I

    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 5
    .param p1    # Landroid/content/Intent;
    .param p2    # I
    .param p3    # Ljava/lang/String;
    .param p4    # Landroid/os/Bundle;
    .param p5    # Z
    .param p6    # Z
    .param p7    # I

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$24;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$24;->val$uss:Lcom/android/server/am/UserStartedState;

    iget-boolean v2, p0, Lcom/android/server/am/ActivityManagerService$24;->val$foreground:Z

    iget v3, p0, Lcom/android/server/am/ActivityManagerService$24;->val$oldUserId:I

    iget v4, p0, Lcom/android/server/am/ActivityManagerService$24;->val$userId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->onUserInitialized(Lcom/android/server/am/UserStartedState;ZII)V

    return-void
.end method
