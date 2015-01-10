.class public Lcom/android/systemui/statusbar/policy/NetworkController$DataUsageInfo;
.super Ljava/lang/Object;
.source "NetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataUsageInfo"
.end annotation


# instance fields
.field public carrier:Ljava/lang/String;

.field public limitLevel:J

.field public period:Ljava/lang/String;

.field public usageLevel:J

.field public warningLevel:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
