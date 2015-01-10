.class Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$MyHandler;
.super Landroid/os/Handler;
.source "AccessibilityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field public static final MESSAGE_COMPUTE_CHANGED_WINDOWS:I = 0x1

.field public static final MESSAGE_NOTIFY_WINDOWS_CHANGED:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;Landroid/os/Looper;)V
    .locals 2
    .param p2    # Landroid/os/Looper;

    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$MyHandler;->this$0:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1    # Landroid/os/Message;

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$MyHandler;->this$0:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    invoke-virtual {v1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->computeChangedWindows()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$MyHandler;->this$0:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    # getter for: Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mCallback:Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;
    invoke-static {v1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->access$1600(Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;)Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;->onWindowsForAccessibilityChanged(Ljava/util/List;)V

    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$MyHandler;->this$0:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    # invokes: Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->clearAndRecycleWindows(Ljava/util/List;)V
    invoke-static {v1, v0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->access$1700(Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;Ljava/util/List;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
