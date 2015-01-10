.class public Lcom/android/systemui/statusbar/stack/AnimationFilter;
.super Ljava/lang/Object;
.source "AnimationFilter.java"


# instance fields
.field animateAlpha:Z

.field animateDark:Z

.field animateDimmed:Z

.field animateHeight:Z

.field animateHideSensitive:Z

.field animateScale:Z

.field animateTopInset:Z

.field animateY:Z

.field animateZ:Z

.field hasDelays:Z

.field hasGoToFullShadeEvent:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private combineFilter(Lcom/android/systemui/statusbar/stack/AnimationFilter;)V
    .locals 2
    .param p1    # Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateAlpha:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateAlpha:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateAlpha:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateScale:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateScale:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateScale:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDimmed:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDimmed:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDimmed:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDark:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDark:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDark:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHideSensitive:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHideSensitive:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHideSensitive:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasDelays:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasDelays:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasDelays:Z

    return-void
.end method

.method private reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateAlpha:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateScale:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDimmed:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDark:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHideSensitive:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasDelays:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasGoToFullShadeEvent:Z

    return-void
.end method


# virtual methods
.method public animateAlpha()Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateAlpha:Z

    return-object p0
.end method

.method public animateDark()Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDark:Z

    return-object p0
.end method

.method public animateDimmed()Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDimmed:Z

    return-object p0
.end method

.method public animateHeight()Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight:Z

    return-object p0
.end method

.method public animateHideSensitive()Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHideSensitive:Z

    return-object p0
.end method

.method public animateScale()Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateScale:Z

    return-object p0
.end method

.method public animateTopInset()Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset:Z

    return-object p0
.end method

.method public animateY()Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY:Z

    return-object p0
.end method

.method public animateZ()Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ:Z

    return-object p0
.end method

.method public applyCombination(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->reset()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    iget-object v2, v2, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->filter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->combineFilter(Lcom/android/systemui/statusbar/stack/AnimationFilter;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    iget v2, v2, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasGoToFullShadeEvent:Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public hasDelays()Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasDelays:Z

    return-object p0
.end method
