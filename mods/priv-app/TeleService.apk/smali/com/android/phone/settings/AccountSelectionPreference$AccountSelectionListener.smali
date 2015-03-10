.class public interface abstract Lcom/android/phone/settings/AccountSelectionPreference$AccountSelectionListener;
.super Ljava/lang/Object;
.source "AccountSelectionPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/AccountSelectionPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AccountSelectionListener"
.end annotation


# virtual methods
.method public abstract onAccountChanged(Lcom/android/phone/settings/AccountSelectionPreference;)V
.end method

.method public abstract onAccountSelected(Lcom/android/phone/settings/AccountSelectionPreference;Landroid/telecom/PhoneAccountHandle;)Z
.end method

.method public abstract onAccountSelectionDialogShow(Lcom/android/phone/settings/AccountSelectionPreference;)V
.end method
