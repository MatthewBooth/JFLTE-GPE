.class public final Lcom/android/systemui/recent/TaskDescription;
.super Ljava/lang/Object;
.source "TaskDescription.java"


# instance fields
.field final description:Ljava/lang/CharSequence;

.field final intent:Landroid/content/Intent;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mLabel:Ljava/lang/CharSequence;

.field private mLoaded:Z

.field private mThumbnail:Landroid/graphics/drawable/Drawable;

.field final packageName:Ljava/lang/String;

.field final persistentTaskId:I

.field final resolveInfo:Landroid/content/pm/ResolveInfo;

.field final taskId:I

.field final userId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recent/TaskDescription;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Lcom/android/systemui/recent/TaskDescription;->intent:Landroid/content/Intent;

    iput v1, p0, Lcom/android/systemui/recent/TaskDescription;->taskId:I

    iput v1, p0, Lcom/android/systemui/recent/TaskDescription;->persistentTaskId:I

    iput-object v0, p0, Lcom/android/systemui/recent/TaskDescription;->description:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/systemui/recent/TaskDescription;->packageName:Ljava/lang/String;

    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/systemui/recent/TaskDescription;->userId:I

    return-void
.end method

.method public constructor <init>(IILandroid/content/pm/ResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .locals 0
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/content/pm/ResolveInfo;
    .param p4    # Landroid/content/Intent;
    .param p5    # Ljava/lang/String;
    .param p6    # Ljava/lang/CharSequence;
    .param p7    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/recent/TaskDescription;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iput-object p4, p0, Lcom/android/systemui/recent/TaskDescription;->intent:Landroid/content/Intent;

    iput p1, p0, Lcom/android/systemui/recent/TaskDescription;->taskId:I

    iput p2, p0, Lcom/android/systemui/recent/TaskDescription;->persistentTaskId:I

    iput-object p6, p0, Lcom/android/systemui/recent/TaskDescription;->description:Ljava/lang/CharSequence;

    iput-object p5, p0, Lcom/android/systemui/recent/TaskDescription;->packageName:Ljava/lang/String;

    iput p7, p0, Lcom/android/systemui/recent/TaskDescription;->userId:I

    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/TaskDescription;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/TaskDescription;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getThumbnail()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/TaskDescription;->mThumbnail:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isLoaded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recent/TaskDescription;->mLoaded:Z

    return v0
.end method

.method public isNull()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/TaskDescription;->resolveInfo:Landroid/content/pm/ResolveInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/android/systemui/recent/TaskDescription;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/android/systemui/recent/TaskDescription;->mLabel:Ljava/lang/CharSequence;

    return-void
.end method

.method public setLoaded(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/systemui/recent/TaskDescription;->mLoaded:Z

    return-void
.end method

.method public setThumbnail(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/android/systemui/recent/TaskDescription;->mThumbnail:Landroid/graphics/drawable/Drawable;

    return-void
.end method
