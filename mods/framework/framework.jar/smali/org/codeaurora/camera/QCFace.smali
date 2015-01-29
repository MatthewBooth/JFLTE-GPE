.class public Lorg/codeaurora/camera/QCFace;
.super Landroid/hardware/Camera$Face;
.source "QCFace.java"


# static fields
.field private static final BUNDLE_KEY_BLINK_DETECTED:Ljava/lang/String; = "blinkDetected"

.field private static final BUNDLE_KEY_FACE_PITCH_DEGREE:Ljava/lang/String; = "facePitchDegree"

.field private static final BUNDLE_KEY_FACE_RECOGNIZED:Ljava/lang/String; = "faceRecognized"

.field private static final BUNDLE_KEY_FACE_ROLL_DEGREE:Ljava/lang/String; = "faceRollDegree"

.field private static final BUNDLE_KEY_FACE_YAW_DEGREE:Ljava/lang/String; = "faceYawDegree"

.field private static final BUNDLE_KEY_GAZE_LEFT_RIGHT_DEGREE:Ljava/lang/String; = "gazeLeftRightDegree"

.field private static final BUNDLE_KEY_GAZE_UP_DOWN_DEGREE:Ljava/lang/String; = "gazeUpDownDegree"

.field private static final BUNDLE_KEY_LEFT_EYE_CLOSED_VALUE:Ljava/lang/String; = "leftEyeClosedValue"

.field private static final BUNDLE_KEY_RIGHT_EYE_CLOSED_VALUE:Ljava/lang/String; = "rightEyeClosedValue"

.field private static final BUNDLE_KEY_SMILE_SCORE:Ljava/lang/String; = "smileScore"

.field private static final BUNDLE_KEY_SMILE_VALUE:Ljava/lang/String; = "smileValue"

.field private static final STR_FACIAL_PROCESSING:Ljava/lang/String; = "ro.qc.sdk.camera.facialproc"

.field private static final STR_FALSE:Ljava/lang/String; = "false"

.field private static final STR_TRUE:Ljava/lang/String; = "true"


# instance fields
.field private blinkDetected:I

.field private faceRecognized:I

.field private gazeAngle:I

.field private leftrightDir:I

.field private leftrightGaze:I

.field private leyeBlink:I

.field private reyeBlink:I

.field private rollDir:I

.field private smileDegree:I

.field private smileScore:I

.field private topbottomGaze:I

.field private updownDir:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/hardware/Camera$Face;-><init>()V

    iput v0, p0, Lorg/codeaurora/camera/QCFace;->smileDegree:I

    iput v0, p0, Lorg/codeaurora/camera/QCFace;->smileScore:I

    iput v0, p0, Lorg/codeaurora/camera/QCFace;->blinkDetected:I

    iput v0, p0, Lorg/codeaurora/camera/QCFace;->faceRecognized:I

    iput v0, p0, Lorg/codeaurora/camera/QCFace;->gazeAngle:I

    iput v0, p0, Lorg/codeaurora/camera/QCFace;->updownDir:I

    iput v0, p0, Lorg/codeaurora/camera/QCFace;->leftrightDir:I

    iput v0, p0, Lorg/codeaurora/camera/QCFace;->rollDir:I

    iput v0, p0, Lorg/codeaurora/camera/QCFace;->leyeBlink:I

    iput v0, p0, Lorg/codeaurora/camera/QCFace;->reyeBlink:I

    iput v0, p0, Lorg/codeaurora/camera/QCFace;->leftrightGaze:I

    iput v0, p0, Lorg/codeaurora/camera/QCFace;->topbottomGaze:I

    return-void
.end method


# virtual methods
.method public getBlinkDetected()I
    .locals 1

    iget v0, p0, Lorg/codeaurora/camera/QCFace;->blinkDetected:I

    return v0
.end method

.method public getFaceRecognized()I
    .locals 1

    iget v0, p0, Lorg/codeaurora/camera/QCFace;->faceRecognized:I

    return v0
.end method

.method public getGazeAngle()I
    .locals 1

    iget v0, p0, Lorg/codeaurora/camera/QCFace;->gazeAngle:I

    return v0
.end method

.method public getLeftEyeBlinkDegree()I
    .locals 1

    iget v0, p0, Lorg/codeaurora/camera/QCFace;->leyeBlink:I

    return v0
.end method

.method public getLeftRightDirection()I
    .locals 1

    iget v0, p0, Lorg/codeaurora/camera/QCFace;->leftrightDir:I

    return v0
.end method

.method public getLeftRightGazeDegree()I
    .locals 1

    iget v0, p0, Lorg/codeaurora/camera/QCFace;->leftrightGaze:I

    return v0
.end method

.method public getQCFaceInfo()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "smileValue"

    iget v2, p0, Lorg/codeaurora/camera/QCFace;->smileDegree:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "leftEyeClosedValue"

    iget v2, p0, Lorg/codeaurora/camera/QCFace;->leyeBlink:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "rightEyeClosedValue"

    iget v2, p0, Lorg/codeaurora/camera/QCFace;->reyeBlink:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "facePitchDegree"

    iget v2, p0, Lorg/codeaurora/camera/QCFace;->updownDir:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "faceYawDegree"

    iget v2, p0, Lorg/codeaurora/camera/QCFace;->leftrightDir:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "faceRollDegree"

    iget v2, p0, Lorg/codeaurora/camera/QCFace;->rollDir:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "gazeUpDownDegree"

    iget v2, p0, Lorg/codeaurora/camera/QCFace;->topbottomGaze:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "gazeLeftRightDegree"

    iget v2, p0, Lorg/codeaurora/camera/QCFace;->leftrightGaze:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "blinkDetected"

    iget v2, p0, Lorg/codeaurora/camera/QCFace;->blinkDetected:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "smileScore"

    iget v2, p0, Lorg/codeaurora/camera/QCFace;->smileScore:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "faceRecognized"

    iget v2, p0, Lorg/codeaurora/camera/QCFace;->faceRecognized:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getRightEyeBlinkDegree()I
    .locals 1

    iget v0, p0, Lorg/codeaurora/camera/QCFace;->reyeBlink:I

    return v0
.end method

.method public getRollDirection()I
    .locals 1

    iget v0, p0, Lorg/codeaurora/camera/QCFace;->rollDir:I

    return v0
.end method

.method public getSmileDegree()I
    .locals 1

    iget v0, p0, Lorg/codeaurora/camera/QCFace;->smileDegree:I

    return v0
.end method

.method public getSmileScore()I
    .locals 1

    iget v0, p0, Lorg/codeaurora/camera/QCFace;->smileScore:I

    return v0
.end method

.method public getTopBottomGazeDegree()I
    .locals 1

    iget v0, p0, Lorg/codeaurora/camera/QCFace;->topbottomGaze:I

    return v0
.end method

.method public getUpDownDirection()I
    .locals 1

    iget v0, p0, Lorg/codeaurora/camera/QCFace;->updownDir:I

    return v0
.end method
