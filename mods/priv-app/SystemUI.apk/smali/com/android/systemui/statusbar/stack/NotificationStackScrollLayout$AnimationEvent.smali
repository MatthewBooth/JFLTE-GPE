.class Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
.super Ljava/lang/Object;
.source "NotificationStackScrollLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnimationEvent"
.end annotation


# static fields
.field static FILTERS:[Lcom/android/systemui/statusbar/stack/AnimationFilter;

.field static LENGTHS:[I


# instance fields
.field final animationType:I

.field final changingView:Landroid/view/View;

.field final eventStartTime:J

.field final filter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

.field final length:J

.field viewAfterChangingView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0xe

    new-array v0, v3, [Lcom/android/systemui/statusbar/stack/AnimationFilter;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateAlpha()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasDelays()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateAlpha()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasDelays()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateAlpha()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasDelays()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateAlpha()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDimmed()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateScale()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateAlpha()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateAlpha()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateScale()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateAlpha()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateScale()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDimmed()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateAlpha()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDark()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateAlpha()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDimmed()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateScale()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasDelays()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHideSensitive()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateAlpha()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateAlpha()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDark()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateScale()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDimmed()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHideSensitive()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->FILTERS:[Lcom/android/systemui/statusbar/stack/AnimationFilter;

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->LENGTHS:[I

    return-void

    :array_0
    .array-data 4
        0x1d0
        0x1d0
        0x168
        0x168
        0x168
        0x168
        0xdc
        0xdc
        0x168
        0x168
        0x1c0
        0x168
        0x168
        0x168
    .end array-data
.end method

.method constructor <init>(Landroid/view/View;I)V
    .locals 2
    .param p1    # Landroid/view/View;
    .param p2    # I

    sget-object v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->LENGTHS:[I

    aget v0, v0, p2

    int-to-long v0, v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;IJ)V

    return-void
.end method

.method constructor <init>(Landroid/view/View;IJ)V
    .locals 3
    .param p1    # Landroid/view/View;
    .param p2    # I
    .param p3    # J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->eventStartTime:J

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->changingView:Landroid/view/View;

    iput p2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    sget-object v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->FILTERS:[Lcom/android/systemui/statusbar/stack/AnimationFilter;

    aget-object v0, v0, p2

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->filter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iput-wide p3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->length:J

    return-void
.end method

.method static combineLength(Ljava/util/ArrayList;)J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;",
            ">;)J"
        }
    .end annotation

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    iget-wide v6, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->length:J

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iget v5, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/16 v6, 0xa

    if-ne v5, v6, :cond_0

    iget-wide v6, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->length:J

    :goto_1
    return-wide v6

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-wide v6, v2

    goto :goto_1
.end method
