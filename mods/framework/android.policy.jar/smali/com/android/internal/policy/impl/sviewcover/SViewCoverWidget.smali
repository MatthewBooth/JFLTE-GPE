.class public Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;
.super Ljava/lang/Object;
.source "SViewCoverWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MusicWidet;,
        Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;,
        Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;,
        Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$NotiMode;
    }
.end annotation


# static fields
.field private static DBG:Z

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->DBG:Z

    const-string v0, "SViewCoverWidget"

    sput-object v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->DBG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->TAG:Ljava/lang/String;

    return-object v0
.end method
