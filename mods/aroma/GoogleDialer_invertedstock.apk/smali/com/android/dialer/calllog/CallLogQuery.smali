.class public final Lcom/android/dialer/calllog/CallLogQuery;
.super Ljava/lang/Object;
.source "CallLogQuery.java"


# static fields
.field public static final _PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "countryiso"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "voicemail_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "geocoded_location"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "name"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "numbertype"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "numberlabel"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "lookup_uri"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "matched_number"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "normalized_number"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "formatted_number"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "is_read"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "presentation"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "subscription_component_name"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "subscription_id"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "features"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "data_usage"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "transcription"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/dialer/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    return-void
.end method
