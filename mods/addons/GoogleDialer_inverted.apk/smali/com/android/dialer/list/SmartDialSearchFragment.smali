.class public Lcom/android/dialer/list/SmartDialSearchFragment;
.super Lcom/android/dialer/list/SearchFragment;
.source "SmartDialSearchFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/dialer/list/SmartDialSearchFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/list/SmartDialSearchFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/dialer/list/SearchFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createListAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/dialer/list/SmartDialNumberListAdapter;

    invoke-virtual {p0}, Lcom/android/dialer/list/SmartDialSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/dialer/list/SmartDialNumberListAdapter;-><init>(Landroid/content/Context;)V

    invoke-super {p0}, Lcom/android/dialer/list/SearchFragment;->usesCallableUri()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/dialer/list/SmartDialNumberListAdapter;->setUseCallableUri(Z)V

    invoke-virtual {v0, v3}, Lcom/android/dialer/list/SmartDialNumberListAdapter;->setQuickContactEnabled(Z)V

    invoke-virtual {v0, v2, v2}, Lcom/android/dialer/list/SmartDialNumberListAdapter;->setShortcutEnabled(IZ)Z

    invoke-virtual {v0, v3, v2}, Lcom/android/dialer/list/SmartDialNumberListAdapter;->setShortcutEnabled(IZ)Z

    return-object v0
.end method

.method protected getPhoneUri(I)Landroid/net/Uri;
    .locals 2
    .param p1    # I

    invoke-virtual {p0}, Lcom/android/dialer/list/SmartDialSearchFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/list/SmartDialNumberListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/dialer/list/SmartDialNumberListAdapter;->getDataUri(I)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .param p1    # I
    .param p2    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/dialer/list/SmartDialSearchFragment;->getDirectoryLoaderId()I

    move-result v2

    if-ne p1, v2, :cond_0

    invoke-super {p0, p1, p2}, Lcom/android/dialer/list/SearchFragment;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/list/SmartDialSearchFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/list/SmartDialNumberListAdapter;

    new-instance v1, Lcom/android/dialer/dialpad/SmartDialCursorLoader;

    invoke-super {p0}, Lcom/android/dialer/list/SearchFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/dialer/dialpad/SmartDialCursorLoader;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/dialer/list/SmartDialNumberListAdapter;->configureLoader(Lcom/android/dialer/dialpad/SmartDialCursorLoader;)V

    goto :goto_0
.end method
