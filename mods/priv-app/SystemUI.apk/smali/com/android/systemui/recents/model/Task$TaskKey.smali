.class public Lcom/android/systemui/recents/model/Task$TaskKey;
.super Ljava/lang/Object;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/model/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskKey"
.end annotation


# instance fields
.field public final baseIntent:Landroid/content/Intent;

.field public firstActiveTime:J

.field public final id:I

.field public lastActiveTime:J

.field final mComponentNameKey:Lcom/android/systemui/recents/model/Task$ComponentNameKey;

.field public final userId:I


# direct methods
.method public constructor <init>(ILandroid/content/Intent;IJJ)V
    .locals 2
    .param p1    # I
    .param p2    # Landroid/content/Intent;
    .param p3    # I
    .param p4    # J
    .param p6    # J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/recents/model/Task$ComponentNameKey;

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/android/systemui/recents/model/Task$ComponentNameKey;-><init>(Landroid/content/ComponentName;I)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->mComponentNameKey:Lcom/android/systemui/recents/model/Task$ComponentNameKey;

    iput p1, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    iput-object p2, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    iput p3, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    iput-wide p4, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->firstActiveTime:J

    iput-wide p6, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->lastActiveTime:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;

    const/4 v1, 0x0

    instance-of v0, p1, Lcom/android/systemui/recents/model/Task$TaskKey;

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    iget v2, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    if-ne v2, v0, :cond_1

    iget v0, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    check-cast p1, Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public getComponentNameKey()Lcom/android/systemui/recents/model/Task$ComponentNameKey;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->mComponentNameKey:Lcom/android/systemui/recents/model/Task$ComponentNameKey;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    shl-int/lit8 v0, v0, 0x5

    iget v1, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Task.Key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "u: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->lastActiveTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
