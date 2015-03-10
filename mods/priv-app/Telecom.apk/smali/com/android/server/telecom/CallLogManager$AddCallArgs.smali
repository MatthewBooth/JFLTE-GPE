.class final Lcom/android/server/telecom/CallLogManager$AddCallArgs;
.super Ljava/lang/Object;
.source "CallLogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/CallLogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AddCallArgs"
.end annotation


# instance fields
.field public final accountHandle:Landroid/telecom/PhoneAccountHandle;

.field public final callType:I

.field public final callerInfo:Lcom/android/internal/telephony/CallerInfo;

.field public final context:Landroid/content/Context;

.field public final dataUsage:Ljava/lang/Long;

.field public final durationInSec:I

.field public final features:I

.field public final number:Ljava/lang/String;

.field public final presentation:I

.field public final timestamp:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JJLjava/lang/Long;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/telecom/CallLogManager$AddCallArgs;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/telecom/CallLogManager$AddCallArgs;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    iput-object p3, p0, Lcom/android/server/telecom/CallLogManager$AddCallArgs;->number:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/telecom/CallLogManager$AddCallArgs;->presentation:I

    iput p5, p0, Lcom/android/server/telecom/CallLogManager$AddCallArgs;->callType:I

    iput p6, p0, Lcom/android/server/telecom/CallLogManager$AddCallArgs;->features:I

    iput-object p7, p0, Lcom/android/server/telecom/CallLogManager$AddCallArgs;->accountHandle:Landroid/telecom/PhoneAccountHandle;

    iput-wide p8, p0, Lcom/android/server/telecom/CallLogManager$AddCallArgs;->timestamp:J

    const-wide/16 v0, 0x3e8

    div-long v0, p10, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/server/telecom/CallLogManager$AddCallArgs;->durationInSec:I

    iput-object p12, p0, Lcom/android/server/telecom/CallLogManager$AddCallArgs;->dataUsage:Ljava/lang/Long;

    return-void
.end method
