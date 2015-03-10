.class public interface abstract Lcom/android/internal/telephony/PhoneNotifier;
.super Ljava/lang/Object;
.source "PhoneNotifier.java"


# virtual methods
.method public abstract notifyCallForwardingChanged(Lcom/android/internal/telephony/Phone;)V
.end method

.method public abstract notifyCellInfo(Lcom/android/internal/telephony/Phone;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Phone;",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract notifyCellLocation(Lcom/android/internal/telephony/Phone;)V
.end method

.method public abstract notifyDataActivity(Lcom/android/internal/telephony/Phone;)V
.end method

.method public abstract notifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V
.end method

.method public abstract notifyDataConnectionFailed(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract notifyDataConnectionRealTimeInfo(Lcom/android/internal/telephony/Phone;Landroid/telephony/DataConnectionRealTimeInfo;)V
.end method

.method public abstract notifyDisconnectCause(II)V
.end method

.method public abstract notifyMessageWaitingChanged(Lcom/android/internal/telephony/Phone;)V
.end method

.method public abstract notifyOemHookRawEventForSubscriber(J[B)V
.end method

.method public abstract notifyOtaspChanged(Lcom/android/internal/telephony/Phone;I)V
.end method

.method public abstract notifyPhoneState(Lcom/android/internal/telephony/Phone;)V
.end method

.method public abstract notifyPreciseCallState(Lcom/android/internal/telephony/Phone;)V
.end method

.method public abstract notifyPreciseDataConnectionFailed(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract notifyServiceState(Lcom/android/internal/telephony/Phone;)V
.end method

.method public abstract notifySignalStrength(Lcom/android/internal/telephony/Phone;)V
.end method

.method public abstract notifyVoLteServiceStateChanged(Lcom/android/internal/telephony/Phone;Landroid/telephony/VoLteServiceState;)V
.end method
