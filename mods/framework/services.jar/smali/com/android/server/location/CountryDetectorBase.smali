.class public abstract Lcom/android/server/location/CountryDetectorBase;
.super Ljava/lang/Object;
.source "CountryDetectorBase.java"


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected mDetectedCountry:Landroid/location/Country;

.field protected final mHandler:Landroid/os/Handler;

.field protected mListener:Landroid/location/CountryListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/CountryDetectorBase;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/CountryDetectorBase;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public abstract detectCountry()Landroid/location/Country;
.end method

.method protected notifyListener(Landroid/location/Country;)V
    .locals 1
    .param p1    # Landroid/location/Country;

    iget-object v0, p0, Lcom/android/server/location/CountryDetectorBase;->mListener:Landroid/location/CountryListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/CountryDetectorBase;->mListener:Landroid/location/CountryListener;

    invoke-interface {v0, p1}, Landroid/location/CountryListener;->onCountryDetected(Landroid/location/Country;)V

    :cond_0
    return-void
.end method

.method public setCountryListener(Landroid/location/CountryListener;)V
    .locals 0
    .param p1    # Landroid/location/CountryListener;

    iput-object p1, p0, Lcom/android/server/location/CountryDetectorBase;->mListener:Landroid/location/CountryListener;

    return-void
.end method

.method public abstract stop()V
.end method
