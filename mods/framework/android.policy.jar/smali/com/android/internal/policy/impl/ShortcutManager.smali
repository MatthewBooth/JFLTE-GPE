.class Lcom/android/internal/policy/impl/ShortcutManager;
.super Landroid/database/ContentObserver;
.source "ShortcutManager.java"


# static fields
.field private static final COLUMN_INTENT:I = 0x1

.field private static final COLUMN_SHORTCUT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ShortcutManager"

.field private static final sProjection:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mShortcutIntents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "shortcut"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "intent"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/policy/impl/ShortcutManager;->sProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/internal/policy/impl/ShortcutManager;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/ShortcutManager;->mShortcutIntents:Landroid/util/SparseArray;

    return-void
.end method

.method private updateShortcuts()V
    .locals 7

    iget-object v0, p0, Lcom/android/internal/policy/impl/ShortcutManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "ShortcutManager"

    const-string v6, "ShortcutObserver could not re-query shortcuts."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/ShortcutManager;->mShortcutIntents:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    :cond_2
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v3}, Landroid/content/Intent;->getIntent(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_2

    iget-object v5, p0, Lcom/android/internal/policy/impl/ShortcutManager;->mShortcutIntents:Landroid/util/SparseArray;

    invoke-virtual {v5, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v5, "ShortcutManager"

    const-string v6, "Intent URI for shortcut invalid."

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/KeyCharacterMap;->get(II)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/ShortcutManager;->mShortcutIntents:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p1, p2}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/ShortcutManager;->mShortcutIntents:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    :cond_1
    return-object v0
.end method

.method public observe()V
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/internal/policy/impl/ShortcutManager;->sProjection:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/ShortcutManager;->mCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/android/internal/policy/impl/ShortcutManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/ShortcutManager;->updateShortcuts()V

    return-void
.end method

.method public onChange(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/ShortcutManager;->updateShortcuts()V

    return-void
.end method
