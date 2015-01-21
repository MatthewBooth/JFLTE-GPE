.class public Lcom/google/android/dialer/extensions/DialerExtendedPhoneDirectoriesManager;
.super Ljava/lang/Object;
.source "DialerExtendedPhoneDirectoriesManager.java"

# interfaces
.implements Lcom/android/contacts/common/extensions/ExtendedPhoneDirectoriesManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExtendedDirectories(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .param p1    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/list/DirectoryPartition;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v6, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "dialer_enable_nearby_places_directory"

    invoke-static {v4, v5, v6}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "local_search"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    new-instance v3, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-direct {v3, v7, v6}, Lcom/android/contacts/common/list/DirectoryPartition;-><init>(ZZ)V

    sget-object v4, Lcom/google/android/dialer/provider/DialerProvider;->NEARBY_PLACES_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/list/DirectoryPartition;->setContentUri(Ljava/lang/String;)V

    const v4, 0x7f080294

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/list/DirectoryPartition;->setLabel(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Lcom/android/contacts/common/list/DirectoryPartition;->setPriorityDirectory(Z)V

    invoke-virtual {v3, v6}, Lcom/android/contacts/common/list/DirectoryPartition;->setPhotoSupported(Z)V

    invoke-virtual {v3, v7}, Lcom/android/contacts/common/list/DirectoryPartition;->setDisplayNumber(Z)V

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/list/DirectoryPartition;->setResultLimit(I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0

    :cond_0
    const-string v4, "DialerProvider"

    const-string v5, "Nearby places is disabled"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
