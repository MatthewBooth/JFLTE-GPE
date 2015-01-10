.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$3;
.super Ljava/lang/Object;
.source "NotificationPanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingTopOverscroll(FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # setter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerOverscrolling:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$402(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # setter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionFromOverscroll:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$502(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # invokes: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsState()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$600(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    return-void
.end method
