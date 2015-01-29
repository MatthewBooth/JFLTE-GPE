.class Landroid/app/BackStackRecord$4;
.super Landroid/transition/Transition$EpicenterCallback;
.source "BackStackRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/BackStackRecord;->setSharedElementEpicenter(Landroid/transition/Transition;Landroid/app/BackStackRecord$TransitionState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mEpicenter:Landroid/graphics/Rect;

.field final synthetic this$0:Landroid/app/BackStackRecord;

.field final synthetic val$state:Landroid/app/BackStackRecord$TransitionState;


# direct methods
.method constructor <init>(Landroid/app/BackStackRecord;Landroid/app/BackStackRecord$TransitionState;)V
    .locals 0

    iput-object p1, p0, Landroid/app/BackStackRecord$4;->this$0:Landroid/app/BackStackRecord;

    iput-object p2, p0, Landroid/app/BackStackRecord$4;->val$state:Landroid/app/BackStackRecord$TransitionState;

    invoke-direct {p0}, Landroid/transition/Transition$EpicenterCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetEpicenter(Landroid/transition/Transition;)Landroid/graphics/Rect;
    .locals 2
    .param p1    # Landroid/transition/Transition;

    iget-object v0, p0, Landroid/app/BackStackRecord$4;->mEpicenter:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/BackStackRecord$4;->val$state:Landroid/app/BackStackRecord$TransitionState;

    iget-object v0, v0, Landroid/app/BackStackRecord$TransitionState;->enteringEpicenterView:Landroid/view/View;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/BackStackRecord$4;->mEpicenter:Landroid/graphics/Rect;

    iget-object v0, p0, Landroid/app/BackStackRecord$4;->val$state:Landroid/app/BackStackRecord$TransitionState;

    iget-object v0, v0, Landroid/app/BackStackRecord$TransitionState;->enteringEpicenterView:Landroid/view/View;

    iget-object v1, p0, Landroid/app/BackStackRecord$4;->mEpicenter:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    :cond_0
    iget-object v0, p0, Landroid/app/BackStackRecord$4;->mEpicenter:Landroid/graphics/Rect;

    return-object v0
.end method
