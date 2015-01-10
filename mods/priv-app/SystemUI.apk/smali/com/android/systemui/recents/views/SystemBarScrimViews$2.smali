.class Lcom/android/systemui/recents/views/SystemBarScrimViews$2;
.super Ljava/lang/Object;
.source "SystemBarScrimViews.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/SystemBarScrimViews;->startEnterRecentsAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/SystemBarScrimViews;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/SystemBarScrimViews;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews$2;->this$0:Lcom/android/systemui/recents/views/SystemBarScrimViews;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews$2;->this$0:Lcom/android/systemui/recents/views/SystemBarScrimViews;

    iget-object v0, v0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
