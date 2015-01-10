.class Lcom/android/server/hdmi/HdmiCecMessageValidator$RoutingChangeValidator;
.super Ljava/lang/Object;
.source "HdmiCecMessageValidator.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecMessageValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RoutingChangeValidator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;


# direct methods
.method private constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$RoutingChangeValidator;->this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;Lcom/android/server/hdmi/HdmiCecMessageValidator$1;)V
    .locals 0
    .param p1    # Lcom/android/server/hdmi/HdmiCecMessageValidator;
    .param p2    # Lcom/android/server/hdmi/HdmiCecMessageValidator$1;

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator$RoutingChangeValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;)V

    return-void
.end method


# virtual methods
.method public isValid([B)Z
    .locals 3
    .param p1    # [B

    const/4 v0, 0x0

    array-length v1, p1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$RoutingChangeValidator;->this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    # invokes: Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidPhysicalAddress([BI)Z
    invoke-static {v1, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->access$300(Lcom/android/server/hdmi/HdmiCecMessageValidator;[BI)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$RoutingChangeValidator;->this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    const/4 v2, 0x2

    # invokes: Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidPhysicalAddress([BI)Z
    invoke-static {v1, p1, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->access$300(Lcom/android/server/hdmi/HdmiCecMessageValidator;[BI)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
