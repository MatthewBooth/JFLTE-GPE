.class Lcom/android/contacts/quickcontact/QuickContactActivity$8;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$8;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$8;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasAlreadyBeenOpened:Z
    invoke-static {v4}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$1200(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$8;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mExtraMode:I
    invoke-static {v4}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$1300(Lcom/android/contacts/quickcontact/QuickContactActivity;)I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    const/high16 v0, 0x3f800000

    :goto_0
    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$8;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-virtual {v4}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x10e0000

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/high16 v4, 0x437f0000

    mul-float/2addr v4, v0

    float-to-int v1, v4

    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$8;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mWindowScrim:Landroid/graphics/drawable/ColorDrawable;
    invoke-static {v4}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$100(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v4

    const-string v5, "alpha"

    const/4 v6, 0x2

    new-array v6, v6, [I

    aput v7, v6, v7

    const/4 v7, 0x1

    aput v1, v6, v7

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    int-to-long v6, v2

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$8;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;
    invoke-static {v4}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$300(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/widget/MultiShrinkScroller;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/widget/MultiShrinkScroller;->getStartingTransparentHeightRatio()F

    move-result v0

    goto :goto_0
.end method
