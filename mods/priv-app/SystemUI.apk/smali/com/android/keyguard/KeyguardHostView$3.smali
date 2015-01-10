.class Lcom/android/keyguard/KeyguardHostView$3;
.super Ljava/lang/Object;
.source "KeyguardHostView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardHostView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardHostView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostView$3;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddView(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$3;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # invokes: Lcom/android/keyguard/KeyguardHostView;->shouldEnableAddWidget()Z
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$300(Lcom/android/keyguard/KeyguardHostView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$3;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$400(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardWidgetPager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->setAddWidgetEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onRemoveView(Landroid/view/View;Z)V
    .locals 2
    .param p1    # Landroid/view/View;
    .param p2    # Z

    if-eqz p2, :cond_0

    check-cast p1, Lcom/android/keyguard/KeyguardWidgetFrame;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardWidgetFrame;->getContentAppWidgetId()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView$3;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardHostView;->access$500(Lcom/android/keyguard/KeyguardHostView;)Landroid/appwidget/AppWidgetHost;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    :cond_0
    return-void
.end method

.method public onRemoveViewAnimationCompleted()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$3;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # invokes: Lcom/android/keyguard/KeyguardHostView;->shouldEnableAddWidget()Z
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$300(Lcom/android/keyguard/KeyguardHostView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$3;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$400(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardWidgetPager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->setAddWidgetEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onUserActivityTimeoutChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$3;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->onUserActivityTimeoutChanged()V

    return-void
.end method

.method public userActivity()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$3;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->userActivity()V

    return-void
.end method
