.class Lcom/android/server/pm/CrossProfileIntentResolver;
.super Lcom/android/server/IntentResolver;
.source "CrossProfileIntentResolver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/IntentResolver",
        "<",
        "Lcom/android/server/pm/CrossProfileIntentFilter;",
        "Lcom/android/server/pm/CrossProfileIntentFilter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/content/IntentFilter;

    check-cast p2, Lcom/android/server/pm/CrossProfileIntentFilter;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/CrossProfileIntentResolver;->isPackageForFilter(Ljava/lang/String;Lcom/android/server/pm/CrossProfileIntentFilter;)Z

    move-result v0

    return v0
.end method

.method protected isPackageForFilter(Ljava/lang/String;Lcom/android/server/pm/CrossProfileIntentFilter;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/android/server/pm/CrossProfileIntentFilter;

    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic newArray(I)[Landroid/content/IntentFilter;
    .locals 1
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/android/server/pm/CrossProfileIntentResolver;->newArray(I)[Lcom/android/server/pm/CrossProfileIntentFilter;

    move-result-object v0

    return-object v0
.end method

.method protected newArray(I)[Lcom/android/server/pm/CrossProfileIntentFilter;
    .locals 1
    .param p1    # I

    new-array v0, p1, [Lcom/android/server/pm/CrossProfileIntentFilter;

    return-object v0
.end method

.method protected sortResults(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/pm/CrossProfileIntentFilter;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
