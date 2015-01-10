.class public Lcom/android/systemui/recents/model/Task$ComponentNameKey;
.super Ljava/lang/Object;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/model/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ComponentNameKey"
.end annotation


# instance fields
.field final component:Landroid/content/ComponentName;

.field final userId:I


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;I)V
    .locals 0
    .param p1    # Landroid/content/ComponentName;
    .param p2    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/model/Task$ComponentNameKey;->component:Landroid/content/ComponentName;

    iput p2, p0, Lcom/android/systemui/recents/model/Task$ComponentNameKey;->userId:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;

    const/4 v1, 0x0

    instance-of v0, p1, Lcom/android/systemui/recents/model/Task$ComponentNameKey;

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/model/Task$ComponentNameKey;->component:Landroid/content/ComponentName;

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/recents/model/Task$ComponentNameKey;

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task$ComponentNameKey;->component:Landroid/content/ComponentName;

    invoke-virtual {v2, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/recents/model/Task$ComponentNameKey;->userId:I

    check-cast p1, Lcom/android/systemui/recents/model/Task$ComponentNameKey;

    iget v2, p1, Lcom/android/systemui/recents/model/Task$ComponentNameKey;->userId:I

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/recents/model/Task$ComponentNameKey;->component:Landroid/content/ComponentName;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/systemui/recents/model/Task$ComponentNameKey;->userId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
