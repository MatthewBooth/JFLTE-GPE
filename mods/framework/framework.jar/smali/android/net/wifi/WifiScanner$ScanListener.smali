.class public interface abstract Landroid/net/wifi/WifiScanner$ScanListener;
.super Ljava/lang/Object;
.source "WifiScanner.java"

# interfaces
.implements Landroid/net/wifi/WifiScanner$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ScanListener"
.end annotation


# virtual methods
.method public abstract onFullResult(Landroid/net/wifi/ScanResult;)V
.end method

.method public abstract onPeriodChanged(I)V
.end method

.method public abstract onResults([Landroid/net/wifi/ScanResult;)V
.end method
