.class public interface abstract Lcom/android/incallui/CallCardPresenter$CallCardUi;
.super Ljava/lang/Object;
.source "CallCardPresenter.java"

# interfaces
.implements Lcom/android/incallui/Ui;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CallCardPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CallCardUi"
.end annotation


# virtual methods
.method public abstract setCallCardVisible(Z)V
.end method

.method public abstract setCallState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
.end method

.method public abstract setCallbackNumber(Ljava/lang/String;Z)V
.end method

.method public abstract setEndCallButtonEnabled(ZZ)V
.end method

.method public abstract setPhotoVisible(Z)V
.end method

.method public abstract setPrimary(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZZ)V
.end method

.method public abstract setPrimaryCallElapsedTime(ZLjava/lang/String;)V
.end method

.method public abstract setPrimaryImage(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setSecondary(ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZZ)V
.end method

.method public abstract showManageConferenceCallButton(Z)V
.end method
