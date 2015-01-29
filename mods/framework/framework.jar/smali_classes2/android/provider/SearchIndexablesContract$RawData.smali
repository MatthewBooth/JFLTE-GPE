.class public final Landroid/provider/SearchIndexablesContract$RawData;
.super Landroid/provider/SearchIndexablesContract$BaseColumns;
.source "SearchIndexablesContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/SearchIndexablesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RawData"
.end annotation


# static fields
.field public static final COLUMN_ENTRIES:Ljava/lang/String; = "entries"

.field public static final COLUMN_KEY:Ljava/lang/String; = "key"

.field public static final COLUMN_KEYWORDS:Ljava/lang/String; = "keywords"

.field public static final COLUMN_SCREEN_TITLE:Ljava/lang/String; = "screenTitle"

.field public static final COLUMN_SUMMARY_OFF:Ljava/lang/String; = "summaryOff"

.field public static final COLUMN_SUMMARY_ON:Ljava/lang/String; = "summaryOn"

.field public static final COLUMN_TITLE:Ljava/lang/String; = "title"

.field public static final COLUMN_USER_ID:Ljava/lang/String; = "user_id"

.field public static final MIME_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/indexables_raw"


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/provider/SearchIndexablesContract$BaseColumns;-><init>(Landroid/provider/SearchIndexablesContract$1;)V

    return-void
.end method
