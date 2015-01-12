.class public Lcom/android/dialer/DialerApplication;
.super Landroid/app/Application;
.source "DialerApplication.java"


# instance fields
.field private mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/String;

    const-string v0, "contactPhotos"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/dialer/DialerApplication;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/contacts/common/ContactPhotoManager;->createContactPhotoManager(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/DialerApplication;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    iget-object v0, p0, Lcom/android/dialer/DialerApplication;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {p0, v0}, Lcom/android/dialer/DialerApplication;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    iget-object v0, p0, Lcom/android/dialer/DialerApplication;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/common/ContactPhotoManager;->preloadPhotosInBackground()V

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/DialerApplication;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-virtual {p0}, Lcom/android/dialer/DialerApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/extensions/ExtensionsFactory;->init(Landroid/content/Context;)V

    return-void
.end method
