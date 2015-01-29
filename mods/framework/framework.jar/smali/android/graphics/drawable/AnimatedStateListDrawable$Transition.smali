.class abstract Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;
.super Ljava/lang/Object;
.source "AnimatedStateListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/AnimatedStateListDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Transition"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/AnimatedStateListDrawable$1;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/AnimatedStateListDrawable$1;

    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;-><init>()V

    return-void
.end method


# virtual methods
.method public canReverse()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public reverse()V
    .locals 0

    return-void
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
