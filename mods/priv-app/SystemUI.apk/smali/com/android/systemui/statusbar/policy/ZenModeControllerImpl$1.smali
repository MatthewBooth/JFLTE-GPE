.class Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$1;
.super Lcom/android/systemui/qs/GlobalSetting;
.source "ZenModeControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .param p2    # Landroid/content/Context;
    .param p3    # Landroid/os/Handler;
    .param p4    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/GlobalSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->fireZenChanged(I)V
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->access$000(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;I)V

    return-void
.end method
