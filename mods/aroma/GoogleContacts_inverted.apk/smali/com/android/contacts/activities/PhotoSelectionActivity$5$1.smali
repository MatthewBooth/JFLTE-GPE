.class Lcom/android/contacts/activities/PhotoSelectionActivity$5$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/PhotoSelectionActivity$5;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/activities/PhotoSelectionActivity$5;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/PhotoSelectionActivity$5;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$5$1;->this$1:Lcom/android/contacts/activities/PhotoSelectionActivity$5;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1    # Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$5$1;->this$1:Lcom/android/contacts/activities/PhotoSelectionActivity$5;

    iget-object v0, v0, Lcom/android/contacts/activities/PhotoSelectionActivity$5;->this$0:Lcom/android/contacts/activities/PhotoSelectionActivity;

    # invokes: Lcom/android/contacts/activities/PhotoSelectionActivity;->finishImmediatelyWithNoAnimation()V
    invoke-static {v0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->access$500(Lcom/android/contacts/activities/PhotoSelectionActivity;)V

    return-void
.end method
