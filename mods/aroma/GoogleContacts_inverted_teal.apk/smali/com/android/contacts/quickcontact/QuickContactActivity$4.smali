.class Lcom/android/contacts/quickcontact/QuickContactActivity$4;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity;
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

    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$4;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnterFullscreen()V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$4;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # invokes: Lcom/android/contacts/quickcontact/QuickContactActivity;->updateStatusBarColor()V
    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$800(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    return-void
.end method

.method public onEntranceAnimationDone()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$4;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    const/4 v1, 0x1

    # setter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsEntranceAnimationFinished:Z
    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$1002(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)Z

    return-void
.end method

.method public onExitFullscreen()V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$4;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # invokes: Lcom/android/contacts/quickcontact/QuickContactActivity;->updateStatusBarColor()V
    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$800(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    return-void
.end method

.method public onScrolledOffBottom()V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$4;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-virtual {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->finish()V

    return-void
.end method

.method public onStartScrollOffBottom()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$4;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    const/4 v1, 0x1

    # setter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsExitAnimationInProgress:Z
    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$902(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)Z

    return-void
.end method

.method public onTransparentViewHeightChange(F)V
    .locals 2
    .param p1    # F

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$4;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsEntranceAnimationFinished:Z
    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$1000(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$4;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mWindowScrim:Landroid/graphics/drawable/ColorDrawable;
    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$100(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v0

    const/high16 v1, 0x437f0000

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    :cond_0
    return-void
.end method
