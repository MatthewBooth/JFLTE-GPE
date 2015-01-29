.class public Landroid/net/wifi/RttManager$RttResult;
.super Ljava/lang/Object;
.source "RttManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/RttManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RttResult"
.end annotation


# instance fields
.field public bssid:Ljava/lang/String;

.field public distance_cm:I

.field public distance_sd_cm:I

.field public distance_spread_cm:I

.field public requestType:I

.field public rssi:I

.field public rssi_spread:I

.field public rtt_ns:J

.field public rtt_sd_ns:J

.field public rtt_spread_ns:J

.field public status:I

.field public ts:J

.field public tx_rate:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
