.class Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;
.super Ljava/lang/Object;
.source "HdmiCecMessageValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecMessageValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ValidationInfo"
.end annotation


# instance fields
.field public final addressType:I

.field public final parameterValidator:Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V
    .locals 0
    .param p1    # Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;
    .param p2    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;->parameterValidator:Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;

    iput p2, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;->addressType:I

    return-void
.end method
