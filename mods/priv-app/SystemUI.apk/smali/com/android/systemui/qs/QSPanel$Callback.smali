.class public interface abstract Lcom/android/systemui/qs/QSPanel$Callback;
.super Ljava/lang/Object;
.source "QSPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onScanStateChanged(Z)V
.end method

.method public abstract onShowingDetail(Lcom/android/systemui/qs/QSTile$DetailAdapter;)V
.end method

.method public abstract onToggleStateChanged(Z)V
.end method
