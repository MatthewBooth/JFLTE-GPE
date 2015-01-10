.class public Lcom/android/systemui/volume/ZenToast;
.super Ljava/lang/Object;
.source "ZenToast.java"


# static fields
.field private static final ACTION_HIDE:Ljava/lang/String;

.field private static final ACTION_SHOW:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mWindowManager:Landroid/view/WindowManager;

.field private mZenToast:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/systemui/volume/ZenToast;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".SHOW"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/ZenToast;->ACTION_SHOW:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/systemui/volume/ZenToast;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".HIDE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/ZenToast;->ACTION_HIDE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/volume/ZenToast$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/ZenToast$2;-><init>(Lcom/android/systemui/volume/ZenToast;)V

    iput-object v0, p0, Lcom/android/systemui/volume/ZenToast;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/volume/ZenToast$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/ZenToast$3;-><init>(Lcom/android/systemui/volume/ZenToast;)V

    iput-object v0, p0, Lcom/android/systemui/volume/ZenToast;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/systemui/volume/ZenToast;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/volume/ZenToast;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenToast;->mWindowManager:Landroid/view/WindowManager;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    sget-object v0, Lcom/android/systemui/volume/ZenToast;->ACTION_SHOW:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/volume/ZenToast;->ACTION_HIDE:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/volume/ZenToast;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenToast;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/systemui/volume/ZenToast;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/volume/ZenToast;)Landroid/view/View;
    .locals 1
    .param p0    # Lcom/android/systemui/volume/ZenToast;

    iget-object v0, p0, Lcom/android/systemui/volume/ZenToast;->mZenToast:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/volume/ZenToast;ILjava/lang/String;)V
    .locals 0
    .param p0    # Lcom/android/systemui/volume/ZenToast;
    .param p1    # I
    .param p2    # Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/ZenToast;->handleShow(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/volume/ZenToast;)V
    .locals 0
    .param p0    # Lcom/android/systemui/volume/ZenToast;

    invoke-direct {p0}, Lcom/android/systemui/volume/ZenToast;->handleHide()V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/volume/ZenToast;->ACTION_SHOW:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/volume/ZenToast;->ACTION_HIDE:Ljava/lang/String;

    return-object v0
.end method

.method private handleHide()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/ZenToast;->mZenToast:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/ZenToast;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenToast;->mZenToast:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenToast;->mZenToast:Landroid/view/View;

    :cond_0
    return-void
.end method

.method private handleShow(ILjava/lang/String;)V
    .locals 12
    .param p1    # I
    .param p2    # Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/volume/ZenToast;->handleHide()V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v8, p0, Lcom/android/systemui/volume/ZenToast;->mContext:Landroid/content/Context;

    const v9, 0x7f0b011d

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v2, 0x7f0200c7

    :goto_1
    if-eqz p2, :cond_0

    move-object v6, p2

    :cond_0
    iget-object v8, p0, Lcom/android/systemui/volume/ZenToast;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v4}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 v8, -0x2

    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    const v8, 0x7f0c0051

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v8, -0x3

    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->format:I

    const v8, 0x7f0a0032

    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/16 v8, 0x7de

    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v8, 0x98

    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v8, 0x11

    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v8, p0, Lcom/android/systemui/volume/ZenToast;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/systemui/volume/ZenToast;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f04005a

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/volume/ZenToast;->mZenToast:Landroid/view/View;

    iget-object v8, p0, Lcom/android/systemui/volume/ZenToast;->mZenToast:Landroid/view/View;

    const v9, 0x102000b

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/systemui/volume/ZenToast;->mZenToast:Landroid/view/View;

    const v9, 0x1020006

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v8, p0, Lcom/android/systemui/volume/ZenToast;->mZenToast:Landroid/view/View;

    new-instance v9, Lcom/android/systemui/volume/ZenToast$1;

    invoke-direct {v9, p0, v3}, Lcom/android/systemui/volume/ZenToast$1;-><init>(Lcom/android/systemui/volume/ZenToast;Landroid/widget/TextView;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v8, p0, Lcom/android/systemui/volume/ZenToast;->mWindowManager:Landroid/view/WindowManager;

    iget-object v9, p0, Lcom/android/systemui/volume/ZenToast;->mZenToast:Landroid/view/View;

    invoke-interface {v8, v9, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v8, 0x7f09002f

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const v8, 0x7f090030

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/volume/ZenToast;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x2

    add-int v10, v0, v7

    int-to-long v10, v10

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :pswitch_1
    iget-object v8, p0, Lcom/android/systemui/volume/ZenToast;->mContext:Landroid/content/Context;

    const v9, 0x7f0b011e

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v2, 0x7f0200c6

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public hide()V
    .locals 3

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/android/systemui/volume/ZenToast;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/ZenToast;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/ZenToast;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public show(I)V
    .locals 3
    .param p1    # I

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/systemui/volume/ZenToast;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/ZenToast;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/ZenToast;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
