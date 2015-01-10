.class Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;
.super Ljava/lang/Object;
.source "HdmiCecMessageValidator.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecMessageValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VariableLengthValidator"
.end annotation


# instance fields
.field private final mMaxLength:I

.field private final mMinLength:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1    # I
    .param p2    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;->mMinLength:I

    iput p2, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;->mMaxLength:I

    return-void
.end method


# virtual methods
.method public isValid([B)Z
    .locals 2
    .param p1    # [B

    array-length v0, p1

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;->mMinLength:I

    if-lt v0, v1, :cond_0

    array-length v0, p1

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;->mMaxLength:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
