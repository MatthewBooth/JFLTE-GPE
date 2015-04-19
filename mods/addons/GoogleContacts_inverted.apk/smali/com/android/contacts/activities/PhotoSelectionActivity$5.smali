.class Lcom/android/contacts/activities/PhotoSelectionActivity$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/PhotoSelectionActivity;->closePhotoAndFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/PhotoSelectionActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/PhotoSelectionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$5;->this$0:Lcom/android/contacts/activities/PhotoSelectionActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6
    .param p1    # Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$5;->this$0:Lcom/android/contacts/activities/PhotoSelectionActivity;

    # getter for: Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/contacts/activities/PhotoSelectionActivity;->access$200(Lcom/android/contacts/activities/PhotoSelectionActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const-string v2, "alpha"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/activities/PhotoSelectionActivity$5$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/activities/PhotoSelectionActivity$5$1;-><init>(Lcom/android/contacts/activities/PhotoSelectionActivity$5;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
