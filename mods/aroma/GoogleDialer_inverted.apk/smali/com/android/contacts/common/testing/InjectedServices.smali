.class public Lcom/android/contacts/common/testing/InjectedServices;
.super Ljava/lang/Object;
.source "InjectedServices.java"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSystemServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setContentResolver(Landroid/content/ContentResolver;)V
    .locals 0
    .param p1    # Landroid/content/ContentResolver;

    iput-object p1, p0, Lcom/android/contacts/common/testing/InjectedServices;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method public setSharedPreferences(Landroid/content/SharedPreferences;)V
    .locals 0
    .param p1    # Landroid/content/SharedPreferences;

    iput-object p1, p0, Lcom/android/contacts/common/testing/InjectedServices;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public setSystemService(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/contacts/common/testing/InjectedServices;->mSystemServices:Ljava/util/HashMap;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/testing/InjectedServices;->mSystemServices:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/testing/InjectedServices;->mSystemServices:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
