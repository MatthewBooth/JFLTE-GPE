.class public abstract Landroid/content/pm/PackageInstaller$SessionCallback;
.super Ljava/lang/Object;
.source "PackageInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SessionCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onActiveChanged(IZ)V
.end method

.method public abstract onBadgingChanged(I)V
.end method

.method public abstract onCreated(I)V
.end method

.method public abstract onFinished(IZ)V
.end method

.method public abstract onProgressChanged(IF)V
.end method
