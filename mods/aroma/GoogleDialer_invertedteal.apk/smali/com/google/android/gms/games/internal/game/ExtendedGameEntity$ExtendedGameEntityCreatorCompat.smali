.class final Lcom/google/android/gms/games/internal/game/ExtendedGameEntity$ExtendedGameEntityCreatorCompat;
.super Lcom/google/android/gms/games/internal/game/ExtendedGameEntityCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ExtendedGameEntityCreatorCompat"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntityCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1    # Landroid/os/Parcel;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity$ExtendedGameEntityCreatorCompat;->dX(Landroid/os/Parcel;)Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;

    move-result-object v0

    return-object v0
.end method

.method public dX(Landroid/os/Parcel;)Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;
    .locals 18

    invoke-static {}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->kp()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->b(Ljava/lang/Integer;)Z

    move-result v2

    if-nez v2, :cond_0

    const-class v2, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->bK(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-super/range {p0 .. p1}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntityCreator;->dX(Landroid/os/Parcel;)Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_1
    sget-object v2, Lcom/google/android/gms/games/GameEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/games/GameEntity;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/4 v6, 0x1

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    new-instance v16, Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_3

    sget-object v17, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->CREATOR:Lcom/google/android/gms/games/internal/game/GameBadgeEntityCreator;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/game/GameBadgeEntityCreator;->dY(Landroid/os/Parcel;)Lcom/google/android/gms/games/internal/game/GameBadgeEntity;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    const/16 v17, 0x0

    new-instance v2, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;

    const/4 v3, 0x2

    invoke-direct/range {v2 .. v17}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;-><init>(ILcom/google/android/gms/games/GameEntity;IZIJJLjava/lang/String;JLjava/lang/String;Ljava/util/ArrayList;Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;)V

    goto :goto_0
.end method
