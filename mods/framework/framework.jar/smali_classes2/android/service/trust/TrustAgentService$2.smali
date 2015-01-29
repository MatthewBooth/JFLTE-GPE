.class Landroid/service/trust/TrustAgentService$2;
.super Ljava/lang/Object;
.source "TrustAgentService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/trust/TrustAgentService;->grantTrust(Ljava/lang/CharSequence;JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/trust/TrustAgentService;

.field final synthetic val$durationMs:J

.field final synthetic val$initiatedByUser:Z

.field final synthetic val$message:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Landroid/service/trust/TrustAgentService;Ljava/lang/CharSequence;JZ)V
    .locals 1

    iput-object p1, p0, Landroid/service/trust/TrustAgentService$2;->this$0:Landroid/service/trust/TrustAgentService;

    iput-object p2, p0, Landroid/service/trust/TrustAgentService$2;->val$message:Ljava/lang/CharSequence;

    iput-wide p3, p0, Landroid/service/trust/TrustAgentService$2;->val$durationMs:J

    iput-boolean p5, p0, Landroid/service/trust/TrustAgentService$2;->val$initiatedByUser:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Landroid/service/trust/TrustAgentService$2;->this$0:Landroid/service/trust/TrustAgentService;

    iget-object v1, p0, Landroid/service/trust/TrustAgentService$2;->val$message:Ljava/lang/CharSequence;

    iget-wide v2, p0, Landroid/service/trust/TrustAgentService$2;->val$durationMs:J

    iget-boolean v4, p0, Landroid/service/trust/TrustAgentService$2;->val$initiatedByUser:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/service/trust/TrustAgentService;->grantTrust(Ljava/lang/CharSequence;JZ)V

    return-void
.end method
