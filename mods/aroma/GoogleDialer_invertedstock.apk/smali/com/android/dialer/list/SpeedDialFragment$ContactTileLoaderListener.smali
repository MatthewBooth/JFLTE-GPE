.class Lcom/android/dialer/list/SpeedDialFragment$ContactTileLoaderListener;
.super Ljava/lang/Object;
.source "SpeedDialFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/list/SpeedDialFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactTileLoaderListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/list/SpeedDialFragment;


# direct methods
.method private constructor <init>(Lcom/android/dialer/list/SpeedDialFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/list/SpeedDialFragment$ContactTileLoaderListener;->this$0:Lcom/android/dialer/list/SpeedDialFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/list/SpeedDialFragment;Lcom/android/dialer/list/SpeedDialFragment$1;)V
    .locals 0
    .param p1    # Lcom/android/dialer/list/SpeedDialFragment;
    .param p2    # Lcom/android/dialer/list/SpeedDialFragment$1;

    invoke-direct {p0, p1}, Lcom/android/dialer/list/SpeedDialFragment$ContactTileLoaderListener;-><init>(Lcom/android/dialer/list/SpeedDialFragment;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;
    .locals 1
    .param p1    # I
    .param p2    # Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/dialer/list/SpeedDialFragment$ContactTileLoaderListener;->this$0:Lcom/android/dialer/list/SpeedDialFragment;

    invoke-virtual {v0}, Lcom/android/dialer/list/SpeedDialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/ContactTileLoaderFactory;->createStrequentPhoneOnlyLoader(Landroid/content/Context;)Landroid/content/CursorLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .param p1    # I
    .param p2    # Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/list/SpeedDialFragment$ContactTileLoaderListener;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;

    move-result-object v0

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 2
    .param p2    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/dialer/list/SpeedDialFragment$ContactTileLoaderListener;->this$0:Lcom/android/dialer/list/SpeedDialFragment;

    # getter for: Lcom/android/dialer/list/SpeedDialFragment;->mContactTileAdapter:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;
    invoke-static {v0}, Lcom/android/dialer/list/SpeedDialFragment;->access$000(Lcom/android/dialer/list/SpeedDialFragment;)Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->setContactCursor(Landroid/database/Cursor;)V

    iget-object v1, p0, Lcom/android/dialer/list/SpeedDialFragment$ContactTileLoaderListener;->this$0:Lcom/android/dialer/list/SpeedDialFragment;

    iget-object v0, p0, Lcom/android/dialer/list/SpeedDialFragment$ContactTileLoaderListener;->this$0:Lcom/android/dialer/list/SpeedDialFragment;

    # getter for: Lcom/android/dialer/list/SpeedDialFragment;->mContactTileAdapter:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;
    invoke-static {v0}, Lcom/android/dialer/list/SpeedDialFragment;->access$000(Lcom/android/dialer/list/SpeedDialFragment;)Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/dialer/list/SpeedDialFragment;->setEmptyViewVisibility(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Landroid/content/Loader;
    .param p2    # Ljava/lang/Object;

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/list/SpeedDialFragment$ContactTileLoaderListener;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
