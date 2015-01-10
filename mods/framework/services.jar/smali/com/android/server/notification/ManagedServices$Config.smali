.class public Lcom/android/server/notification/ManagedServices$Config;
.super Ljava/lang/Object;
.source "ManagedServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ManagedServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Config"
.end annotation


# instance fields
.field bindPermission:Ljava/lang/String;

.field caption:Ljava/lang/String;

.field clientLabel:I

.field secureSettingName:Ljava/lang/String;

.field serviceInterface:Ljava/lang/String;

.field settingsAction:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
