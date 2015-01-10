.class Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;
.super Ljava/lang/Object;
.source "HdmiCecKeycode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecKeycode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeycodeEntry"
.end annotation


# instance fields
.field private final mAndroidKeycode:I

.field private final mCecKeycode:I

.field private final mIsRepeatable:Z


# direct methods
.method private constructor <init>(II)V
    .locals 1
    .param p1    # I
    .param p2    # I

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZ)V

    return-void
.end method

.method synthetic constructor <init>(IILcom/android/server/hdmi/HdmiCecKeycode$1;)V
    .locals 0
    .param p1    # I
    .param p2    # I
    .param p3    # Lcom/android/server/hdmi/HdmiCecKeycode$1;

    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    return-void
.end method

.method private constructor <init>(IIZ)V
    .locals 0
    .param p1    # I
    .param p2    # I
    .param p3    # Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mAndroidKeycode:I

    iput p2, p0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mCecKeycode:I

    iput-boolean p3, p0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mIsRepeatable:Z

    return-void
.end method

.method synthetic constructor <init>(IIZLcom/android/server/hdmi/HdmiCecKeycode$1;)V
    .locals 0
    .param p1    # I
    .param p2    # I
    .param p3    # Z
    .param p4    # Lcom/android/server/hdmi/HdmiCecKeycode$1;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;I)I
    .locals 1
    .param p0    # Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->toCecKeycodeIfMatched(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;I)I
    .locals 1
    .param p0    # Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->toAndroidKeycodeIfMatched(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;I)Ljava/lang/Boolean;
    .locals 1
    .param p0    # Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->isRepeatableIfMatched(I)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private isRepeatableIfMatched(I)Ljava/lang/Boolean;
    .locals 1
    .param p1    # I

    iget v0, p0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mAndroidKeycode:I

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mIsRepeatable:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private toAndroidKeycodeIfMatched(I)I
    .locals 1
    .param p1    # I

    iget v0, p0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mCecKeycode:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mAndroidKeycode:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private toCecKeycodeIfMatched(I)I
    .locals 1
    .param p1    # I

    iget v0, p0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mAndroidKeycode:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mCecKeycode:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
