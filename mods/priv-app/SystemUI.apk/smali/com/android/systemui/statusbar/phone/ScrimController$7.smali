.class Lcom/android/systemui/statusbar/phone/ScrimController$7;
.super Ljava/lang/Object;
.source "ScrimController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/ScrimController;->setBackDropView(Lcom/android/systemui/statusbar/BackDropView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/ScrimController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/ScrimController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$7;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$7;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    # invokes: Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimBehindDrawingMode()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$1400(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    return-void
.end method
