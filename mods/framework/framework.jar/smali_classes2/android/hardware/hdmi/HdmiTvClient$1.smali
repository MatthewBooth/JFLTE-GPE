.class final Landroid/hardware/hdmi/HdmiTvClient$1;
.super Landroid/hardware/hdmi/IHdmiControlCallback$Stub;
.source "HdmiTvClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/hdmi/HdmiTvClient;->getCallbackWrapper(Landroid/hardware/hdmi/HdmiTvClient$SelectCallback;)Landroid/hardware/hdmi/IHdmiControlCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Landroid/hardware/hdmi/HdmiTvClient$SelectCallback;


# direct methods
.method constructor <init>(Landroid/hardware/hdmi/HdmiTvClient$SelectCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/hdmi/HdmiTvClient$1;->val$callback:Landroid/hardware/hdmi/HdmiTvClient$SelectCallback;

    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiTvClient$1;->val$callback:Landroid/hardware/hdmi/HdmiTvClient$SelectCallback;

    invoke-interface {v0, p1}, Landroid/hardware/hdmi/HdmiTvClient$SelectCallback;->onComplete(I)V

    return-void
.end method
