.class public interface abstract Landroid/net/wifi/WifiScanner$WifiChangeListener;
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
    name = "WifiChangeListener"
.end annotation


# virtual methods
.method public abstract onChanging([Landroid/net/wifi/ScanResult;)V
.end method

.method public abstract onQuiescence([Landroid/net/wifi/ScanResult;)V
.end method
