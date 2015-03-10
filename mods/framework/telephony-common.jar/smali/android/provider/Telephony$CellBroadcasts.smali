.class public final Landroid/provider/Telephony$CellBroadcasts;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CellBroadcasts"
.end annotation


# static fields
.field public static final CID:Ljava/lang/String; = "cid"

.field public static final CMAS_CATEGORY:Ljava/lang/String; = "cmas_category"

.field public static final CMAS_CERTAINTY:Ljava/lang/String; = "cmas_certainty"

.field public static final CMAS_MESSAGE_CLASS:Ljava/lang/String; = "cmas_message_class"

.field public static final CMAS_RESPONSE_TYPE:Ljava/lang/String; = "cmas_response_type"

.field public static final CMAS_SEVERITY:Ljava/lang/String; = "cmas_severity"

.field public static final CMAS_URGENCY:Ljava/lang/String; = "cmas_urgency"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"

.field public static final DELIVERY_TIME:Ljava/lang/String; = "date"

.field public static final ETWS_WARNING_TYPE:Ljava/lang/String; = "etws_warning_type"

.field public static final GEOGRAPHICAL_SCOPE:Ljava/lang/String; = "geo_scope"

.field public static final LAC:Ljava/lang/String; = "lac"

.field public static final LANGUAGE_CODE:Ljava/lang/String; = "language"

.field public static final MESSAGE_BODY:Ljava/lang/String; = "body"

.field public static final MESSAGE_FORMAT:Ljava/lang/String; = "format"

.field public static final MESSAGE_PRIORITY:Ljava/lang/String; = "priority"

.field public static final MESSAGE_READ:Ljava/lang/String; = "read"

.field public static final PLMN:Ljava/lang/String; = "plmn"

.field public static final QUERY_COLUMNS:[Ljava/lang/String;

.field public static final SERIAL_NUMBER:Ljava/lang/String; = "serial_number"

.field public static final SERVICE_CATEGORY:Ljava/lang/String; = "service_category"

.field public static final V1_MESSAGE_CODE:Ljava/lang/String; = "message_code"

.field public static final V1_MESSAGE_IDENTIFIER:Ljava/lang/String; = "message_id"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "content://cellbroadcasts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$CellBroadcasts;->CONTENT_URI:Landroid/net/Uri;

    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "geo_scope"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "plmn"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "lac"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "cid"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "serial_number"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "service_category"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "language"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "body"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "date"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "read"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "format"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "priority"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "etws_warning_type"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "cmas_message_class"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "cmas_category"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "cmas_response_type"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "cmas_severity"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "cmas_urgency"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "cmas_certainty"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/Telephony$CellBroadcasts;->QUERY_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
