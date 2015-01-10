.class Lcom/android/keyguard/CarrierText$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "CarrierText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/CarrierText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/CarrierText;


# direct methods
.method constructor <init>(Lcom/android/keyguard/CarrierText;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/CarrierText$1;->this$0:Lcom/android/keyguard/CarrierText;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefreshCarrierInfo(JLjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 7
    .param p1    # J
    .param p3    # Ljava/lang/CharSequence;
    .param p4    # Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/keyguard/CarrierText$1;->this$0:Lcom/android/keyguard/CarrierText;

    iget-object v1, p0, Lcom/android/keyguard/CarrierText$1;->this$0:Lcom/android/keyguard/CarrierText;

    # getter for: Lcom/android/keyguard/CarrierText;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-static {v1}, Lcom/android/keyguard/CarrierText;->access$000(Lcom/android/keyguard/CarrierText;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(J)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    move-object v2, p3

    move-object v3, p4

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/keyguard/CarrierText;->updateCarrierText(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;Ljava/lang/CharSequence;J)V

    return-void
.end method

.method public onScreenTurnedOff(I)V
    .locals 3
    .param p1    # I

    const/4 v0, 0x0

    :goto_0
    # getter for: Lcom/android/keyguard/CarrierText;->mNumPhones:I
    invoke-static {}, Lcom/android/keyguard/CarrierText;->access$100()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/CarrierText$1;->this$0:Lcom/android/keyguard/CarrierText;

    # getter for: Lcom/android/keyguard/CarrierText;->mOperatorName:[Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/keyguard/CarrierText;->access$200(Lcom/android/keyguard/CarrierText;)[Landroid/widget/TextView;

    move-result-object v1

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    # getter for: Lcom/android/keyguard/CarrierText;->mNumPhones:I
    invoke-static {}, Lcom/android/keyguard/CarrierText;->access$100()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/CarrierText$1;->this$0:Lcom/android/keyguard/CarrierText;

    # getter for: Lcom/android/keyguard/CarrierText;->mOperatorName:[Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/keyguard/CarrierText;->access$200(Lcom/android/keyguard/CarrierText;)[Landroid/widget/TextView;

    move-result-object v1

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSimStateChanged(JLcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 7
    .param p1    # J
    .param p3    # Lcom/android/internal/telephony/IccCardConstants$State;

    iget-object v0, p0, Lcom/android/keyguard/CarrierText$1;->this$0:Lcom/android/keyguard/CarrierText;

    iget-object v1, p0, Lcom/android/keyguard/CarrierText$1;->this$0:Lcom/android/keyguard/CarrierText;

    # getter for: Lcom/android/keyguard/CarrierText;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-static {v1}, Lcom/android/keyguard/CarrierText;->access$000(Lcom/android/keyguard/CarrierText;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getTelephonyPlmn(J)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v1, p0, Lcom/android/keyguard/CarrierText$1;->this$0:Lcom/android/keyguard/CarrierText;

    # getter for: Lcom/android/keyguard/CarrierText;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-static {v1}, Lcom/android/keyguard/CarrierText;->access$000(Lcom/android/keyguard/CarrierText;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getTelephonySpn(J)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v1, p3

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/keyguard/CarrierText;->updateCarrierText(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;Ljava/lang/CharSequence;J)V

    return-void
.end method
