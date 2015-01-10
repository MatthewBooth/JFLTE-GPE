.class Lcom/android/systemui/SearchPanelView$1;
.super Ljava/lang/Object;
.source "SearchPanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/SearchPanelView;->startAssistActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/SearchPanelView;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$opts:Landroid/app/ActivityOptions;


# direct methods
.method constructor <init>(Lcom/android/systemui/SearchPanelView;Landroid/content/Intent;Landroid/app/ActivityOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/SearchPanelView$1;->this$0:Lcom/android/systemui/SearchPanelView;

    iput-object p2, p0, Lcom/android/systemui/SearchPanelView$1;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/systemui/SearchPanelView$1;->val$opts:Landroid/app/ActivityOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/SearchPanelView$1;->this$0:Lcom/android/systemui/SearchPanelView;

    # getter for: Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/SearchPanelView;->access$000(Lcom/android/systemui/SearchPanelView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/SearchPanelView$1;->val$intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/SearchPanelView$1;->val$opts:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, Landroid/os/UserHandle;

    const/4 v4, -0x2

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void
.end method
