.class final Lcom/android/server/am/UriPermissionOwner;
.super Ljava/lang/Object;
.source "UriPermissionOwner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/UriPermissionOwner$ExternalToken;
    }
.end annotation


# instance fields
.field externalToken:Landroid/os/Binder;

.field private mReadPerms:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/am/UriPermission;",
            ">;"
        }
    .end annotation
.end field

.field private mWritePerms:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/am/UriPermission;",
            ">;"
        }
    .end annotation
.end field

.field final owner:Ljava/lang/Object;

.field final service:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lcom/android/server/am/ActivityManagerService;
    .param p2    # Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/UriPermissionOwner;->service:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/UriPermissionOwner;->owner:Ljava/lang/Object;

    return-void
.end method

.method static fromExternalToken(Landroid/os/IBinder;)Lcom/android/server/am/UriPermissionOwner;
    .locals 1
    .param p0    # Landroid/os/IBinder;

    instance-of v0, p0, Lcom/android/server/am/UriPermissionOwner$ExternalToken;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/server/am/UriPermissionOwner$ExternalToken;

    invoke-virtual {p0}, Lcom/android/server/am/UriPermissionOwner$ExternalToken;->getOwner()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addReadPermission(Lcom/android/server/am/UriPermission;)V
    .locals 1
    .param p1    # Lcom/android/server/am/UriPermission;

    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addWritePermission(Lcom/android/server/am/UriPermission;)V
    .locals 1
    .param p1    # Lcom/android/server/am/UriPermission;

    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/io/PrintWriter;
    .param p2    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "readUriPermissions="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "writeUriPermissions="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method getExternalTokenLocked()Landroid/os/Binder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->externalToken:Landroid/os/Binder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/am/UriPermissionOwner$ExternalToken;

    invoke-direct {v0, p0}, Lcom/android/server/am/UriPermissionOwner$ExternalToken;-><init>(Lcom/android/server/am/UriPermissionOwner;)V

    iput-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->externalToken:Landroid/os/Binder;

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->externalToken:Landroid/os/Binder;

    return-object v0
.end method

.method public removeReadPermission(Lcom/android/server/am/UriPermission;)V
    .locals 1
    .param p1    # Lcom/android/server/am/UriPermission;

    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    :cond_0
    return-void
.end method

.method removeUriPermissionLocked(Lcom/android/server/am/ActivityManagerService$GrantUri;I)V
    .locals 4
    .param p1    # Lcom/android/server/am/ActivityManagerService$GrantUri;
    .param p2    # I

    const/4 v3, 0x0

    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/am/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/am/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UriPermission;

    if-eqz p1, :cond_1

    iget-object v2, v1, Lcom/android/server/am/UriPermission;->uri:Lcom/android/server/am/ActivityManagerService$GrantUri;

    invoke-virtual {p1, v2}, Lcom/android/server/am/ActivityManagerService$GrantUri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    invoke-virtual {v1, p0}, Lcom/android/server/am/UriPermission;->removeReadOwner(Lcom/android/server/am/UriPermissionOwner;)V

    iget-object v2, p0, Lcom/android/server/am/UriPermissionOwner;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityManagerService;->removeUriPermissionIfNeededLocked(Lcom/android/server/am/UriPermission;)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/am/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    iput-object v3, p0, Lcom/android/server/am/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    :cond_3
    and-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/am/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/am/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UriPermission;

    if-eqz p1, :cond_5

    iget-object v2, v1, Lcom/android/server/am/UriPermission;->uri:Lcom/android/server/am/ActivityManagerService$GrantUri;

    invoke-virtual {p1, v2}, Lcom/android/server/am/ActivityManagerService$GrantUri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_5
    invoke-virtual {v1, p0}, Lcom/android/server/am/UriPermission;->removeWriteOwner(Lcom/android/server/am/UriPermissionOwner;)V

    iget-object v2, p0, Lcom/android/server/am/UriPermissionOwner;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityManagerService;->removeUriPermissionIfNeededLocked(Lcom/android/server/am/UriPermission;)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/android/server/am/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    iput-object v3, p0, Lcom/android/server/am/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    :cond_7
    return-void
.end method

.method removeUriPermissionsLocked()V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/am/UriPermissionOwner;->removeUriPermissionsLocked(I)V

    return-void
.end method

.method removeUriPermissionsLocked(I)V
    .locals 1
    .param p1    # I

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/UriPermissionOwner;->removeUriPermissionLocked(Lcom/android/server/am/ActivityManagerService$GrantUri;I)V

    return-void
.end method

.method public removeWritePermission(Lcom/android/server/am/UriPermission;)V
    .locals 1
    .param p1    # Lcom/android/server/am/UriPermission;

    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->owner:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
