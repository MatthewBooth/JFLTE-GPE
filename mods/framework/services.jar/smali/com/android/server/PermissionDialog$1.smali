.class Lcom/android/server/PermissionDialog$1;
.super Landroid/os/Handler;
.source "PermissionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PermissionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PermissionDialog;


# direct methods
.method constructor <init>(Lcom/android/server/PermissionDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/PermissionDialog$1;->this$0:Lcom/android/server/PermissionDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1    # Landroid/os/Message;

    iget-object v0, p0, Lcom/android/server/PermissionDialog$1;->this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->mChoice:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/server/PermissionDialog;->access$000(Lcom/android/server/PermissionDialog;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/server/PermissionDialog$1;->this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->mService:Lcom/android/server/AppOpsService;
    invoke-static {v0}, Lcom/android/server/PermissionDialog;->access$400(Lcom/android/server/PermissionDialog;)Lcom/android/server/AppOpsService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/PermissionDialog$1;->this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->mCode:I
    invoke-static {v1}, Lcom/android/server/PermissionDialog;->access$100(Lcom/android/server/PermissionDialog;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/PermissionDialog$1;->this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->mUid:I
    invoke-static {v2}, Lcom/android/server/PermissionDialog;->access$200(Lcom/android/server/PermissionDialog;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/PermissionDialog$1;->this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->mPackageName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/PermissionDialog;->access$300(Lcom/android/server/PermissionDialog;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/AppOpsService;->notifyOperation(IILjava/lang/String;IZ)V

    iget-object v0, p0, Lcom/android/server/PermissionDialog$1;->this$0:Lcom/android/server/PermissionDialog;

    invoke-virtual {v0}, Lcom/android/server/PermissionDialog;->dismiss()V

    return-void

    :pswitch_1
    const/4 v4, 0x0

    goto :goto_0

    :pswitch_2
    const/4 v4, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
