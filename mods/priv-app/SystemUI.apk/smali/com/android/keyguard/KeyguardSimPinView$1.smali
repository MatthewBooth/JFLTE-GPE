.class Lcom/android/keyguard/KeyguardSimPinView$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardSimPinView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSimPinView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSimPinView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSimPinView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSimStateChanged(JLcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 3
    .param p1    # J
    .param p3    # Lcom/android/internal/telephony/IccCardConstants$State;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    # getter for: Lcom/android/keyguard/KeyguardSimPinView;->mSubId:J
    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPinView;->access$000(Lcom/android/keyguard/KeyguardSimPinView;)J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/keyguard/KeyguardSimPinView$4;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p3}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    # invokes: Lcom/android/keyguard/KeyguardSimPinView;->closeKeyGuard()V
    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPinView;->access$200(Lcom/android/keyguard/KeyguardSimPinView;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onSubIdUpdated(JJ)V
    .locals 3
    .param p1    # J
    .param p3    # J

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    # getter for: Lcom/android/keyguard/KeyguardSimPinView;->mSubId:J
    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPinView;->access$000(Lcom/android/keyguard/KeyguardSimPinView;)J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    # setter for: Lcom/android/keyguard/KeyguardSimPinView;->mSubId:J
    invoke-static {v0, p3, p4}, Lcom/android/keyguard/KeyguardSimPinView;->access$002(Lcom/android/keyguard/KeyguardSimPinView;J)J

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    # invokes: Lcom/android/keyguard/KeyguardSimPinView;->handleSubInfoChange()V
    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPinView;->access$100(Lcom/android/keyguard/KeyguardSimPinView;)V

    :cond_0
    return-void
.end method

.method public onSubInfoContentChanged(JLjava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1    # J
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # I

    if-eqz p3, :cond_0

    const-string v0, "display_name"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    # getter for: Lcom/android/keyguard/KeyguardSimPinView;->mSubId:J
    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPinView;->access$000(Lcom/android/keyguard/KeyguardSimPinView;)J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    # invokes: Lcom/android/keyguard/KeyguardSimPinView;->handleSubInfoChange()V
    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPinView;->access$100(Lcom/android/keyguard/KeyguardSimPinView;)V

    :cond_0
    return-void
.end method
