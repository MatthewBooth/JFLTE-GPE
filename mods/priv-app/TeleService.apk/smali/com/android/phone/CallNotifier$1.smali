.class Lcom/android/phone/CallNotifier$1;
.super Landroid/telephony/PhoneStateListener;
.source "CallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallNotifier;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CallNotifier$1;->this$0:Lcom/android/phone/CallNotifier;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallForwardingIndicatorChanged(Z)V
    .locals 4
    .param p1    # Z

    iget-wide v2, p0, Lcom/android/phone/CallNotifier$1;->mSubId:J

    invoke-static {v2, v3}, Lcom/android/phone/PhoneUtils;->getPhoneFromSubId(J)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallNotifier$1;->this$0:Lcom/android/phone/CallNotifier;

    # invokes: Lcom/android/phone/CallNotifier;->onCfiChanged(ZLcom/android/internal/telephony/Phone;)V
    invoke-static {v1, p1, v0}, Lcom/android/phone/CallNotifier;->access$100(Lcom/android/phone/CallNotifier;ZLcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method public onMessageWaitingIndicatorChanged(Z)V
    .locals 4
    .param p1    # Z

    iget-wide v2, p0, Lcom/android/phone/CallNotifier$1;->mSubId:J

    invoke-static {v2, v3}, Lcom/android/phone/PhoneUtils;->getPhoneFromSubId(J)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallNotifier$1;->this$0:Lcom/android/phone/CallNotifier;

    # invokes: Lcom/android/phone/CallNotifier;->onMwiChanged(ZLcom/android/internal/telephony/Phone;)V
    invoke-static {v1, p1, v0}, Lcom/android/phone/CallNotifier;->access$000(Lcom/android/phone/CallNotifier;ZLcom/android/internal/telephony/Phone;)V

    return-void
.end method
