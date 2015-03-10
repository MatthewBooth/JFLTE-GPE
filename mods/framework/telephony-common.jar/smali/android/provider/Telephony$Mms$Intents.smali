.class public final Landroid/provider/Telephony$Mms$Intents;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony$Mms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Intents"
.end annotation


# static fields
.field public static final CONTENT_CHANGED_ACTION:Ljava/lang/String; = "android.intent.action.CONTENT_CHANGED"

.field public static final DELETED_CONTENTS:Ljava/lang/String; = "deleted_contents"

.field public static final EXTRA_MMS_CONTENT_URI:Ljava/lang/String; = "android.provider.Telephony.extra.MMS_CONTENT_URI"

.field public static final EXTRA_MMS_LOCATION_URL:Ljava/lang/String; = "android.provider.Telephony.extra.MMS_LOCATION_URL"

.field public static final MMS_DOWNLOAD_ACTION:Ljava/lang/String; = "android.provider.Telephony.MMS_DOWNLOAD"

.field public static final MMS_SEND_ACTION:Ljava/lang/String; = "android.provider.Telephony.MMS_SEND"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
