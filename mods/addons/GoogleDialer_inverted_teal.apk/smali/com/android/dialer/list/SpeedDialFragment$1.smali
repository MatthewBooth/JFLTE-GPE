.class Lcom/android/dialer/list/SpeedDialFragment$1;
.super Ljava/lang/Object;
.source "SpeedDialFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/list/SpeedDialFragment;->animateGridView([J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/list/SpeedDialFragment;

.field final synthetic val$idsInPlace:[J

.field final synthetic val$observer:Landroid/view/ViewTreeObserver;


# direct methods
.method constructor <init>(Lcom/android/dialer/list/SpeedDialFragment;Landroid/view/ViewTreeObserver;[J)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/list/SpeedDialFragment$1;->this$0:Lcom/android/dialer/list/SpeedDialFragment;

    iput-object p2, p0, Lcom/android/dialer/list/SpeedDialFragment$1;->val$observer:Landroid/view/ViewTreeObserver;

    iput-object p3, p0, Lcom/android/dialer/list/SpeedDialFragment$1;->val$idsInPlace:[J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SpeedDialFragment$1;->val$observer:Landroid/view/ViewTreeObserver;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SpeedDialFragment$1;->this$0:Lcom/android/dialer/list/SpeedDialFragment;

    move-object/from16 v16, v0

    # getter for: Lcom/android/dialer/list/SpeedDialFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;
    invoke-static/range {v16 .. v16}, Lcom/android/dialer/list/SpeedDialFragment;->access$600(Lcom/android/dialer/list/SpeedDialFragment;)Lcom/android/dialer/list/PhoneFavoriteListView;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/dialer/list/PhoneFavoriteListView;->getFirstVisiblePosition()I

    move-result v7

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SpeedDialFragment$1;->this$0:Lcom/android/dialer/list/SpeedDialFragment;

    move-object/from16 v16, v0

    # getter for: Lcom/android/dialer/list/SpeedDialFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;
    invoke-static/range {v16 .. v16}, Lcom/android/dialer/list/SpeedDialFragment;->access$600(Lcom/android/dialer/list/SpeedDialFragment;)Lcom/android/dialer/list/PhoneFavoriteListView;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/dialer/list/PhoneFavoriteListView;->getChildCount()I

    move-result v16

    move/from16 v0, v16

    if-ge v8, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SpeedDialFragment$1;->this$0:Lcom/android/dialer/list/SpeedDialFragment;

    move-object/from16 v16, v0

    # getter for: Lcom/android/dialer/list/SpeedDialFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;
    invoke-static/range {v16 .. v16}, Lcom/android/dialer/list/SpeedDialFragment;->access$600(Lcom/android/dialer/list/SpeedDialFragment;)Lcom/android/dialer/list/PhoneFavoriteListView;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lcom/android/dialer/list/PhoneFavoriteListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    add-int v12, v7, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SpeedDialFragment$1;->this$0:Lcom/android/dialer/list/SpeedDialFragment;

    move-object/from16 v16, v0

    # getter for: Lcom/android/dialer/list/SpeedDialFragment;->mContactTileAdapter:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;
    invoke-static/range {v16 .. v16}, Lcom/android/dialer/list/SpeedDialFragment;->access$000(Lcom/android/dialer/list/SpeedDialFragment;)Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getItemId(I)J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SpeedDialFragment$1;->this$0:Lcom/android/dialer/list/SpeedDialFragment;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SpeedDialFragment$1;->val$idsInPlace:[J

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    # invokes: Lcom/android/dialer/list/SpeedDialFragment;->containsId([JJ)Z
    invoke-static {v0, v1, v10, v11}, Lcom/android/dialer/list/SpeedDialFragment;->access$700(Lcom/android/dialer/list/SpeedDialFragment;[JJ)Z

    move-result v16

    if-eqz v16, :cond_2

    const-string v16, "alpha"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    fill-array-data v17, :array_0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v4, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-lez v16, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SpeedDialFragment$1;->this$0:Lcom/android/dialer/list/SpeedDialFragment;

    move-object/from16 v16, v0

    # getter for: Lcom/android/dialer/list/SpeedDialFragment;->mAnimationDuration:I
    invoke-static/range {v16 .. v16}, Lcom/android/dialer/list/SpeedDialFragment;->access$1000(Lcom/android/dialer/list/SpeedDialFragment;)I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SpeedDialFragment$1;->this$0:Lcom/android/dialer/list/SpeedDialFragment;

    move-object/from16 v16, v0

    # getter for: Lcom/android/dialer/list/SpeedDialFragment;->mItemIdTopMap:Ljava/util/HashMap;
    invoke-static/range {v16 .. v16}, Lcom/android/dialer/list/SpeedDialFragment;->access$800(Lcom/android/dialer/list/SpeedDialFragment;)Ljava/util/HashMap;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SpeedDialFragment$1;->this$0:Lcom/android/dialer/list/SpeedDialFragment;

    move-object/from16 v16, v0

    # getter for: Lcom/android/dialer/list/SpeedDialFragment;->mItemIdLeftMap:Ljava/util/HashMap;
    invoke-static/range {v16 .. v16}, Lcom/android/dialer/list/SpeedDialFragment;->access$900(Lcom/android/dialer/list/SpeedDialFragment;)Ljava/util/HashMap;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->clear()V

    const/16 v16, 0x1

    return v16

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SpeedDialFragment$1;->this$0:Lcom/android/dialer/list/SpeedDialFragment;

    move-object/from16 v16, v0

    # getter for: Lcom/android/dialer/list/SpeedDialFragment;->mItemIdTopMap:Ljava/util/HashMap;
    invoke-static/range {v16 .. v16}, Lcom/android/dialer/list/SpeedDialFragment;->access$800(Lcom/android/dialer/list/SpeedDialFragment;)Ljava/util/HashMap;

    move-result-object v16

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SpeedDialFragment$1;->this$0:Lcom/android/dialer/list/SpeedDialFragment;

    move-object/from16 v16, v0

    # getter for: Lcom/android/dialer/list/SpeedDialFragment;->mItemIdLeftMap:Ljava/util/HashMap;
    invoke-static/range {v16 .. v16}, Lcom/android/dialer/list/SpeedDialFragment;->access$900(Lcom/android/dialer/list/SpeedDialFragment;)Ljava/util/HashMap;

    move-result-object v16

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v15

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v9

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v13, :cond_3

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move/from16 v0, v16

    if-eq v0, v9, :cond_3

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v16

    sub-int v5, v16, v9

    const-string v16, "translationX"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    int-to-float v0, v5

    move/from16 v19, v0

    aput v19, v17, v18

    const/16 v18, 0x1

    const/16 v19, 0x0

    aput v19, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v4, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v14, :cond_4

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move/from16 v0, v16

    if-eq v0, v15, :cond_4

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v16

    sub-int v6, v16, v15

    const-string v16, "translationY"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    int-to-float v0, v6

    move/from16 v19, v0

    aput v19, v17, v18

    const/16 v18, 0x1

    const/16 v19, 0x0

    aput v19, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v4, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :array_0
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method
