.class Lcom/android/services/telephony/EmergencyTonePlayer;
.super Ljava/lang/Object;
.source "EmergencyTonePlayer.java"


# static fields
.field private static final VIBRATE_PATTERN:[J

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;

.field private mIsVibrating:Z

.field private mSavedInCallVolume:I

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private final mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x2

    new-array v0, v2, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/services/telephony/EmergencyTonePlayer;->VIBRATE_PATTERN:[J

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/EmergencyTonePlayer;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    return-void

    nop

    :array_0
    .array-data 8
        0x3e8
        0x3e8
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/SystemVibrator;

    invoke-direct {v0}, Landroid/os/SystemVibrator;-><init>()V

    iput-object v0, p0, Lcom/android/services/telephony/EmergencyTonePlayer;->mVibrator:Landroid/os/Vibrator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/services/telephony/EmergencyTonePlayer;->mIsVibrating:Z

    iput-object p1, p0, Lcom/android/services/telephony/EmergencyTonePlayer;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/services/telephony/EmergencyTonePlayer;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method private getToneSetting()I
    .locals 3

    iget-object v0, p0, Lcom/android/services/telephony/EmergencyTonePlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "emergency_tone"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private startAlert()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/services/telephony/EmergencyTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/ToneGenerator;

    const/16 v1, 0x64

    invoke-direct {v0, v2, v1}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v0, p0, Lcom/android/services/telephony/EmergencyTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    iget-object v0, p0, Lcom/android/services/telephony/EmergencyTonePlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/EmergencyTonePlayer;->mSavedInCallVolume:I

    iget-object v0, p0, Lcom/android/services/telephony/EmergencyTonePlayer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/services/telephony/EmergencyTonePlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    invoke-virtual {v0, v2, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    iget-object v0, p0, Lcom/android/services/telephony/EmergencyTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    const/16 v1, 0x5c

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "An alert is already running."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private startVibrate()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/services/telephony/EmergencyTonePlayer;->mIsVibrating:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/EmergencyTonePlayer;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lcom/android/services/telephony/EmergencyTonePlayer;->VIBRATE_PATTERN:[J

    const/4 v2, 0x0

    sget-object v3, Lcom/android/services/telephony/EmergencyTonePlayer;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Vibrator;->vibrate([JILandroid/media/AudioAttributes;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/services/telephony/EmergencyTonePlayer;->mIsVibrating:Z

    :cond_0
    return-void
.end method

.method private stopAlert()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/services/telephony/EmergencyTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/EmergencyTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    iget-object v0, p0, Lcom/android/services/telephony/EmergencyTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/services/telephony/EmergencyTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    iget-object v0, p0, Lcom/android/services/telephony/EmergencyTonePlayer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/services/telephony/EmergencyTonePlayer;->mSavedInCallVolume:I

    invoke-virtual {v0, v2, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    iput v2, p0, Lcom/android/services/telephony/EmergencyTonePlayer;->mSavedInCallVolume:I

    :cond_0
    return-void
.end method

.method private stopVibrate()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/services/telephony/EmergencyTonePlayer;->mIsVibrating:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/EmergencyTonePlayer;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/services/telephony/EmergencyTonePlayer;->mIsVibrating:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public start()V
    .locals 2

    invoke-direct {p0}, Lcom/android/services/telephony/EmergencyTonePlayer;->getToneSetting()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/services/telephony/EmergencyTonePlayer;->startVibrate()V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/services/telephony/EmergencyTonePlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/services/telephony/EmergencyTonePlayer;->startAlert()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public stop()V
    .locals 0

    invoke-direct {p0}, Lcom/android/services/telephony/EmergencyTonePlayer;->stopVibrate()V

    invoke-direct {p0}, Lcom/android/services/telephony/EmergencyTonePlayer;->stopAlert()V

    return-void
.end method
