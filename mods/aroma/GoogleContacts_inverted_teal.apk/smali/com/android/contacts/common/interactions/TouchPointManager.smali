.class public Lcom/android/contacts/common/interactions/TouchPointManager;
.super Ljava/lang/Object;
.source "TouchPointManager.java"


# static fields
.field private static sInstance:Lcom/android/contacts/common/interactions/TouchPointManager;


# instance fields
.field private mPoint:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/contacts/common/interactions/TouchPointManager;

    invoke-direct {v0}, Lcom/android/contacts/common/interactions/TouchPointManager;-><init>()V

    sput-object v0, Lcom/android/contacts/common/interactions/TouchPointManager;->sInstance:Lcom/android/contacts/common/interactions/TouchPointManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/interactions/TouchPointManager;->mPoint:Landroid/graphics/Point;

    return-void
.end method

.method public static getInstance()Lcom/android/contacts/common/interactions/TouchPointManager;
    .locals 1

    sget-object v0, Lcom/android/contacts/common/interactions/TouchPointManager;->sInstance:Lcom/android/contacts/common/interactions/TouchPointManager;

    return-object v0
.end method


# virtual methods
.method public getPoint()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/interactions/TouchPointManager;->mPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method public hasValidPoint()Z
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/interactions/TouchPointManager;->mPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/interactions/TouchPointManager;->mPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPoint(II)V
    .locals 1
    .param p1    # I
    .param p2    # I

    iget-object v0, p0, Lcom/android/contacts/common/interactions/TouchPointManager;->mPoint:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    return-void
.end method
