.class Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$1;
.super Ljava/lang/Object;
.source "BrightnessMirrorController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->hideMirror()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$1;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$1;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    # getter for: Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->access$000(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
