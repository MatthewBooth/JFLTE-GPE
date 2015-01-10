.class Lcom/android/keyguard/KeyguardUpdateMonitor$SubInfoContent;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SubInfoContent"
.end annotation


# instance fields
.field public final column:Ljava/lang/String;

.field public final iValue:I

.field public final sValue:Ljava/lang/String;

.field public final subInfoId:J


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1    # J
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SubInfoContent;->subInfoId:J

    iput-object p3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SubInfoContent;->column:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SubInfoContent;->sValue:Ljava/lang/String;

    iput p5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SubInfoContent;->iValue:I

    return-void
.end method
