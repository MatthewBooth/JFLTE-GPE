.class Lcom/android/contacts/common/ContactPhotoManagerImpl$2;
.super Landroid/util/LruCache;
.source "ContactPhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/ContactPhotoManagerImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/Object;",
        "Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/ContactPhotoManagerImpl;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/ContactPhotoManagerImpl;I)V
    .locals 0
    .param p2    # I

    iput-object p1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$2;->this$0:Lcom/android/contacts/common/ContactPhotoManagerImpl;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected entryRemoved(ZLjava/lang/Object;Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;)V
    .locals 0
    .param p1    # Z
    .param p2    # Ljava/lang/Object;
    .param p3    # Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;
    .param p4    # Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;

    return-void
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Z
    .param p2    # Ljava/lang/Object;
    .param p3    # Ljava/lang/Object;
    .param p4    # Ljava/lang/Object;

    check-cast p3, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;

    check-cast p4, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/contacts/common/ContactPhotoManagerImpl$2;->entryRemoved(ZLjava/lang/Object;Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;)V

    return-void
.end method

.method protected sizeOf(Ljava/lang/Object;Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
    .param p2    # Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;

    iget-object v0, p2, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bytes:[B

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bytes:[B

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
    .param p2    # Ljava/lang/Object;

    check-cast p2, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/common/ContactPhotoManagerImpl$2;->sizeOf(Ljava/lang/Object;Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;)I

    move-result v0

    return v0
.end method
