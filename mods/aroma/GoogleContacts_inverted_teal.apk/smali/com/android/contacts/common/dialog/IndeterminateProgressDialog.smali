.class public Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;
.super Landroid/app/DialogFragment;
.source "IndeterminateProgressDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivityReady:Z

.field private mAllowStateLoss:Z

.field private mCalledSuperDismiss:Z

.field private final mDismisser:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMinDisplayTime:J

.field private mOldDialog:Landroid/app/Dialog;

.field private mShowTime:J

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;->mShowTime:J

    iput-boolean v2, p0, Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;->mActivityReady:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;->mHandler:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;->mCalledSuperDismiss:Z

    new-instance v0, Lcom/android/contacts/common/dialog/IndeterminateProgressDialog$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/dialog/IndeterminateProgressDialog$1;-><init>(Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;)V

    iput-object v0, p0, Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;->mDismisser:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;)V
    .locals 0
    .param p0    # Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;

    invoke-direct {p0}, Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;->superDismiss()V

    return-void
.end method

.method private dismissWhenReady()V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;->mShowTime:J

    sub-long v0, v4, v6

    iget-wide v4, p0, Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;->mMinDisplayTime:J

    cmp-long v4, v0, v4

    if-ltz v4, :cond_0

    iget-object v4, p0, Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;->mDismisser:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    iget-wide v4, p0, Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;->mMinDisplayTime:J

    sub-long v2, v4, v0

    iget-object v4, p0, Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;->mDismisser:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public static show(Landroid/app/FragmentManager;Ljava/lang/CharSequence;Ljava/lang/CharSequence;J)Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;
    .locals 5
    .param p0    # Landroid/app/FragmentManager;
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # Ljava/lang/CharSequence;
    .param p3    # J

    new-instance v0, Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;

    invoke-direct {v0}, Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;-><init>()V

    iput-object p1, v0, Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;->mTitle:Ljava/lang/CharSequence;

    iput-object p2, v0, Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;->mMessage:Ljava/lang/CharSequence;

    iput-wide p3, v0, Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;->mMinDisplayTime:J

    sget-object v1, Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;->mShowTime:J

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;->setCancelable(Z)V

    return-object v0
.end method

.method private superDismiss()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;->mCalledSuperDismiss:Z

    iget-boolean v0, p0, Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;->mActivityReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;->mAllowStateLoss:Z

    if-eqz v0, :cond_1

    invoke-super {p0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0}, Landroid/app/DialogFragment;->dismiss()V

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;->mAllowStateLoss:Z

    invoke-direct {p0}, Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;->dismissWhenReady()V

    return-void
.end method

.method public dismissAllowingStateLoss()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;->mAllowStateLoss:Z

    invoke-direct {p0}, Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;->dismissWhenReady()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;->setRetainInstance(Z)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1    # Landroid/os/Bundle;

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;->mOldDialog:Landroid/app/Dialog;

    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;

    iget-object v0, p0, Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;->mOldDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;->mOldDialog:Landroid/app/Dialog;

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;->mActivityReady:Z

    iget-boolean v0, p0, Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;->mCalledSuperDismiss:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;->superDismiss()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/DialogFragment;->onStop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;->mActivityReady:Z

    return-void
.end method
