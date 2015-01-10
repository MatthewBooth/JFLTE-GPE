.class Lcom/android/systemui/volume/ZenModePanel$5;
.super Ljava/lang/Object;
.source "ZenModePanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/ZenModePanel;->bind(Landroid/service/notification/Condition;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/ZenModePanel;

.field final synthetic val$row:Landroid/view/View;

.field final synthetic val$tag:Lcom/android/systemui/volume/ZenModePanel$ConditionTag;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/ZenModePanel;Landroid/view/View;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel$5;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    iput-object p2, p0, Lcom/android/systemui/volume/ZenModePanel$5;->val$row:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/volume/ZenModePanel$5;->val$tag:Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$5;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel$5;->val$row:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel$5;->val$tag:Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    const/4 v3, 0x0

    # invokes: Lcom/android/systemui/volume/ZenModePanel;->onClickTimeButton(Landroid/view/View;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/volume/ZenModePanel;->access$1200(Lcom/android/systemui/volume/ZenModePanel;Landroid/view/View;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;Z)V

    return-void
.end method
