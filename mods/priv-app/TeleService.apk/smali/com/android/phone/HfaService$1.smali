.class Lcom/android/phone/HfaService$1;
.super Ljava/lang/Object;
.source "HfaService.java"

# interfaces
.implements Lcom/android/phone/HfaLogic$HfaLogicCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/HfaService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/HfaService;


# direct methods
.method constructor <init>(Lcom/android/phone/HfaService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/HfaService$1;->this$0:Lcom/android/phone/HfaService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;

    # getter for: Lcom/android/phone/HfaService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/HfaService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/HfaService$1;->this$0:Lcom/android/phone/HfaService;

    # invokes: Lcom/android/phone/HfaService;->onComplete()V
    invoke-static {v0}, Lcom/android/phone/HfaService;->access$100(Lcom/android/phone/HfaService;)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    # getter for: Lcom/android/phone/HfaService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/HfaService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/HfaService$1;->this$0:Lcom/android/phone/HfaService;

    # invokes: Lcom/android/phone/HfaService;->onComplete()V
    invoke-static {v0}, Lcom/android/phone/HfaService;->access$100(Lcom/android/phone/HfaService;)V

    return-void
.end method
