.class Lcom/android/contacts/activities/ActionBarAdapter$4;
.super Ljava/lang/Object;
.source "ActionBarAdapter.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/ActionBarAdapter;->animateTabHeightChange(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ActionBarAdapter;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/ActionBarAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter$4;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1    # Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter$4;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    # invokes: Lcom/android/contacts/activities/ActionBarAdapter;->setPortraitTabHeight(I)V
    invoke-static {v1, v0}, Lcom/android/contacts/activities/ActionBarAdapter;->access$1000(Lcom/android/contacts/activities/ActionBarAdapter;I)V

    return-void
.end method
