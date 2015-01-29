.class Landroid/service/dreams/DreamService$DreamServiceWrapper$3;
.super Ljava/lang/Object;
.source "DreamService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/dreams/DreamService$DreamServiceWrapper;->wakeUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/dreams/DreamService$DreamServiceWrapper;


# direct methods
.method constructor <init>(Landroid/service/dreams/DreamService$DreamServiceWrapper;)V
    .locals 0

    iput-object p1, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper$3;->this$1:Landroid/service/dreams/DreamService$DreamServiceWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper$3;->this$1:Landroid/service/dreams/DreamService$DreamServiceWrapper;

    iget-object v0, v0, Landroid/service/dreams/DreamService$DreamServiceWrapper;->this$0:Landroid/service/dreams/DreamService;

    const/4 v1, 0x1

    # invokes: Landroid/service/dreams/DreamService;->wakeUp(Z)V
    invoke-static {v0, v1}, Landroid/service/dreams/DreamService;->access$900(Landroid/service/dreams/DreamService;Z)V

    return-void
.end method
