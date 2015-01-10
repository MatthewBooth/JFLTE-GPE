.class public final Lcom/android/server/AppOpsService$Op;
.super Ljava/lang/Object;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Op"
.end annotation


# instance fields
.field final clientTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field public dialogReqQueue:Lcom/android/server/PermissionDialogReqQueue;

.field public duration:I

.field public mode:I

.field public nesting:I

.field public noteOpCount:I

.field public final op:I

.field public final packageName:Ljava/lang/String;

.field public rejectTime:J

.field public startOpCount:I

.field public time:J

.field public final uid:I


# direct methods
.method public constructor <init>(ILjava/lang/String;II)V
    .locals 1
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .param p4    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/AppOpsService$Op;->uid:I

    iput-object p2, p0, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/AppOpsService$Op;->op:I

    iput p4, p0, Lcom/android/server/AppOpsService$Op;->mode:I

    new-instance v0, Lcom/android/server/PermissionDialogReqQueue;

    invoke-direct {v0}, Lcom/android/server/PermissionDialogReqQueue;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService$Op;->dialogReqQueue:Lcom/android/server/PermissionDialogReqQueue;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService$Op;->clientTokens:Ljava/util/ArrayList;

    return-void
.end method
