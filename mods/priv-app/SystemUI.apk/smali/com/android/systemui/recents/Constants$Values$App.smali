.class public Lcom/android/systemui/recents/Constants$Values$App;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/Constants$Values;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "App"
.end annotation


# static fields
.field public static AppWidgetHostId:I

.field public static DebugModeVersion:Ljava/lang/String;

.field public static Key_DebugModeEnabled:Ljava/lang/String;

.field public static Key_SearchAppWidgetId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x400

    sput v0, Lcom/android/systemui/recents/Constants$Values$App;->AppWidgetHostId:I

    const-string v0, "searchAppWidgetId"

    sput-object v0, Lcom/android/systemui/recents/Constants$Values$App;->Key_SearchAppWidgetId:Ljava/lang/String;

    const-string v0, "debugModeEnabled"

    sput-object v0, Lcom/android/systemui/recents/Constants$Values$App;->Key_DebugModeEnabled:Ljava/lang/String;

    const-string v0, "A"

    sput-object v0, Lcom/android/systemui/recents/Constants$Values$App;->DebugModeVersion:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
