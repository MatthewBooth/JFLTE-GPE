.class Lcom/android/contacts/quickcontact/ExpandingEntryCardView$3;
.super Ljava/lang/Object;
.source "ExpandingEntryCardView.java"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->collapse()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

.field final synthetic val$startingHeight:I


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/ExpandingEntryCardView;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$3;->this$0:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    iput p2, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$3;->val$startingHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/transition/Transition;)V
    .locals 0
    .param p1    # Landroid/transition/Transition;

    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 0
    .param p1    # Landroid/transition/Transition;

    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .locals 0
    .param p1    # Landroid/transition/Transition;

    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .locals 0
    .param p1    # Landroid/transition/Transition;

    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 3
    .param p1    # Landroid/transition/Transition;

    iget-object v1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$3;->this$0:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    # getter for: Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mEntriesViewGroup:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->access$400(Lcom/android/contacts/quickcontact/ExpandingEntryCardView;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$3;->this$0:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    # getter for: Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mListener:Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ExpandingEntryCardViewListener;
    invoke-static {v1}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->access$300(Lcom/android/contacts/quickcontact/ExpandingEntryCardView;)Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ExpandingEntryCardViewListener;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$3;->val$startingHeight:I

    sub-int/2addr v2, v0

    invoke-interface {v1, v2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ExpandingEntryCardViewListener;->onCollapse(I)V

    return-void
.end method
