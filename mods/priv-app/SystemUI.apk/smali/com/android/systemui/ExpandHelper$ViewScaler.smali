.class Lcom/android/systemui/ExpandHelper$ViewScaler;
.super Ljava/lang/Object;
.source "ExpandHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ExpandHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewScaler"
.end annotation


# instance fields
.field mView:Lcom/android/systemui/statusbar/ExpandableView;

.field final synthetic this$0:Lcom/android/systemui/ExpandHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/ExpandHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/ExpandHelper$ViewScaler;->this$0:Lcom/android/systemui/ExpandHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeight()F
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/ExpandHelper$ViewScaler;->mView:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getNaturalHeight(I)I
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/systemui/ExpandHelper$ViewScaler;->mView:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getMaxHeight()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public setHeight(F)V
    .locals 2
    .param p1    # F

    iget-object v0, p0, Lcom/android/systemui/ExpandHelper$ViewScaler;->mView:Lcom/android/systemui/statusbar/ExpandableView;

    float-to-int v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableView;->setActualHeight(I)V

    iget-object v0, p0, Lcom/android/systemui/ExpandHelper$ViewScaler;->this$0:Lcom/android/systemui/ExpandHelper;

    # setter for: Lcom/android/systemui/ExpandHelper;->mCurrentHeight:F
    invoke-static {v0, p1}, Lcom/android/systemui/ExpandHelper;->access$302(Lcom/android/systemui/ExpandHelper;F)F

    return-void
.end method

.method public setView(Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 0
    .param p1    # Lcom/android/systemui/statusbar/ExpandableView;

    iput-object p1, p0, Lcom/android/systemui/ExpandHelper$ViewScaler;->mView:Lcom/android/systemui/statusbar/ExpandableView;

    return-void
.end method
