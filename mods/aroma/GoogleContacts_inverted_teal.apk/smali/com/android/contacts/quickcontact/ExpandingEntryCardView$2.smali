.class Lcom/android/contacts/quickcontact/ExpandingEntryCardView$2;
.super Ljava/lang/Object;
.source "ExpandingEntryCardView.java"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->expand()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/ExpandingEntryCardView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$2;->this$0:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

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
    .locals 2
    .param p1    # Landroid/transition/Transition;

    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$2;->this$0:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    # getter for: Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mListener:Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ExpandingEntryCardViewListener;
    invoke-static {v0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->access$300(Lcom/android/contacts/quickcontact/ExpandingEntryCardView;)Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ExpandingEntryCardViewListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ExpandingEntryCardViewListener;->onExpand(I)V

    return-void
.end method
