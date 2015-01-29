.class Landroid/widget/ListPopupWindow$ForwardingListener$TriggerLongPress;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListPopupWindow$ForwardingListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TriggerLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ListPopupWindow$ForwardingListener;


# direct methods
.method private constructor <init>(Landroid/widget/ListPopupWindow$ForwardingListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/ListPopupWindow$ForwardingListener$TriggerLongPress;->this$0:Landroid/widget/ListPopupWindow$ForwardingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ListPopupWindow$ForwardingListener;Landroid/widget/ListPopupWindow$1;)V
    .locals 0
    .param p1    # Landroid/widget/ListPopupWindow$ForwardingListener;
    .param p2    # Landroid/widget/ListPopupWindow$1;

    invoke-direct {p0, p1}, Landroid/widget/ListPopupWindow$ForwardingListener$TriggerLongPress;-><init>(Landroid/widget/ListPopupWindow$ForwardingListener;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Landroid/widget/ListPopupWindow$ForwardingListener$TriggerLongPress;->this$0:Landroid/widget/ListPopupWindow$ForwardingListener;

    # invokes: Landroid/widget/ListPopupWindow$ForwardingListener;->onLongPress()V
    invoke-static {v0}, Landroid/widget/ListPopupWindow$ForwardingListener;->access$1000(Landroid/widget/ListPopupWindow$ForwardingListener;)V

    return-void
.end method
