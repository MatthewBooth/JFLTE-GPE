.class Lcom/android/systemui/volume/ZenModePanel$4;
.super Ljava/lang/Object;
.source "ZenModePanel.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

.field final synthetic val$tag:Lcom/android/systemui/volume/ZenModePanel$ConditionTag;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/ZenModePanel;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel$4;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    iput-object p2, p0, Lcom/android/systemui/volume/ZenModePanel$4;->val$tag:Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .param p1    # Landroid/widget/CompoundButton;
    .param p2    # Z

    iget-object v3, p0, Lcom/android/systemui/volume/ZenModePanel$4;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    # getter for: Lcom/android/systemui/volume/ZenModePanel;->mExpanded:Z
    invoke-static {v3}, Lcom/android/systemui/volume/ZenModePanel;->access$500(Lcom/android/systemui/volume/ZenModePanel;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz p2, :cond_3

    # getter for: Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/volume/ZenModePanel;->access$600()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/volume/ZenModePanel$4;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    # getter for: Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/systemui/volume/ZenModePanel;->access$700(Lcom/android/systemui/volume/ZenModePanel;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCheckedChanged "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel$4;->val$tag:Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    iget-object v5, v5, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->condition:Landroid/service/notification/Condition;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/volume/ZenModePanel$4;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    # getter for: Lcom/android/systemui/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/systemui/volume/ZenModePanel;->access$800(Lcom/android/systemui/volume/ZenModePanel;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/android/systemui/volume/ZenModePanel$4;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    # invokes: Lcom/android/systemui/volume/ZenModePanel;->getConditionTagAt(I)Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    invoke-static {v3, v2}, Lcom/android/systemui/volume/ZenModePanel;->access$900(Lcom/android/systemui/volume/ZenModePanel;I)Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/volume/ZenModePanel$4;->val$tag:Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    if-ne v1, v3, :cond_1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, v1, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/volume/ZenModePanel$4;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel$4;->val$tag:Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    iget-object v4, v4, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->condition:Landroid/service/notification/Condition;

    # invokes: Lcom/android/systemui/volume/ZenModePanel;->select(Landroid/service/notification/Condition;)V
    invoke-static {v3, v4}, Lcom/android/systemui/volume/ZenModePanel;->access$1000(Lcom/android/systemui/volume/ZenModePanel;Landroid/service/notification/Condition;)V

    iget-object v3, p0, Lcom/android/systemui/volume/ZenModePanel$4;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel$4;->val$tag:Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    # invokes: Lcom/android/systemui/volume/ZenModePanel;->announceConditionSelection(Lcom/android/systemui/volume/ZenModePanel$ConditionTag;)V
    invoke-static {v3, v4}, Lcom/android/systemui/volume/ZenModePanel;->access$1100(Lcom/android/systemui/volume/ZenModePanel;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;)V

    :cond_3
    return-void
.end method
