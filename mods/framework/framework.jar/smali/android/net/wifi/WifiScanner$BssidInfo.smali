.class public Landroid/net/wifi/WifiScanner$BssidInfo;
.super Ljava/lang/Object;
.source "WifiScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BssidInfo"
.end annotation


# instance fields
.field public bssid:Ljava/lang/String;

.field public frequencyHint:I

.field public high:I

.field public low:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
