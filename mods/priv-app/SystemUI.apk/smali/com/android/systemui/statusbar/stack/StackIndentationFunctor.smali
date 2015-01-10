.class public abstract Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;
.super Ljava/lang/Object;
.source "StackIndentationFunctor.java"


# instance fields
.field protected mDistanceToPeekStart:I

.field protected mMaxItemsInStack:I

.field protected mPeekSize:I

.field protected mStackStartsAtPeek:Z

.field protected mTotalTransitionDistance:I


# direct methods
.method constructor <init>(III)V
    .locals 1
    .param p1    # I
    .param p2    # I
    .param p3    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;->mDistanceToPeekStart:I

    iget v0, p0, Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;->mDistanceToPeekStart:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;->mStackStartsAtPeek:Z

    iput p1, p0, Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;->mMaxItemsInStack:I

    iput p2, p0, Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;->mPeekSize:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;->updateTotalTransitionDistance()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateTotalTransitionDistance()V
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;->mDistanceToPeekStart:I

    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;->mPeekSize:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;->mTotalTransitionDistance:I

    return-void
.end method


# virtual methods
.method public abstract getValue(F)F
.end method
