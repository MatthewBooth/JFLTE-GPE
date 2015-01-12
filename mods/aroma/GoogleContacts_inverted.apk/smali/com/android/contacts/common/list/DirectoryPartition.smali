.class public final Lcom/android/contacts/common/list/DirectoryPartition;
.super Lcom/android/common/widget/CompositeCursorAdapter$Partition;
.source "DirectoryPartition.java"


# instance fields
.field private mContentUri:Ljava/lang/String;

.field private mDirectoryId:J

.field private mDirectoryType:Ljava/lang/String;

.field private mDisplayName:Ljava/lang/String;

.field private mDisplayNumber:Z

.field private mLabel:Ljava/lang/String;

.field private mPhotoSupported:Z

.field private mPriorityDirectory:Z

.field private mResultLimit:I

.field private mStatus:I


# direct methods
.method public constructor <init>(ZZ)V
    .locals 1
    .param p1    # Z
    .param p2    # Z

    invoke-direct {p0, p1, p2}, Lcom/android/common/widget/CompositeCursorAdapter$Partition;-><init>(ZZ)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mResultLimit:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mDisplayNumber:Z

    return-void
.end method


# virtual methods
.method public getContentUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mContentUri:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectoryId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mDirectoryId:J

    return-wide v0
.end method

.method public getDirectoryType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mDirectoryType:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getResultLimit()I
    .locals 1

    iget v0, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mResultLimit:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mStatus:I

    return v0
.end method

.method public isDisplayNumber()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mDisplayNumber:Z

    return v0
.end method

.method public isLoading()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mStatus:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mStatus:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPhotoSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mPhotoSupported:Z

    return v0
.end method

.method public isPriorityDirectory()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mPriorityDirectory:Z

    return v0
.end method

.method public setDirectoryId(J)V
    .locals 1
    .param p1    # J

    iput-wide p1, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mDirectoryId:J

    return-void
.end method

.method public setDirectoryType(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mDirectoryType:Ljava/lang/String;

    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mDisplayName:Ljava/lang/String;

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mLabel:Ljava/lang/String;

    return-void
.end method

.method public setPhotoSupported(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mPhotoSupported:Z

    return-void
.end method

.method public setPriorityDirectory(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mPriorityDirectory:Z

    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mStatus:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/16 v4, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DirectoryPartition{mDirectoryId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mDirectoryId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mContentUri=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mContentUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDirectoryType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mDirectoryType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDisplayName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPriorityDirectory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mPriorityDirectory:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPhotoSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mPhotoSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mResultLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mResultLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLabel=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
