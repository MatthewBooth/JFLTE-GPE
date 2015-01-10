.class public Lcom/android/server/BasePermissionDialog;
.super Landroid/app/AlertDialog;
.source "BasePermissionDialog.java"


# instance fields
.field private mConsuming:Z

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;

    const/high16 v3, 0x20000

    const v1, 0x103047c

    invoke-direct {p0, p1, v1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcom/android/server/BasePermissionDialog$1;

    invoke-direct {v1, p0}, Lcom/android/server/BasePermissionDialog$1;-><init>(Lcom/android/server/BasePermissionDialog;)V

    iput-object v1, p0, Lcom/android/server/BasePermissionDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/BasePermissionDialog;->mConsuming:Z

    invoke-virtual {p0}, Lcom/android/server/BasePermissionDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p0}, Lcom/android/server/BasePermissionDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Lcom/android/server/BasePermissionDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const-string v1, "Permission Dialog"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/server/BasePermissionDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const v1, 0x1010355

    invoke-virtual {p0, v1}, Lcom/android/server/BasePermissionDialog;->setIconAttribute(I)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/server/BasePermissionDialog;Z)Z
    .locals 0
    .param p0    # Lcom/android/server/BasePermissionDialog;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/server/BasePermissionDialog;->mConsuming:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/BasePermissionDialog;Z)V
    .locals 0
    .param p0    # Lcom/android/server/BasePermissionDialog;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/server/BasePermissionDialog;->setEnabled(Z)V

    return-void
.end method

.method private setEnabled(Z)V
    .locals 2
    .param p1    # Z

    const v1, 0x1020019

    invoke-virtual {p0, v1}, Lcom/android/server/BasePermissionDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    const v1, 0x102001a

    invoke-virtual {p0, v1}, Lcom/android/server/BasePermissionDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    const v1, 0x102001b

    invoke-virtual {p0, v1}, Lcom/android/server/BasePermissionDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1    # Landroid/view/KeyEvent;

    iget-boolean v0, p0, Lcom/android/server/BasePermissionDialog;->mConsuming:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    invoke-direct {p0, v2}, Lcom/android/server/BasePermissionDialog;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/server/BasePermissionDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/BasePermissionDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
