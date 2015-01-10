.class abstract Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;
.super Ljava/lang/Thread;
.source "KeyguardSimPinView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSimPinView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CheckSimPin"
.end annotation


# instance fields
.field private final mPin:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/keyguard/KeyguardSimPinView;


# direct methods
.method protected constructor <init>(Lcom/android/keyguard/KeyguardSimPinView;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;->mPin:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method abstract onSimCheckResponse(II)V
.end method

.method public run()V
    .locals 6

    :try_start_0
    const-string v2, "KeyguardSimPinView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call supplyPinReportResultUsingSubId() mSubId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    # getter for: Lcom/android/keyguard/KeyguardSimPinView;->mSubId:J
    invoke-static {v4}, Lcom/android/keyguard/KeyguardSimPinView;->access$000(Lcom/android/keyguard/KeyguardSimPinView;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    # getter for: Lcom/android/keyguard/KeyguardSimPinView;->mSubId:J
    invoke-static {v3}, Lcom/android/keyguard/KeyguardSimPinView;->access$000(Lcom/android/keyguard/KeyguardSimPinView;)J

    move-result-wide v4

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;->mPin:Ljava/lang/String;

    invoke-interface {v2, v4, v5, v3}, Lcom/android/internal/telephony/ITelephony;->supplyPinReportResultForSubscriber(JLjava/lang/String;)[I

    move-result-object v1

    const-string v2, "KeyguardSimPinView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "supplyPinReportResultUsingSubId returned: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    new-instance v3, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin$1;

    invoke-direct {v3, p0, v1}, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin$1;-><init>(Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;[I)V

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardSimPinView;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "KeyguardSimPinView"

    const-string v3, "RemoteException for supplyPinReportResultUsingSubId:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    new-instance v3, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin$2;

    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin$2;-><init>(Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;)V

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardSimPinView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
