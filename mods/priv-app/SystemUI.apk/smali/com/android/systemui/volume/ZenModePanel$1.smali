.class Lcom/android/systemui/volume/ZenModePanel$1;
.super Ljava/lang/Object;
.source "ZenModePanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/ZenModePanel;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/ZenModePanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/ZenModePanel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel$1;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$1;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    const/4 v1, 0x1

    # invokes: Lcom/android/systemui/volume/ZenModePanel;->setExpanded(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui/volume/ZenModePanel;->access$200(Lcom/android/systemui/volume/ZenModePanel;Z)V

    return-void
.end method
