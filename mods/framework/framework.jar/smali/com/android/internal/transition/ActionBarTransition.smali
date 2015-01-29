.class public Lcom/android/internal/transition/ActionBarTransition;
.super Ljava/lang/Object;
.source "ActionBarTransition.java"


# static fields
.field private static TRANSITIONS_ENABLED:Z = false

.field private static final TRANSITION_DURATION:I = 0x78

.field private static final sTransition:Landroid/transition/Transition;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x1

    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/internal/transition/ActionBarTransition;->TRANSITIONS_ENABLED:Z

    sget-boolean v3, Lcom/android/internal/transition/ActionBarTransition;->TRANSITIONS_ENABLED:Z

    if-eqz v3, :cond_0

    new-instance v1, Landroid/transition/ChangeText;

    invoke-direct {v1}, Landroid/transition/ChangeText;-><init>()V

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/transition/ChangeText;->setChangeBehavior(I)Landroid/transition/ChangeText;

    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v3

    new-instance v4, Landroid/transition/ChangeBounds;

    invoke-direct {v4}, Landroid/transition/ChangeBounds;-><init>()V

    invoke-virtual {v3, v4}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    new-instance v2, Landroid/transition/TransitionSet;

    invoke-direct {v2}, Landroid/transition/TransitionSet;-><init>()V

    new-instance v3, Landroid/transition/Fade;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/transition/Fade;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v3

    new-instance v4, Landroid/transition/Fade;

    invoke-direct {v4, v5}, Landroid/transition/Fade;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    invoke-virtual {v2, v5}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    const-wide/16 v4, 0x78

    invoke-virtual {v2, v4, v5}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    sput-object v2, Lcom/android/internal/transition/ActionBarTransition;->sTransition:Landroid/transition/Transition;

    :goto_0
    return-void

    :cond_0
    const/4 v3, 0x0

    sput-object v3, Lcom/android/internal/transition/ActionBarTransition;->sTransition:Landroid/transition/Transition;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginDelayedTransition(Landroid/view/ViewGroup;)V
    .locals 1
    .param p0    # Landroid/view/ViewGroup;

    sget-boolean v0, Lcom/android/internal/transition/ActionBarTransition;->TRANSITIONS_ENABLED:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/transition/ActionBarTransition;->sTransition:Landroid/transition/Transition;

    invoke-static {p0, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    :cond_0
    return-void
.end method
