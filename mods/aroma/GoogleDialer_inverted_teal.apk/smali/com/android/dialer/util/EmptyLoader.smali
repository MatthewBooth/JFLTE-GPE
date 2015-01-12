.class public Lcom/android/dialer/util/EmptyLoader;
.super Landroid/content/Loader;
.source "EmptyLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/util/EmptyLoader$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/Loader",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/content/Loader;-><init>(Landroid/content/Context;)V

    return-void
.end method
