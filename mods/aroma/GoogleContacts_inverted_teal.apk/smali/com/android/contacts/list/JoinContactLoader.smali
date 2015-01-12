.class public Lcom/android/contacts/list/JoinContactLoader;
.super Landroid/content/CursorLoader;
.source "JoinContactLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/JoinContactLoader$JoinContactLoaderResult;
    }
.end annotation


# instance fields
.field private mProjection:[Ljava/lang/String;

.field private mSuggestionUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .locals 7

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/JoinContactLoader;->mSuggestionUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/list/JoinContactLoader;->mProjection:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    new-instance v0, Lcom/android/contacts/list/JoinContactLoader$JoinContactLoaderResult;

    invoke-super {p0}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lcom/android/contacts/list/JoinContactLoader$JoinContactLoaderResult;-><init>(Landroid/database/Cursor;Landroid/database/Cursor;)V

    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public setProjection([Ljava/lang/String;)V
    .locals 0
    .param p1    # [Ljava/lang/String;

    invoke-super {p0, p1}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/contacts/list/JoinContactLoader;->mProjection:[Ljava/lang/String;

    return-void
.end method

.method public setSuggestionUri(Landroid/net/Uri;)V
    .locals 0
    .param p1    # Landroid/net/Uri;

    iput-object p1, p0, Lcom/android/contacts/list/JoinContactLoader;->mSuggestionUri:Landroid/net/Uri;

    return-void
.end method
