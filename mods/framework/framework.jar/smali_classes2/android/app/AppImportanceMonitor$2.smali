.class Landroid/app/AppImportanceMonitor$2;
.super Landroid/os/Handler;
.source "AppImportanceMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/AppImportanceMonitor;-><init>(Landroid/content/Context;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/AppImportanceMonitor;


# direct methods
.method constructor <init>(Landroid/app/AppImportanceMonitor;Landroid/os/Looper;)V
    .locals 0
    .param p2    # Landroid/os/Looper;

    iput-object p1, p0, Landroid/app/AppImportanceMonitor$2;->this$0:Landroid/app/AppImportanceMonitor;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1    # Landroid/os/Message;

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/app/AppImportanceMonitor$2;->this$0:Landroid/app/AppImportanceMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    const v3, 0xffff

    and-int/2addr v2, v3

    iget v3, p1, Landroid/os/Message;->arg2:I

    shr-int/lit8 v3, v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AppImportanceMonitor;->onImportanceChanged(III)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
