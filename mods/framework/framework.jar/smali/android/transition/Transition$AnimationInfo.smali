.class public Landroid/transition/Transition$AnimationInfo;
.super Ljava/lang/Object;
.source "Transition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimationInfo"
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field transition:Landroid/transition/Transition;

.field values:Landroid/transition/TransitionValues;

.field public view:Landroid/view/View;

.field windowId:Landroid/view/WindowId;


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/lang/String;Landroid/transition/Transition;Landroid/view/WindowId;Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1    # Landroid/view/View;
    .param p2    # Ljava/lang/String;
    .param p3    # Landroid/transition/Transition;
    .param p4    # Landroid/view/WindowId;
    .param p5    # Landroid/transition/TransitionValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/transition/Transition$AnimationInfo;->view:Landroid/view/View;

    iput-object p2, p0, Landroid/transition/Transition$AnimationInfo;->name:Ljava/lang/String;

    iput-object p5, p0, Landroid/transition/Transition$AnimationInfo;->values:Landroid/transition/TransitionValues;

    iput-object p4, p0, Landroid/transition/Transition$AnimationInfo;->windowId:Landroid/view/WindowId;

    iput-object p3, p0, Landroid/transition/Transition$AnimationInfo;->transition:Landroid/transition/Transition;

    return-void
.end method
