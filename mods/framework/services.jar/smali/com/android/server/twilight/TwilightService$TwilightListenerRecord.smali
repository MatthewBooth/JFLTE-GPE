.class Lcom/android/server/twilight/TwilightService$TwilightListenerRecord;
.super Ljava/lang/Object;
.source "TwilightService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/twilight/TwilightService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TwilightListenerRecord"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Lcom/android/server/twilight/TwilightListener;


# direct methods
.method public constructor <init>(Lcom/android/server/twilight/TwilightListener;Landroid/os/Handler;)V
    .locals 0
    .param p1    # Lcom/android/server/twilight/TwilightListener;
    .param p2    # Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/twilight/TwilightService$TwilightListenerRecord;->mListener:Lcom/android/server/twilight/TwilightListener;

    iput-object p2, p0, Lcom/android/server/twilight/TwilightService$TwilightListenerRecord;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public postUpdate()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$TwilightListenerRecord;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$TwilightListenerRecord;->mListener:Lcom/android/server/twilight/TwilightListener;

    invoke-interface {v0}, Lcom/android/server/twilight/TwilightListener;->onTwilightStateChanged()V

    return-void
.end method
