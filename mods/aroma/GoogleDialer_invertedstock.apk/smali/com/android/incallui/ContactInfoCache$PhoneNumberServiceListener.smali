.class Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;
.super Ljava/lang/Object;
.source "ContactInfoCache.java"

# interfaces
.implements Lcom/android/incallui/service/PhoneNumberService$ImageLookupListener;
.implements Lcom/android/incallui/service/PhoneNumberService$NumberLookupListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/ContactInfoCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhoneNumberServiceListener"
.end annotation


# instance fields
.field private final mCallId:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/incallui/ContactInfoCache;


# direct methods
.method constructor <init>(Lcom/android/incallui/ContactInfoCache;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->this$0:Lcom/android/incallui/ContactInfoCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->mCallId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onImageFetchComplete(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1    # Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->this$0:Lcom/android/incallui/ContactInfoCache;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/android/incallui/ContactInfoCache;->onImageLoadComplete(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/Object;)V

    return-void
.end method

.method public onPhoneNumberInfoComplete(Lcom/android/incallui/service/PhoneNumberService$PhoneNumberInfo;)V
    .locals 7
    .param p1    # Lcom/android/incallui/service/PhoneNumberService$PhoneNumberInfo;

    if-nez p1, :cond_1

    # getter for: Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/ContactInfoCache;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Contact lookup done. Remote contact not found."

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->this$0:Lcom/android/incallui/ContactInfoCache;

    iget-object v6, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->mCallId:Ljava/lang/String;

    # invokes: Lcom/android/incallui/ContactInfoCache;->clearCallbacks(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/incallui/ContactInfoCache;->access$200(Lcom/android/incallui/ContactInfoCache;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-direct {v0}, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;-><init>()V

    invoke-interface {p1}, Lcom/android/incallui/service/PhoneNumberService$PhoneNumberInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/incallui/service/PhoneNumberService$PhoneNumberInfo;->getNumber()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/incallui/service/PhoneNumberService$PhoneNumberInfo;->getPhoneType()I

    move-result v3

    invoke-interface {p1}, Lcom/android/incallui/service/PhoneNumberService$PhoneNumberInfo;->getPhoneLabel()Ljava/lang/String;

    move-result-object v1

    if-nez v3, :cond_4

    iput-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    :goto_1
    iget-object v5, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->this$0:Lcom/android/incallui/ContactInfoCache;

    # getter for: Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/incallui/ContactInfoCache;->access$400(Lcom/android/incallui/ContactInfoCache;)Ljava/util/HashMap;

    move-result-object v5

    iget-object v6, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->mCallId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v2, :cond_2

    iget-object v5, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    iput-object v5, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    :cond_2
    invoke-interface {p1}, Lcom/android/incallui/service/PhoneNumberService$PhoneNumberInfo;->getImageUrl()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    invoke-interface {p1}, Lcom/android/incallui/service/PhoneNumberService$PhoneNumberInfo;->isBusiness()Z

    move-result v5

    if-eqz v5, :cond_3

    # getter for: Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/ContactInfoCache;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Business has no image. Using default."

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->this$0:Lcom/android/incallui/ContactInfoCache;

    # getter for: Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/incallui/ContactInfoCache;->access$300(Lcom/android/incallui/ContactInfoCache;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200d2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    :cond_3
    iget-object v5, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->this$0:Lcom/android/incallui/ContactInfoCache;

    # getter for: Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/incallui/ContactInfoCache;->access$400(Lcom/android/incallui/ContactInfoCache;)Ljava/util/HashMap;

    move-result-object v5

    iget-object v6, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->mCallId:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->this$0:Lcom/android/incallui/ContactInfoCache;

    iget-object v6, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->mCallId:Ljava/lang/String;

    # invokes: Lcom/android/incallui/ContactInfoCache;->sendInfoNotifications(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    invoke-static {v5, v6, v0}, Lcom/android/incallui/ContactInfoCache;->access$500(Lcom/android/incallui/ContactInfoCache;Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    invoke-interface {p1}, Lcom/android/incallui/service/PhoneNumberService$PhoneNumberInfo;->getImageUrl()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->this$0:Lcom/android/incallui/ContactInfoCache;

    iget-object v6, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->mCallId:Ljava/lang/String;

    # invokes: Lcom/android/incallui/ContactInfoCache;->clearCallbacks(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/incallui/ContactInfoCache;->access$200(Lcom/android/incallui/ContactInfoCache;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->this$0:Lcom/android/incallui/ContactInfoCache;

    # getter for: Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/incallui/ContactInfoCache;->access$300(Lcom/android/incallui/ContactInfoCache;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v3, v1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    if-nez v4, :cond_5

    const/4 v5, 0x0

    :goto_2
    iput-object v5, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    goto :goto_1

    :cond_5
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2
.end method
