.class public Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;
.super Ljava/lang/Object;
.source "ViewAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/views/ViewAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskViewExitContext"
.end annotation


# instance fields
.field offscreenTranslationY:I

.field postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 0
    .param p1    # Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    return-void
.end method
