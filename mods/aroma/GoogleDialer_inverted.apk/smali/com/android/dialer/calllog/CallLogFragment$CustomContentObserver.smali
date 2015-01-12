.class Lcom/android/dialer/calllog/CallLogFragment$CustomContentObserver;
.super Landroid/database/ContentObserver;
.source "CallLogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/calllog/CallLogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/calllog/CallLogFragment;


# direct methods
.method public constructor <init>(Lcom/android/dialer/calllog/CallLogFragment;)V
    .locals 1

    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogFragment$CustomContentObserver;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    # getter for: Lcom/android/dialer/calllog/CallLogFragment;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/android/dialer/calllog/CallLogFragment;->access$000(Lcom/android/dialer/calllog/CallLogFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1    # Z

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$CustomContentObserver;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    const/4 v1, 0x1

    # setter for: Lcom/android/dialer/calllog/CallLogFragment;->mRefreshDataRequired:Z
    invoke-static {v0, v1}, Lcom/android/dialer/calllog/CallLogFragment;->access$102(Lcom/android/dialer/calllog/CallLogFragment;Z)Z

    return-void
.end method
