.class Lcom/android/systemui/qs/QSDualTileLabel$1;
.super Ljava/lang/Object;
.source "QSDualTileLabel.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSDualTileLabel;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSDualTileLabel;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSDualTileLabel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSDualTileLabel$1;->this$0:Lcom/android/systemui/qs/QSDualTileLabel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2
    .param p1    # Landroid/view/View;
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I
    .param p6    # I
    .param p7    # I
    .param p8    # I
    .param p9    # I

    sub-int v0, p8, p6

    sub-int v1, p4, p2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel$1;->this$0:Lcom/android/systemui/qs/QSDualTileLabel;

    # invokes: Lcom/android/systemui/qs/QSDualTileLabel;->rescheduleUpdateText()V
    invoke-static {v0}, Lcom/android/systemui/qs/QSDualTileLabel;->access$000(Lcom/android/systemui/qs/QSDualTileLabel;)V

    :cond_0
    return-void
.end method
