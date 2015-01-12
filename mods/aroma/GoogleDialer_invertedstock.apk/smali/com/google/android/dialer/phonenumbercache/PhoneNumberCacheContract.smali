.class public final Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheContract;
.super Ljava/lang/Object;
.source "PhoneNumberCacheContract.java"


# static fields
.field public static final AUTHORITY_URI:Landroid/net/Uri;

.field public static final CONTACT_URI:Landroid/net/Uri;

.field public static final PHOTO_URI:Landroid/net/Uri;

.field public static final THUMBNAIL_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "content://com.google.android.dialer.cacheprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheContract;->AUTHORITY_URI:Landroid/net/Uri;

    sget-object v0, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "contact"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheContract;->CONTACT_URI:Landroid/net/Uri;

    sget-object v0, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "photo"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheContract;->PHOTO_URI:Landroid/net/Uri;

    sget-object v0, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "thumbnail"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheContract;->THUMBNAIL_URI:Landroid/net/Uri;

    return-void
.end method

.method public static getContactLookupUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0    # Ljava/lang/String;

    sget-object v0, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheContract;->CONTACT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getPhotoLookupUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0    # Ljava/lang/String;

    sget-object v0, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheContract;->PHOTO_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getThumbnailLookupUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0    # Ljava/lang/String;

    sget-object v0, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheContract;->THUMBNAIL_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
