.class public Lcom/android/internal/telephony/HbpcdLookup;
.super Ljava/lang/Object;
.source "HbpcdLookup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/HbpcdLookup$NanpAreaCode;,
        Lcom/android/internal/telephony/HbpcdLookup$ArbitraryMccSidMatch;,
        Lcom/android/internal/telephony/HbpcdLookup$MccSidRange;,
        Lcom/android/internal/telephony/HbpcdLookup$MccSidConflicts;,
        Lcom/android/internal/telephony/HbpcdLookup$MccLookup;,
        Lcom/android/internal/telephony/HbpcdLookup$MccIdd;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "hbpcd_lookup"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final IDINDEX:I = 0x0

.field public static final PATH_ARBITRARY_MCC_SID_MATCH:Ljava/lang/String; = "arbitrary"

.field public static final PATH_MCC_IDD:Ljava/lang/String; = "idd"

.field public static final PATH_MCC_LOOKUP_TABLE:Ljava/lang/String; = "lookup"

.field public static final PATH_MCC_SID_CONFLICT:Ljava/lang/String; = "conflict"

.field public static final PATH_MCC_SID_RANGE:Ljava/lang/String; = "range"

.field public static final PATH_NANP_AREA_CODE:Ljava/lang/String; = "nanp"

.field public static final PATH_USERADD_COUNTRY:Ljava/lang/String; = "useradd"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://hbpcd_lookup"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/HbpcdLookup;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
