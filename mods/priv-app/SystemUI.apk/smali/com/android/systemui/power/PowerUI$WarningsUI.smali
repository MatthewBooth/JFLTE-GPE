.class public interface abstract Lcom/android/systemui/power/PowerUI$WarningsUI;
.super Ljava/lang/Object;
.source "PowerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/PowerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WarningsUI"
.end annotation


# virtual methods
.method public abstract dismissInvalidChargerWarning()V
.end method

.method public abstract dismissLowBatteryWarning()V
.end method

.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public abstract isInvalidChargerWarningShowing()Z
.end method

.method public abstract showInvalidChargerWarning()V
.end method

.method public abstract showLowBatteryWarning(Z)V
.end method

.method public abstract showSaverMode(Z)V
.end method

.method public abstract update(IIJ)V
.end method

.method public abstract updateLowBatteryWarning()V
.end method
