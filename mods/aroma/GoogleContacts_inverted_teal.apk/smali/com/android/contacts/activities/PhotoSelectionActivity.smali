.class public Lcom/android/contacts/activities/PhotoSelectionActivity;
.super Landroid/app/Activity;
.source "PhotoSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;,
        Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;
    }
.end annotation


# instance fields
.field private mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

.field private mAnimationPending:Z

.field private mBackdrop:Landroid/view/View;

.field private mCloseActivityWhenCameBackFromSubActivity:Z

.field private mCurrentPhotoUri:Landroid/net/Uri;

.field private mExpandPhoto:Z

.field private mExpandedPhotoSize:I

.field private mHeightOffset:I

.field private mIsDirectoryContact:Z

.field private mIsProfile:Z

.field mOriginalPos:Landroid/graphics/Rect;

.field private mPendingPhotoResult:Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;

.field private mPhotoAnimator:Landroid/animation/ObjectAnimator;

.field private mPhotoEndParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mPhotoHandler:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

.field private mPhotoStartParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mPhotoUri:Landroid/net/Uri;

.field private mPhotoView:Landroid/widget/ImageView;

.field private mSourceBounds:Landroid/graphics/Rect;

.field private mState:Lcom/android/contacts/common/model/RawContactDeltaList;

.field private mSubActivityInProgress:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/activities/PhotoSelectionActivity;)V
    .locals 0
    .param p0    # Lcom/android/contacts/activities/PhotoSelectionActivity;

    invoke-direct {p0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->displayPhoto()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/activities/PhotoSelectionActivity;)Z
    .locals 1
    .param p0    # Lcom/android/contacts/activities/PhotoSelectionActivity;

    iget-boolean v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mAnimationPending:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/contacts/activities/PhotoSelectionActivity;Z)Z
    .locals 0
    .param p0    # Lcom/android/contacts/activities/PhotoSelectionActivity;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mAnimationPending:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/contacts/activities/PhotoSelectionActivity;)V
    .locals 0
    .param p0    # Lcom/android/contacts/activities/PhotoSelectionActivity;

    invoke-direct {p0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->animatePhotoOpen()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/contacts/activities/PhotoSelectionActivity;)Z
    .locals 1
    .param p0    # Lcom/android/contacts/activities/PhotoSelectionActivity;

    iget-boolean v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mIsDirectoryContact:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/contacts/activities/PhotoSelectionActivity;)Z
    .locals 1
    .param p0    # Lcom/android/contacts/activities/PhotoSelectionActivity;

    iget-boolean v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mSubActivityInProgress:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/contacts/activities/PhotoSelectionActivity;Z)Z
    .locals 0
    .param p0    # Lcom/android/contacts/activities/PhotoSelectionActivity;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mSubActivityInProgress:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/contacts/activities/PhotoSelectionActivity;)Landroid/net/Uri;
    .locals 1
    .param p0    # Lcom/android/contacts/activities/PhotoSelectionActivity;

    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mCurrentPhotoUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/contacts/activities/PhotoSelectionActivity;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0    # Lcom/android/contacts/activities/PhotoSelectionActivity;
    .param p1    # Landroid/net/Uri;

    iput-object p1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mCurrentPhotoUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/contacts/activities/PhotoSelectionActivity;)Z
    .locals 1
    .param p0    # Lcom/android/contacts/activities/PhotoSelectionActivity;

    iget-boolean v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mIsProfile:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/contacts/activities/PhotoSelectionActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0    # Lcom/android/contacts/activities/PhotoSelectionActivity;

    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/activities/PhotoSelectionActivity;)Landroid/animation/AnimatorListenerAdapter;
    .locals 1
    .param p0    # Lcom/android/contacts/activities/PhotoSelectionActivity;

    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/activities/PhotoSelectionActivity;)Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;
    .locals 1
    .param p0    # Lcom/android/contacts/activities/PhotoSelectionActivity;

    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoHandler:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/activities/PhotoSelectionActivity;)V
    .locals 0
    .param p0    # Lcom/android/contacts/activities/PhotoSelectionActivity;

    invoke-direct {p0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->finishImmediatelyWithNoAnimation()V

    return-void
.end method

.method private animateAwayBackground()V
    .locals 5

    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mBackdrop:Landroid/view/View;

    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private animateInBackground()V
    .locals 4

    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mBackdrop:Landroid/view/View;

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f000000
    .end array-data
.end method

.method private animatePhoto(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1    # Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mAnimationPending:Z

    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    return-void
.end method

.method private animatePhotoOpen()V
    .locals 1

    new-instance v0, Lcom/android/contacts/activities/PhotoSelectionActivity$4;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/PhotoSelectionActivity$4;-><init>(Lcom/android/contacts/activities/PhotoSelectionActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-direct {p0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->getPhotoEndParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->animatePhoto(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-void
.end method

.method private attachPhotoHandler()V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    const/4 v4, 0x4

    :goto_0
    and-int/lit8 v4, v4, -0x3

    new-instance v0, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mState:Lcom/android/contacts/common/model/RawContactDeltaList;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;-><init>(Lcom/android/contacts/activities/PhotoSelectionActivity;Landroid/content/Context;Landroid/view/View;ILcom/android/contacts/common/model/RawContactDeltaList;Lcom/android/contacts/activities/PhotoSelectionActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoHandler:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPendingPhotoResult:Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoHandler:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    iget-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPendingPhotoResult:Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;

    # getter for: Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;->mRequestCode:I
    invoke-static {v1}, Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;->access$800(Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;)I

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPendingPhotoResult:Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;

    # getter for: Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;->mResultCode:I
    invoke-static {v2}, Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;->access$900(Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;)I

    move-result v2

    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPendingPhotoResult:Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;

    # getter for: Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;->mData:Landroid/content/Intent;
    invoke-static {v3}, Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;->access$1000(Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;->handlePhotoActivityResult(IILandroid/content/Intent;)Z

    iput-object v6, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPendingPhotoResult:Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;

    :goto_1
    return-void

    :cond_0
    const/16 v4, 0xe

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mBackdrop:Landroid/view/View;

    new-instance v1, Lcom/android/contacts/activities/PhotoSelectionActivity$6;

    invoke-direct {v1, p0}, Lcom/android/contacts/activities/PhotoSelectionActivity$6;-><init>(Lcom/android/contacts/activities/PhotoSelectionActivity;)V

    invoke-static {v0, v1}, Lcom/android/contacts/util/SchedulingUtils;->doAfterLayout(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method private closePhotoAndFinish()V
    .locals 1

    new-instance v0, Lcom/android/contacts/activities/PhotoSelectionActivity$5;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/PhotoSelectionActivity$5;-><init>(Lcom/android/contacts/activities/PhotoSelectionActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoStartParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->animatePhoto(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-direct {p0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->animateAwayBackground()V

    return-void
.end method

.method private displayPhoto()V
    .locals 9

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x2

    new-array v8, v0, [I

    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mBackdrop:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-direct {v7, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mSourceBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    aget v2, v8, v4

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mSourceBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    const/4 v2, 0x1

    aget v2, v8, v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v7, v0, v1, v2, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iput-object v7, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoStartParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    invoke-direct {p0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->getPhotoEndParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoUri:Landroid/net/Uri;

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/common/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    :goto_0
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/contacts/activities/PhotoSelectionActivity$3;

    invoke-direct {v1, p0}, Lcom/android/contacts/activities/PhotoSelectionActivity$3;-><init>(Lcom/android/contacts/activities/PhotoSelectionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-direct {p0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->attachPhotoHandler()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private finishImmediatelyWithNoAnimation()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private getAdjustedExpandedPhotoSize(Landroid/view/View;I)I
    .locals 7
    .param p1    # Landroid/view/View;
    .param p2    # I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int v2, v4, p2

    int-to-float v4, v2

    iget v5, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mExpandedPhotoSize:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    int-to-float v5, v3

    iget v6, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mExpandedPhotoSize:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v4, 0x3f800000

    cmpg-float v4, v0, v4

    if-gez v4, :cond_0

    iget v4, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mExpandedPhotoSize:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    :goto_0
    return v4

    :cond_0
    iget v4, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mExpandedPhotoSize:I

    goto :goto_0
.end method

.method private getPhotoEndParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoEndParams:Landroid/widget/FrameLayout$LayoutParams;

    if-nez v3, :cond_1

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v4, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoStartParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    iput-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoEndParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-boolean v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mExpandPhoto:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mBackdrop:Landroid/view/View;

    iget v4, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mHeightOffset:I

    invoke-direct {p0, v3, v4}, Lcom/android/contacts/activities/PhotoSelectionActivity;->getAdjustedExpandedPhotoSize(Landroid/view/View;I)I

    move-result v0

    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoStartParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int v2, v0, v3

    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoStartParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int v1, v0, v3

    if-ge v2, v6, :cond_0

    if-lt v1, v6, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoEndParams:Landroid/widget/FrameLayout$LayoutParams;

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoEndParams:Landroid/widget/FrameLayout$LayoutParams;

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoEndParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v4, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoStartParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoEndParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v4, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoStartParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoEndParams:Landroid/widget/FrameLayout$LayoutParams;

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoEndParams:Landroid/widget/FrameLayout$LayoutParams;

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :cond_1
    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoEndParams:Landroid/widget/FrameLayout$LayoutParams;

    return-object v3
.end method


# virtual methods
.method public finish()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mSubActivityInProgress:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->closePhotoAndFinish()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->finishImmediatelyWithNoAnimation()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/content/Intent;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoHandler:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mSubActivityInProgress:Z

    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoHandler:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;->handlePhotoActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPendingPhotoResult:Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mCloseActivityWhenCameBackFromSubActivity:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->finishImmediatelyWithNoAnimation()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoHandler:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    iget-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;->onClick(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;-><init>(IILandroid/content/Intent;Lcom/android/contacts/activities/PhotoSelectionActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPendingPhotoResult:Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mSubActivityInProgress:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->finishImmediatelyWithNoAnimation()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mCloseActivityWhenCameBackFromSubActivity:Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f040062

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PhotoSelectionActivity;->setContentView(I)V

    if-eqz p1, :cond_0

    const-string v1, "currentphotouri"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mCurrentPhotoUri:Landroid/net/Uri;

    const-string v1, "subinprogress"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mSubActivityInProgress:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "photo_uri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoUri:Landroid/net/Uri;

    const-string v1, "entity_delta_list"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/RawContactDeltaList;

    iput-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mState:Lcom/android/contacts/common/model/RawContactDeltaList;

    const-string v1, "is_profile"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mIsProfile:Z

    const-string v1, "is_directory_contact"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mIsDirectoryContact:Z

    const-string v1, "expand_photo"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mExpandPhoto:Z

    invoke-virtual {p0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080067

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mExpandedPhotoSize:I

    invoke-virtual {p0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080068

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mHeightOffset:I

    const v1, 0x7f0e00c3

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PhotoSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mBackdrop:Landroid/view/View;

    const v1, 0x7f0e002b

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PhotoSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mSourceBounds:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->animateInBackground()V

    iget-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mBackdrop:Landroid/view/View;

    new-instance v2, Lcom/android/contacts/activities/PhotoSelectionActivity$1;

    invoke-direct {v2, p0}, Lcom/android/contacts/activities/PhotoSelectionActivity$1;-><init>(Lcom/android/contacts/activities/PhotoSelectionActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mBackdrop:Landroid/view/View;

    new-instance v2, Lcom/android/contacts/activities/PhotoSelectionActivity$2;

    invoke-direct {v2, p0}, Lcom/android/contacts/activities/PhotoSelectionActivity$2;-><init>(Lcom/android/contacts/activities/PhotoSelectionActivity;)V

    invoke-static {v1, v2}, Lcom/android/contacts/util/SchedulingUtils;->doAfterLayout(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    iput-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoAnimator:Landroid/animation/ObjectAnimator;

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoHandler:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoHandler:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    invoke-virtual {v0}, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;->destroy()V

    iput-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoHandler:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "currentphotouri"

    iget-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mCurrentPhotoUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "subinprogress"

    iget-boolean v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mSubActivityInProgress:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
