.class public Lcom/android/systemui/statusbar/stack/AmbientState;
.super Ljava/lang/Object;
.source "AmbientState.java"


# instance fields
.field private mActivatedChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

.field private mDark:Z

.field private mDimmed:Z

.field private mDraggedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mHideSensitive:Z

.field private mOverScrollBottomAmount:F

.field private mOverScrollTopAmount:F

.field private mScrollY:I

.field private mSpeedBumpIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mDraggedViews:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mSpeedBumpIndex:I

    return-void
.end method


# virtual methods
.method public getActivatedChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mActivatedChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    return-object v0
.end method

.method public getDraggedViews()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mDraggedViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getOverScrollAmount(Z)F
    .locals 1
    .param p1    # Z

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mOverScrollTopAmount:F

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mOverScrollBottomAmount:F

    goto :goto_0
.end method

.method public getScrollY()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mScrollY:I

    return v0
.end method

.method public getSpeedBumpIndex()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mSpeedBumpIndex:I

    return v0
.end method

.method public isDark()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mDark:Z

    return v0
.end method

.method public isDimmed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mDimmed:Z

    return v0
.end method

.method public isHideSensitive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mHideSensitive:Z

    return v0
.end method

.method public onBeginDrag(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mDraggedViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onDragFinished(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mDraggedViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setActivatedChild(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 0
    .param p1    # Lcom/android/systemui/statusbar/ActivatableNotificationView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mActivatedChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    return-void
.end method

.method public setDark(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mDark:Z

    return-void
.end method

.method public setDimmed(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mDimmed:Z

    return-void
.end method

.method public setHideSensitive(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mHideSensitive:Z

    return-void
.end method

.method public setOverScrollAmount(FZ)V
    .locals 0
    .param p1    # F
    .param p2    # Z

    if-eqz p2, :cond_0

    iput p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mOverScrollTopAmount:F

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mOverScrollBottomAmount:F

    goto :goto_0
.end method

.method public setScrollY(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mScrollY:I

    return-void
.end method

.method public setSpeedBumpIndex(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mSpeedBumpIndex:I

    return-void
.end method
