.class public Lcom/android/systemui/statusbar/phone/BarTransitions;
.super Ljava/lang/Object;
.source "BarTransitions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;
    }
.end annotation


# static fields
.field public static final HIGH_END:Z


# instance fields
.field private final mBarBackground:Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;

.field private mMode:I

.field private final mTag:Ljava/lang/String;

.field private final mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/BarTransitions;->HIGH_END:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .locals 2
    .param p1    # Landroid/view/View;
    .param p2    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BarTransitions."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mTag:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mView:Landroid/view/View;

    new-instance v0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/BarTransitions;->HIGH_END:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public static modeToString(I)Ljava/lang/String;
    .locals 3
    .param p0    # I

    if-nez p0, :cond_0

    const-string v0, "MODE_OPAQUE"

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string v0, "MODE_SEMI_TRANSPARENT"

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const-string v0, "MODE_TRANSLUCENT"

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    const-string v0, "MODE_LIGHTS_OUT"

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    const-string v0, "MODE_TRANSPARENT"

    goto :goto_0

    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    const-string v0, "MODE_WARNING"

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected applyModeBackground(IIZ)V
    .locals 1
    .param p1    # I
    .param p2    # I
    .param p3    # Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->applyModeBackground(IIZ)V

    return-void
.end method

.method public finishAnimations()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->finishAnimation()V

    return-void
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mMode:I

    return v0
.end method

.method protected onTransition(IIZ)V
    .locals 1
    .param p1    # I
    .param p2    # I
    .param p3    # Z

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/BarTransitions;->HIGH_END:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/BarTransitions;->applyModeBackground(IIZ)V

    :cond_0
    return-void
.end method

.method public transitionTo(IZ)V
    .locals 2
    .param p1    # I
    .param p2    # Z

    sget-boolean v1, Lcom/android/systemui/statusbar/phone/BarTransitions;->HIGH_END:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mMode:I

    if-ne v1, p1, :cond_2

    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mMode:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mMode:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mMode:I

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/systemui/statusbar/phone/BarTransitions;->onTransition(IIZ)V

    goto :goto_0
.end method
