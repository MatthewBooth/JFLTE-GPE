.class Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;
.super Ljava/lang/Object;
.source "LauncherApps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/LauncherApps$CallbackMessageHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackInfo"
.end annotation


# instance fields
.field packageName:Ljava/lang/String;

.field packageNames:[Ljava/lang/String;

.field replacing:Z

.field user:Landroid/os/UserHandle;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/pm/LauncherApps$1;)V
    .locals 0
    .param p1    # Landroid/content/pm/LauncherApps$1;

    invoke-direct {p0}, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;-><init>()V

    return-void
.end method
