.class Lcom/android/systemui/statusbar/phone/PanelView$1;
.super Ljava/lang/Object;
.source "PanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView$1;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$1;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/statusbar/phone/PanelView;->mPeekPending:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->access$002(Lcom/android/systemui/statusbar/phone/PanelView;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$1;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    # invokes: Lcom/android/systemui/statusbar/phone/PanelView;->runPeekAnimation()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->access$100(Lcom/android/systemui/statusbar/phone/PanelView;)V

    return-void
.end method
