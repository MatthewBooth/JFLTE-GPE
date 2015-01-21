.class Lcom/android/contacts/ContactsApplication$DelayedInitializer;
.super Landroid/os/AsyncTask;
.source "ContactsApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ContactsApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DelayedInitializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ContactsApplication;


# direct methods
.method private constructor <init>(Lcom/android/contacts/ContactsApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/ContactsApplication$DelayedInitializer;->this$0:Lcom/android/contacts/ContactsApplication;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/ContactsApplication;Lcom/android/contacts/ContactsApplication$1;)V
    .locals 0
    .param p1    # Lcom/android/contacts/ContactsApplication;
    .param p2    # Lcom/android/contacts/ContactsApplication$1;

    invoke-direct {p0, p1}, Lcom/android/contacts/ContactsApplication$DelayedInitializer;-><init>(Lcom/android/contacts/ContactsApplication;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/contacts/ContactsApplication$DelayedInitializer;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1    # [Ljava/lang/Void;

    iget-object v0, p0, Lcom/android/contacts/ContactsApplication$DelayedInitializer;->this$0:Lcom/android/contacts/ContactsApplication;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    invoke-static {v0}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    iget-object v1, p0, Lcom/android/contacts/ContactsApplication$DelayedInitializer;->this$0:Lcom/android/contacts/ContactsApplication;

    invoke-virtual {v1}, Lcom/android/contacts/ContactsApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-wide/16 v4, 0x1

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    const/4 v1, 0x0

    return-object v1
.end method

.method public execute()V
    .locals 2

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/ContactsApplication$DelayedInitializer;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
