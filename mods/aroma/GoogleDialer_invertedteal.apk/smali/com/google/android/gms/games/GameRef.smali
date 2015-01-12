.class public final Lcom/google/android/gms/games/GameRef;
.super Lcom/google/android/gms/common/data/d;

# interfaces
.implements Lcom/google/android/gms/games/Game;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 0
    .param p1    # Lcom/google/android/gms/common/data/DataHolder;
    .param p2    # I

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-void
.end method


# virtual methods
.method public areSnapshotsEnabled()Z
    .locals 1

    const-string v0, "snapshots_enabled"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/google/android/gms/games/GameEntity;->a(Lcom/google/android/gms/games/Game;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public freeze()Lcom/google/android/gms/games/Game;
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/GameEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/GameEntity;-><init>(Lcom/google/android/gms/games/Game;)V

    return-object v0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/GameRef;->freeze()Lcom/google/android/gms/games/Game;

    move-result-object v0

    return-object v0
.end method

.method public getAchievementTotalCount()I
    .locals 1

    const-string v0, "achievement_total_count"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getApplicationId()Ljava/lang/String;
    .locals 1

    const-string v0, "external_game_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    const-string v0, "game_description"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeveloperName()Ljava/lang/String;
    .locals 1

    const-string v0, "developer_name"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    const-string v0, "display_name"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFeaturedImageUri()Landroid/net/Uri;
    .locals 1

    const-string v0, "featured_image_uri"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->aW(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getFeaturedImageUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "featured_image_url"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHiResImageUri()Landroid/net/Uri;
    .locals 1

    const-string v0, "game_hi_res_image_uri"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->aW(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getHiResImageUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "game_hi_res_image_url"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIconImageUri()Landroid/net/Uri;
    .locals 1

    const-string v0, "game_icon_image_uri"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->aW(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getIconImageUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "game_icon_image_url"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLeaderboardCount()I
    .locals 1

    const-string v0, "leaderboard_count"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPrimaryCategory()Ljava/lang/String;
    .locals 1

    const-string v0, "primary_category"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecondaryCategory()Ljava/lang/String;
    .locals 1

    const-string v0, "secondary_category"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThemeColor()Ljava/lang/String;
    .locals 1

    const-string v0, "theme_color"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/GameEntity;->a(Lcom/google/android/gms/games/Game;)I

    move-result v0

    return v0
.end method

.method public isMuted()Z
    .locals 1

    const-string v0, "muted"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isRealTimeMultiplayerEnabled()Z
    .locals 1

    const-string v0, "real_time_support"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTurnBasedMultiplayerEnabled()Z
    .locals 1

    const-string v0, "turn_based_support"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public kk()Z
    .locals 1

    const-string v0, "play_enabled_game"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public kl()Z
    .locals 1

    const-string v0, "identity_sharing_confirmed"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public km()Z
    .locals 1

    const-string v0, "installed"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public kn()Ljava/lang/String;
    .locals 1

    const-string v0, "package_name"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ko()I
    .locals 1

    const-string v0, "gameplay_acl_status"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/GameEntity;->b(Lcom/google/android/gms/games/Game;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    invoke-virtual {p0}, Lcom/google/android/gms/games/GameRef;->freeze()Lcom/google/android/gms/games/Game;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/GameEntity;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/GameEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
