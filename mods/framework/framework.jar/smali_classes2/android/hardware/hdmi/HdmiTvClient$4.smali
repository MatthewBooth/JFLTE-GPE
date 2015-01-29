.class Landroid/hardware/hdmi/HdmiTvClient$4;
.super Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener$Stub;
.source "HdmiTvClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/hdmi/HdmiTvClient;->getListenerWrapper(Landroid/hardware/hdmi/HdmiTvClient$HdmiMhlVendorCommandListener;)Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/hdmi/HdmiTvClient;

.field final synthetic val$listener:Landroid/hardware/hdmi/HdmiTvClient$HdmiMhlVendorCommandListener;


# direct methods
.method constructor <init>(Landroid/hardware/hdmi/HdmiTvClient;Landroid/hardware/hdmi/HdmiTvClient$HdmiMhlVendorCommandListener;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/hdmi/HdmiTvClient$4;->this$0:Landroid/hardware/hdmi/HdmiTvClient;

    iput-object p2, p0, Landroid/hardware/hdmi/HdmiTvClient$4;->val$listener:Landroid/hardware/hdmi/HdmiTvClient$HdmiMhlVendorCommandListener;

    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceived(III[B)V
    .locals 1
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # [B

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiTvClient$4;->val$listener:Landroid/hardware/hdmi/HdmiTvClient$HdmiMhlVendorCommandListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/hdmi/HdmiTvClient$HdmiMhlVendorCommandListener;->onReceived(III[B)V

    return-void
.end method
