.class Lcom/android/systemui/statusbar/phone/PanelView$2$1;
.super Ljava/lang/Object;
.source "PanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PanelView$2;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/PanelView$2;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PanelView$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView$2$1;->this$1:Lcom/android/systemui/statusbar/phone/PanelView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$2$1;->this$1:Lcom/android/systemui/statusbar/phone/PanelView$2;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$2;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->collapse(Z)V

    return-void
.end method
