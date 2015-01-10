.class final Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost$H;
.super Landroid/os/Handler;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost$H;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;Lcom/android/systemui/statusbar/phone/PhoneStatusBar$1;)V
    .locals 0
    .param p1    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;
    .param p2    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar$1;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost$H;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1    # Landroid/os/Message;

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost$H;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;->handleStartDozing(Ljava/lang/Runnable;)V
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;->access$8500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;Ljava/lang/Runnable;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost$H;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/doze/DozeHost$PulseCallback;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;->handlePulseWhileDozing(Lcom/android/systemui/doze/DozeHost$PulseCallback;)V
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;->access$8600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;Lcom/android/systemui/doze/DozeHost$PulseCallback;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost$H;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;->handleStopDozing()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;->access$8700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
