.class public interface abstract Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedNumberQuery;
.super Ljava/lang/Object;
.source "CachedNumberLookupServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CachedNumberQuery"
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "has_photo"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "has_thumbnail"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "photo_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "phone_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "phone_label"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "source_name"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "source_type"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "source_id"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "lookup_key"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "reported"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "object_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedNumberQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
