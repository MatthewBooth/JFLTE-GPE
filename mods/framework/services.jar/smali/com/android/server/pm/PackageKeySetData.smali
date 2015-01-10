.class public Lcom/android/server/pm/PackageKeySetData;
.super Ljava/lang/Object;
.source "PackageKeySetData.java"


# static fields
.field static final KEYSET_UNASSIGNED:J = -0x1L


# instance fields
.field private mDefinedKeySets:[J

.field private final mKeySetAliases:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mProperSigningKeySet:J

.field private mSigningKeySets:[J

.field private mUpgradeKeySets:[J


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mKeySetAliases:Ljava/util/Map;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/pm/PackageKeySetData;->mProperSigningKeySet:J

    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageKeySetData;)V
    .locals 2
    .param p1    # Lcom/android/server/pm/PackageKeySetData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mKeySetAliases:Ljava/util/Map;

    iget-wide v0, p1, Lcom/android/server/pm/PackageKeySetData;->mProperSigningKeySet:J

    iput-wide v0, p0, Lcom/android/server/pm/PackageKeySetData;->mProperSigningKeySet:J

    iget-object v0, p1, Lcom/android/server/pm/PackageKeySetData;->mSigningKeySets:[J

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->cloneOrNull([J)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mSigningKeySets:[J

    iget-object v0, p1, Lcom/android/server/pm/PackageKeySetData;->mUpgradeKeySets:[J

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->cloneOrNull([J)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mUpgradeKeySets:[J

    iget-object v0, p1, Lcom/android/server/pm/PackageKeySetData;->mDefinedKeySets:[J

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->cloneOrNull([J)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mDefinedKeySets:[J

    iget-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mKeySetAliases:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/server/pm/PackageKeySetData;->mKeySetAliases:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method protected addDefinedKeySet(JLjava/lang/String;)V
    .locals 3
    .param p1    # J
    .param p3    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mDefinedKeySets:[J

    invoke-static {v0, p1, p2}, Lcom/android/internal/util/ArrayUtils;->appendLong([JJ)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mDefinedKeySets:[J

    iget-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mKeySetAliases:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected addSigningKeySet(J)V
    .locals 1
    .param p1    # J

    iget-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mSigningKeySets:[J

    invoke-static {v0, p1, p2}, Lcom/android/internal/util/ArrayUtils;->appendLong([JJ)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mSigningKeySets:[J

    return-void
.end method

.method protected addUpgradeKeySet(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/pm/PackageKeySetData;->mKeySetAliases:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/PackageKeySetData;->mUpgradeKeySets:[J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/internal/util/ArrayUtils;->appendLong([JJ)[J

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageKeySetData;->mUpgradeKeySets:[J

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upgrade keyset alias "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "does not refer to a defined keyset alias!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected addUpgradeKeySetById(J)V
    .locals 1
    .param p1    # J

    iget-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mSigningKeySets:[J

    invoke-static {v0, p1, p2}, Lcom/android/internal/util/ArrayUtils;->appendLong([JJ)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mSigningKeySets:[J

    return-void
.end method

.method protected getAliases()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mKeySetAliases:Ljava/util/Map;

    return-object v0
.end method

.method protected getDefinedKeySets()[J
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mDefinedKeySets:[J

    return-object v0
.end method

.method protected getProperSigningKeySet()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/pm/PackageKeySetData;->mProperSigningKeySet:J

    return-wide v0
.end method

.method protected getSigningKeySets()[J
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mSigningKeySets:[J

    return-object v0
.end method

.method protected getUpgradeKeySets()[J
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mUpgradeKeySets:[J

    return-object v0
.end method

.method protected isUsingDefinedKeySets()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mDefinedKeySets:[J

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mDefinedKeySets:[J

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isUsingUpgradeKeySets()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mUpgradeKeySets:[J

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mUpgradeKeySets:[J

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected packageIsSignedBy(J)Z
    .locals 1
    .param p1    # J

    iget-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mSigningKeySets:[J

    invoke-static {v0, p1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([JJ)Z

    move-result v0

    return v0
.end method

.method protected removeAllDefinedKeySets()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mDefinedKeySets:[J

    iget-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mKeySetAliases:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method protected removeAllSigningKeySets()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/pm/PackageKeySetData;->mProperSigningKeySet:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mSigningKeySets:[J

    return-void
.end method

.method protected removeAllUpgradeKeySets()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mUpgradeKeySets:[J

    return-void
.end method

.method protected removeSigningKeySet(J)V
    .locals 1
    .param p1    # J

    iget-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mSigningKeySets:[J

    invoke-static {v0, p1, p2}, Lcom/android/internal/util/ArrayUtils;->removeLong([JJ)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mSigningKeySets:[J

    return-void
.end method

.method protected setProperSigningKeySet(J)V
    .locals 3
    .param p1    # J

    iget-wide v0, p0, Lcom/android/server/pm/PackageKeySetData;->mProperSigningKeySet:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageKeySetData;->removeAllSigningKeySets()V

    iput-wide p1, p0, Lcom/android/server/pm/PackageKeySetData;->mProperSigningKeySet:J

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageKeySetData;->addSigningKeySet(J)V

    goto :goto_0
.end method
