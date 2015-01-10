.class public Lcom/android/systemui/qs/tiles/IntentTile;
.super Lcom/android/systemui/qs/QSTile;
.source "IntentTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$State;",
        ">;"
    }
.end annotation


# instance fields
.field private mCurrentUserId:I

.field private mOnClick:Landroid/app/PendingIntent;

.field private mOnClickUri:Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/QSTile$Host;Ljava/lang/String;)V
    .locals 3
    .param p1    # Lcom/android/systemui/qs/QSTile$Host;
    .param p2    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    new-instance v0, Lcom/android/systemui/qs/tiles/IntentTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/IntentTile$1;-><init>(Lcom/android/systemui/qs/tiles/IntentTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/IntentTile;Ljava/lang/Object;)V
    .locals 0
    .param p0    # Lcom/android/systemui/qs/tiles/IntentTile;
    .param p1    # Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/IntentTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method public static create(Lcom/android/systemui/qs/QSTile$Host;Ljava/lang/String;)Lcom/android/systemui/qs/QSTile;
    .locals 4
    .param p0    # Lcom/android/systemui/qs/QSTile$Host;
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/QSTile$Host;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v1, "intent("

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad intent tile spec: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v1, "intent("

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Empty intent tile spec action"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v1, Lcom/android/systemui/qs/tiles/IntentTile;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/qs/tiles/IntentTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;Ljava/lang/String;)V

    return-object v1
.end method

.method private getPackageDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1    # Ljava/lang/String;
    .param p2    # I

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/IntentTile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error loading package drawable pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected handleClick()V
    .locals 5

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mOnClick:Landroid/app/PendingIntent;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mOnClick:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->send()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mOnClickUri:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mOnClickUri:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    iget v4, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mCurrentUserId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/IntentTile;->TAG:Ljava/lang/String;

    const-string v3, "Error sending click intent"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected handleDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 9
    .param p1    # Lcom/android/systemui/qs/QSTile$State;
    .param p2    # Ljava/lang/Object;

    const/4 v8, 0x0

    instance-of v6, p2, Landroid/content/Intent;

    if-nez v6, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v4, p2

    check-cast v4, Landroid/content/Intent;

    const-string v6, "visible"

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p1, Lcom/android/systemui/qs/QSTile$State;->visible:Z

    const-string v6, "contentDescription"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/android/systemui/qs/QSTile$State;->contentDescription:Ljava/lang/String;

    const-string v6, "label"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/String;

    iput v8, p1, Lcom/android/systemui/qs/QSTile$State;->iconId:I

    const/4 v6, 0x0

    iput-object v6, p1, Lcom/android/systemui/qs/QSTile$State;->icon:Landroid/graphics/drawable/Drawable;

    const-string v6, "iconBitmap"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v6, 0x0

    :try_start_0
    array-length v7, v1

    invoke-static {v1, v6, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v6, p1, Lcom/android/systemui/qs/QSTile$State;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    const-string v6, "onClick"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/app/PendingIntent;

    iput-object v6, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mOnClick:Landroid/app/PendingIntent;

    const-string v6, "onClickUri"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mOnClickUri:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v5

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/IntentTile;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error loading icon bitmap, length "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    const-string v6, "iconId"

    invoke-virtual {v4, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const-string v6, "iconPackage"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-direct {p0, v3, v2}, Lcom/android/systemui/qs/tiles/IntentTile;->getPackageDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p1, Lcom/android/systemui/qs/QSTile$State;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_3
    iput v2, p1, Lcom/android/systemui/qs/QSTile$State;->iconId:I

    goto :goto_1
.end method

.method protected handleUserSwitch(I)V
    .locals 0
    .param p1    # I

    invoke-super {p0, p1}, Lcom/android/systemui/qs/QSTile;->handleUserSwitch(I)V

    iput p1, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mCurrentUserId:I

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/QSTile$State;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$State;-><init>()V

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method
