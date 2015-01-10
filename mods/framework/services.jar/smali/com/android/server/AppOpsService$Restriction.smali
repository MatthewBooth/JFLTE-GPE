.class final Lcom/android/server/AppOpsService$Restriction;
.super Ljava/lang/Object;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Restriction"
.end annotation


# static fields
.field private static final NO_EXCEPTIONS:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field exceptionPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/AppOpsService$Restriction;->NO_EXCEPTIONS:Landroid/util/ArraySet;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/server/AppOpsService$Restriction;->NO_EXCEPTIONS:Landroid/util/ArraySet;

    iput-object v0, p0, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/AppOpsService$1;)V
    .locals 0
    .param p1    # Lcom/android/server/AppOpsService$1;

    invoke-direct {p0}, Lcom/android/server/AppOpsService$Restriction;-><init>()V

    return-void
.end method
