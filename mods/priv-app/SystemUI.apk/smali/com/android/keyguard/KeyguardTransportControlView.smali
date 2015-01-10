.class public Lcom/android/keyguard/KeyguardTransportControlView;
.super Landroid/widget/FrameLayout;
.source "KeyguardTransportControlView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardTransportControlView$SavedState;,
        Lcom/android/keyguard/KeyguardTransportControlView$Metadata;,
        Lcom/android/keyguard/KeyguardTransportControlView$FutureSeekRunnable;,
        Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;
    }
.end annotation


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mBadge:Landroid/widget/ImageView;

.field private mBtnNext:Landroid/widget/ImageView;

.field private mBtnPlay:Landroid/widget/ImageView;

.field private mBtnPrev:Landroid/widget/ImageView;

.field private mCurrentPlayState:I

.field private mFormat:Ljava/text/DateFormat;

.field private final mFutureSeekRunnable:Lcom/android/keyguard/KeyguardTransportControlView$FutureSeekRunnable;

.field private mInfoContainer:Landroid/view/ViewGroup;

.field private mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

.field private final mMetadataChangeTransition:Landroid/transition/TransitionSet;

.field private mMetadataContainer:Landroid/view/ViewGroup;

.field private final mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mPopulateMetadataWhenAttached:Landroid/media/RemoteController$MetadataEditor;

.field private mRCClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

.field private mRemoteController:Landroid/media/RemoteController;

.field private final mResetToMetadata:Ljava/lang/Runnable;

.field private mSeekEnabled:Z

.field private mTempDate:Ljava/util/Date;

.field private mTrackArtistAlbum:Landroid/widget/TextView;

.field private mTrackTitle:Landroid/widget/TextView;

.field private mTransientSeek:Landroid/view/View;

.field private mTransientSeekBar:Landroid/widget/SeekBar;

.field private mTransientSeekTimeElapsed:Landroid/widget/TextView;

.field private mTransientSeekTimeTotal:Landroid/widget/TextView;

.field private final mTransportCommandListener:Landroid/view/View$OnClickListener;

.field mTransportControlCallback:Lcom/android/keyguard/KeyguardHostView$TransportControlCallback;

.field private mTransportControlFlags:I

.field private final mTransportShowSeekBarListener:Landroid/view/View$OnLongClickListener;

.field private final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mUpdateSeekBars:Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v5, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;-><init>(Lcom/android/keyguard/KeyguardTransportControlView;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTempDate:Ljava/util/Date;

    iput-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mPopulateMetadataWhenAttached:Landroid/media/RemoteController$MetadataEditor;

    new-instance v5, Lcom/android/keyguard/KeyguardTransportControlView$1;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardTransportControlView$1;-><init>(Lcom/android/keyguard/KeyguardTransportControlView;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mRCClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    new-instance v5, Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;

    invoke-direct {v5, p0, v6}, Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;-><init>(Lcom/android/keyguard/KeyguardTransportControlView;Lcom/android/keyguard/KeyguardTransportControlView$1;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mUpdateSeekBars:Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;

    new-instance v5, Lcom/android/keyguard/KeyguardTransportControlView$2;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardTransportControlView$2;-><init>(Lcom/android/keyguard/KeyguardTransportControlView;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mResetToMetadata:Ljava/lang/Runnable;

    new-instance v5, Lcom/android/keyguard/KeyguardTransportControlView$3;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardTransportControlView$3;-><init>(Lcom/android/keyguard/KeyguardTransportControlView;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransportCommandListener:Landroid/view/View$OnClickListener;

    new-instance v5, Lcom/android/keyguard/KeyguardTransportControlView$4;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardTransportControlView$4;-><init>(Lcom/android/keyguard/KeyguardTransportControlView;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransportShowSeekBarListener:Landroid/view/View$OnLongClickListener;

    new-instance v5, Lcom/android/keyguard/KeyguardTransportControlView$FutureSeekRunnable;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardTransportControlView$FutureSeekRunnable;-><init>(Lcom/android/keyguard/KeyguardTransportControlView;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mFutureSeekRunnable:Lcom/android/keyguard/KeyguardTransportControlView$FutureSeekRunnable;

    new-instance v5, Lcom/android/keyguard/KeyguardTransportControlView$5;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardTransportControlView$5;-><init>(Lcom/android/keyguard/KeyguardTransportControlView;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    new-instance v5, Lcom/android/keyguard/KeyguardTransportControlView$6;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardTransportControlView$6;-><init>(Lcom/android/keyguard/KeyguardTransportControlView;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v5, Landroid/media/AudioManager;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/media/AudioManager;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x0

    iput v5, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mCurrentPlayState:I

    new-instance v5, Landroid/media/RemoteController;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mRCClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    invoke-direct {v5, p1, v6}, Landroid/media/RemoteController;-><init>(Landroid/content/Context;Landroid/media/RemoteController$OnClientUpdateListener;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mRemoteController:Landroid/media/RemoteController;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v5, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mRemoteController:Landroid/media/RemoteController;

    invoke-virtual {v5, v7, v0, v0}, Landroid/media/RemoteController;->setArtworkConfiguration(ZII)Z

    new-instance v3, Landroid/transition/ChangeText;

    invoke-direct {v3}, Landroid/transition/ChangeText;-><init>()V

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Landroid/transition/ChangeText;->setChangeBehavior(I)Landroid/transition/ChangeText;

    new-instance v2, Landroid/transition/TransitionSet;

    invoke-direct {v2}, Landroid/transition/TransitionSet;-><init>()V

    invoke-virtual {v2, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v5

    new-instance v6, Landroid/transition/ChangeBounds;

    invoke-direct {v6}, Landroid/transition/ChangeBounds;-><init>()V

    invoke-virtual {v5, v6}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    new-instance v4, Landroid/transition/TransitionSet;

    invoke-direct {v4}, Landroid/transition/TransitionSet;-><init>()V

    new-instance v5, Landroid/transition/Fade;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Landroid/transition/Fade;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v5

    new-instance v6, Landroid/transition/Fade;

    invoke-direct {v6, v7}, Landroid/transition/Fade;-><init>(I)V

    invoke-virtual {v5, v6}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    invoke-virtual {v4, v7}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v6, v7}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadataChangeTransition:Landroid/transition/TransitionSet;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardTransportControlView;I)V
    .locals 0
    .param p0    # Lcom/android/keyguard/KeyguardTransportControlView;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardTransportControlView;->updatePlayPauseState(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardTransportControlView;)Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;
    .locals 1
    .param p0    # Lcom/android/keyguard/KeyguardTransportControlView;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mUpdateSeekBars:Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/KeyguardTransportControlView;I)V
    .locals 0
    .param p0    # Lcom/android/keyguard/KeyguardTransportControlView;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardTransportControlView;->sendMediaButtonClick(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/keyguard/KeyguardTransportControlView;)Z
    .locals 1
    .param p0    # Lcom/android/keyguard/KeyguardTransportControlView;

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mSeekEnabled:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/keyguard/KeyguardTransportControlView;)Lcom/android/keyguard/KeyguardTransportControlView$FutureSeekRunnable;
    .locals 1
    .param p0    # Lcom/android/keyguard/KeyguardTransportControlView;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mFutureSeekRunnable:Lcom/android/keyguard/KeyguardTransportControlView$FutureSeekRunnable;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/KeyguardTransportControlView;)Ljava/util/Date;
    .locals 1
    .param p0    # Lcom/android/keyguard/KeyguardTransportControlView;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTempDate:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/keyguard/KeyguardTransportControlView;)Ljava/text/DateFormat;
    .locals 1
    .param p0    # Lcom/android/keyguard/KeyguardTransportControlView;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mFormat:Ljava/text/DateFormat;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/keyguard/KeyguardTransportControlView;)Landroid/widget/TextView;
    .locals 1
    .param p0    # Lcom/android/keyguard/KeyguardTransportControlView;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeekTimeElapsed:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/keyguard/KeyguardTransportControlView;Z)V
    .locals 0
    .param p0    # Lcom/android/keyguard/KeyguardTransportControlView;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardTransportControlView;->setEnableMarquee(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardTransportControlView;)Landroid/view/View;
    .locals 1
    .param p0    # Lcom/android/keyguard/KeyguardTransportControlView;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeek:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardTransportControlView;)I
    .locals 1
    .param p0    # Lcom/android/keyguard/KeyguardTransportControlView;

    iget v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mCurrentPlayState:I

    return v0
.end method

.method static synthetic access$400(I)Z
    .locals 1
    .param p0    # I

    invoke-static {p0}, Lcom/android/keyguard/KeyguardTransportControlView;->playbackPositionShouldMove(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardTransportControlView;I)V
    .locals 0
    .param p0    # Lcom/android/keyguard/KeyguardTransportControlView;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardTransportControlView;->updateTransportControls(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardTransportControlView;)Landroid/widget/ImageView;
    .locals 1
    .param p0    # Lcom/android/keyguard/KeyguardTransportControlView;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBtnPrev:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/KeyguardTransportControlView;)Landroid/widget/ImageView;
    .locals 1
    .param p0    # Lcom/android/keyguard/KeyguardTransportControlView;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBtnNext:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/KeyguardTransportControlView;)Landroid/widget/ImageView;
    .locals 1
    .param p0    # Lcom/android/keyguard/KeyguardTransportControlView;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBtnPlay:Landroid/widget/ImageView;

    return-object v0
.end method

.method private static final playbackPositionShouldMove(I)Z
    .locals 1
    .param p0    # I

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private populateMetadata()V
    .locals 13

    const/4 v8, 0x0

    const/4 v12, 0x1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardTransportControlView;->isLaidOut()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadataContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadataContainer:Landroid/view/ViewGroup;

    iget-object v9, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadataChangeTransition:Landroid/transition/TransitionSet;

    invoke-static {v7, v9}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    :cond_0
    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mRemoteController:Landroid/media/RemoteController;

    invoke-virtual {v7}, Landroid/media/RemoteController;->getRemoteControlClientPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardTransportControlView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardTransportControlView;->setBadgeIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v9, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTrackTitle:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->trackTitle:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1800(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->trackTitle:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1800(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->artist:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1700(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, " - "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->artist:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1700(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->albumTitle:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1900(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, " - "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->albumTitle:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1900(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTrackArtistAlbum:Landroid/widget/TextView;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    :goto_2
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->duration:J
    invoke-static {v7}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$2000(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-ltz v7, :cond_9

    invoke-virtual {p0, v12}, Lcom/android/keyguard/KeyguardTransportControlView;->setSeekBarsEnabled(Z)V

    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->duration:J
    invoke-static {v7}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$2000(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)J

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lcom/android/keyguard/KeyguardTransportControlView;->setSeekBarDuration(J)V

    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->duration:J
    invoke-static {v7}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$2000(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)J

    move-result-wide v8

    const-wide/32 v10, 0x5265c00

    cmp-long v7, v8, v10

    if-ltz v7, :cond_7

    const-string v5, "DDD kk mm ss"

    :goto_3
    new-instance v7, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardTransportControlView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget-object v8, v8, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v8, v5}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mFormat:Ljava/text/DateFormat;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mFormat:Ljava/text/DateFormat;

    const-string v8, "GMT+0"

    invoke-static {v8}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :goto_4
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardTransportControlView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v7

    iget-object v8, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {v8}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$2100(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchSetBackground(Landroid/graphics/Bitmap;)V

    iget v2, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransportControlFlags:I

    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBtnPrev:Landroid/widget/ImageView;

    invoke-static {v7, v2, v12}, Lcom/android/keyguard/KeyguardTransportControlView;->setVisibilityBasedOnFlag(Landroid/view/View;II)V

    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBtnNext:Landroid/widget/ImageView;

    const/16 v8, 0x80

    invoke-static {v7, v2, v8}, Lcom/android/keyguard/KeyguardTransportControlView;->setVisibilityBasedOnFlag(Landroid/view/View;II)V

    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBtnPlay:Landroid/widget/ImageView;

    const/16 v8, 0x3c

    invoke-static {v7, v2, v8}, Lcom/android/keyguard/KeyguardTransportControlView;->setVisibilityBasedOnFlag(Landroid/view/View;II)V

    iget v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mCurrentPlayState:I

    invoke-direct {p0, v7}, Lcom/android/keyguard/KeyguardTransportControlView;->updatePlayPauseState(I)V

    return-void

    :catch_0
    move-exception v1

    const-string v7, "TransportControlView"

    const-string v9, "Couldn\'t get remote control client package icon"

    invoke-static {v7, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_5
    move-object v7, v8

    goto/16 :goto_1

    :cond_6
    move-object v6, v8

    goto/16 :goto_2

    :cond_7
    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->duration:J
    invoke-static {v7}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$2000(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)J

    move-result-wide v8

    const-wide/32 v10, 0x36ee80

    cmp-long v7, v8, v10

    if-ltz v7, :cond_8

    const-string v5, "kk mm ss"

    goto :goto_3

    :cond_8
    const-string v5, "mm ss"

    goto :goto_3

    :cond_9
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/keyguard/KeyguardTransportControlView;->setSeekBarsEnabled(Z)V

    goto :goto_4
.end method

.method private sendMediaButtonClick(I)V
    .locals 3
    .param p1    # I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mRemoteController:Landroid/media/RemoteController;

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/media/RemoteController;->sendMediaKeyEvent(Landroid/view/KeyEvent;)Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mRemoteController:Landroid/media/RemoteController;

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/media/RemoteController;->sendMediaKeyEvent(Landroid/view/KeyEvent;)Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransportControlCallback:Lcom/android/keyguard/KeyguardHostView$TransportControlCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardHostView$TransportControlCallback;->userActivity()V

    return-void
.end method

.method private setEnableMarquee(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTrackTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTrackTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTrackArtistAlbum:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTrackTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_1
    return-void
.end method

.method private static setVisibilityBasedOnFlag(Landroid/view/View;II)V
    .locals 1
    .param p0    # Landroid/view/View;
    .param p1    # I
    .param p2    # I

    and-int v0, p1, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updatePlayPauseState(I)V
    .locals 8
    .param p1    # I

    iget v3, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mCurrentPlayState:I

    if-ne p1, v3, :cond_0

    :goto_0
    return-void

    :cond_0
    sparse-switch p1, :sswitch_data_0

    sget v2, Lcom/android/keyguard/R$drawable;->ic_media_play:I

    sget v1, Lcom/android/keyguard/R$string;->keyguard_transport_play_description:I

    :goto_1
    iget-object v3, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->duration:J
    invoke-static {v3}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$2000(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardTransportControlView;->setSeekBarsEnabled(Z)V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBtnPlay:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBtnPlay:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardTransportControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iput p1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mCurrentPlayState:I

    goto :goto_0

    :sswitch_0
    sget v2, Lcom/android/keyguard/R$drawable;->stat_sys_warning:I

    sget v1, Lcom/android/keyguard/R$string;->keyguard_transport_play_description:I

    goto :goto_1

    :sswitch_1
    sget v2, Lcom/android/keyguard/R$drawable;->ic_media_pause:I

    sget v1, Lcom/android/keyguard/R$string;->keyguard_transport_pause_description:I

    goto :goto_1

    :sswitch_2
    sget v2, Lcom/android/keyguard/R$drawable;->ic_media_stop:I

    sget v1, Lcom/android/keyguard/R$string;->keyguard_transport_stop_description:I

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x8 -> :sswitch_2
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method private updateTransportControls(I)V
    .locals 1
    .param p1    # I

    iput p1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransportControlFlags:I

    and-int/lit16 v0, p1, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardTransportControlView;->setSeekBarsEnabled(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method cancelResetToMetadata()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mResetToMetadata:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardTransportControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method clearMetadata()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mPopulateMetadataWhenAttached:Landroid/media/RemoteController$MetadataEditor;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->clear()V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardTransportControlView;->populateMetadata()V

    return-void
.end method

.method delayResetToMetadata()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mResetToMetadata:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardTransportControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mResetToMetadata:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/KeyguardTransportControlView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mPopulateMetadataWhenAttached:Landroid/media/RemoteController$MetadataEditor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mPopulateMetadataWhenAttached:Landroid/media/RemoteController$MetadataEditor;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardTransportControlView;->updateMetadata(Landroid/media/RemoteController$MetadataEditor;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mPopulateMetadataWhenAttached:Landroid/media/RemoteController$MetadataEditor;

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->clear()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mRemoteController:Landroid/media/RemoteController;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerRemoteController(Landroid/media/RemoteController;)Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1    # Landroid/content/res/Configuration;

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardTransportControlView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mRemoteController:Landroid/media/RemoteController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0, v0}, Landroid/media/RemoteController;->setArtworkConfiguration(ZII)Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mRemoteController:Landroid/media/RemoteController;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterRemoteController(Landroid/media/RemoteController;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->clear()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mUpdateSeekBars:Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardTransportControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onFinishInflate()V
    .locals 8

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    sget v6, Lcom/android/keyguard/R$id;->info_container:I

    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardTransportControlView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mInfoContainer:Landroid/view/ViewGroup;

    sget v6, Lcom/android/keyguard/R$id;->metadata_container:I

    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardTransportControlView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadataContainer:Landroid/view/ViewGroup;

    sget v6, Lcom/android/keyguard/R$id;->badge:I

    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardTransportControlView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBadge:Landroid/widget/ImageView;

    sget v6, Lcom/android/keyguard/R$id;->title:I

    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardTransportControlView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTrackTitle:Landroid/widget/TextView;

    sget v6, Lcom/android/keyguard/R$id;->artist_album:I

    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardTransportControlView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTrackArtistAlbum:Landroid/widget/TextView;

    sget v6, Lcom/android/keyguard/R$id;->transient_seek:I

    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardTransportControlView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeek:Landroid/view/View;

    sget v6, Lcom/android/keyguard/R$id;->transient_seek_bar:I

    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardTransportControlView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/SeekBar;

    iput-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeekBar:Landroid/widget/SeekBar;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeekBar:Landroid/widget/SeekBar;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    sget v6, Lcom/android/keyguard/R$id;->transient_seek_time_elapsed:I

    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardTransportControlView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeekTimeElapsed:Landroid/widget/TextView;

    sget v6, Lcom/android/keyguard/R$id;->transient_seek_time_remaining:I

    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardTransportControlView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeekTimeTotal:Landroid/widget/TextView;

    sget v6, Lcom/android/keyguard/R$id;->btn_prev:I

    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardTransportControlView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBtnPrev:Landroid/widget/ImageView;

    sget v6, Lcom/android/keyguard/R$id;->btn_play:I

    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardTransportControlView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBtnPlay:Landroid/widget/ImageView;

    sget v6, Lcom/android/keyguard/R$id;->btn_next:I

    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardTransportControlView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBtnNext:Landroid/widget/ImageView;

    const/4 v6, 0x3

    new-array v1, v6, [Landroid/view/View;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBtnPrev:Landroid/widget/ImageView;

    aput-object v7, v1, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBtnPlay:Landroid/widget/ImageView;

    aput-object v7, v1, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBtnNext:Landroid/widget/ImageView;

    aput-object v7, v1, v6

    move-object v0, v1

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    iget-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransportCommandListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransportShowSeekBarListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/keyguard/KeyguardTransportControlView;->setEnableMarquee(Z)V

    iget-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransportShowSeekBarListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardTransportControlView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1    # Landroid/os/Parcelable;

    instance-of v1, p1, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    iget-object v2, v0, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;->artist:Ljava/lang/String;

    # setter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->artist:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1702(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    iget-object v2, v0, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;->trackTitle:Ljava/lang/String;

    # setter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->trackTitle:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1802(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    iget-object v2, v0, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;->albumTitle:Ljava/lang/String;

    # setter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->albumTitle:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1902(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    iget-wide v2, v0, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;->duration:J

    # setter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->duration:J
    invoke-static {v1, v2, v3}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$2002(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;J)J

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    iget-object v2, v0, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;->bitmap:Landroid/graphics/Bitmap;

    # setter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$2102(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardTransportControlView;->populateMetadata()V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    new-instance v0, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->artist:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1700(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;->artist:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->trackTitle:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1800(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;->trackTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->albumTitle:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1900(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;->albumTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->duration:J
    invoke-static {v1}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$2000(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;->duration:J

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$2100(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method resetToMetadata()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mInfoContainer:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeek:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeek:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadataContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method scrubTo(I)V
    .locals 4
    .param p1    # I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mRemoteController:Landroid/media/RemoteController;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/media/RemoteController;->seekTo(J)Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransportControlCallback:Lcom/android/keyguard/KeyguardHostView$TransportControlCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardHostView$TransportControlCallback;->userActivity()V

    return-void
.end method

.method setBadgeIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBadge:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBadge:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v2, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBadge:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setXfermode(Landroid/graphics/Xfermode;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBadge:Landroid/widget/ImageView;

    const/16 v2, 0xef

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    return-void
.end method

.method setSeekBarDuration(J)V
    .locals 3
    .param p1    # J

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeekBar:Landroid/widget/SeekBar;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    return-void
.end method

.method setSeekBarsEnabled(Z)V
    .locals 2
    .param p1    # Z

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mSeekEnabled:Z

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mSeekEnabled:Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeek:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeek:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadataContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardTransportControlView;->cancelResetToMetadata()V

    goto :goto_0
.end method

.method public setTransportControlCallback(Lcom/android/keyguard/KeyguardHostView$TransportControlCallback;)V
    .locals 0
    .param p1    # Lcom/android/keyguard/KeyguardHostView$TransportControlCallback;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransportControlCallback:Lcom/android/keyguard/KeyguardHostView$TransportControlCallback;

    return-void
.end method

.method tryToggleSeekBar()Z
    .locals 3

    const/4 v2, 0x4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mInfoContainer:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeek:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeek:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadataContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardTransportControlView;->cancelResetToMetadata()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mUpdateSeekBars:Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardTransportControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransportControlCallback:Lcom/android/keyguard/KeyguardHostView$TransportControlCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardHostView$TransportControlCallback;->userActivity()V

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeek:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadataContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardTransportControlView;->delayResetToMetadata()V

    iget v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mCurrentPlayState:I

    invoke-static {v0}, Lcom/android/keyguard/KeyguardTransportControlView;->playbackPositionShouldMove(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mUpdateSeekBars:Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;->run()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mUpdateSeekBars:Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;->updateOnce()Z

    goto :goto_0
.end method

.method updateMetadata(Landroid/media/RemoteController$MetadataEditor;)V
    .locals 4
    .param p1    # Landroid/media/RemoteController$MetadataEditor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardTransportControlView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->artist:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1700(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/media/RemoteController$MetadataEditor;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->artist:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1702(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->trackTitle:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1800(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/media/RemoteController$MetadataEditor;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->trackTitle:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1802(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->albumTitle:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1900(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/media/RemoteController$MetadataEditor;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->albumTitle:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1902(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    const/16 v1, 0x9

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v1, v2, v3}, Landroid/media/RemoteController$MetadataEditor;->getLong(IJ)J

    move-result-wide v2

    # setter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->duration:J
    invoke-static {v0, v2, v3}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$2002(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;J)J

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    const/16 v1, 0x64

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$2100(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/media/RemoteController$MetadataEditor;->getBitmap(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    # setter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$2102(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardTransportControlView;->populateMetadata()V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mPopulateMetadataWhenAttached:Landroid/media/RemoteController$MetadataEditor;

    goto :goto_0
.end method

.method updateSeekBars()Z
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mRemoteController:Landroid/media/RemoteController;

    invoke-virtual {v2}, Landroid/media/RemoteController;->getEstimatedMediaPosition()J

    move-result-wide v2

    long-to-int v0, v2

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const-string v2, "TransportControlView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating seek bars; received invalid estimated media position ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "). Disabling seek."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardTransportControlView;->setSeekBarsEnabled(Z)V

    goto :goto_0
.end method

.method updateSeekDisplay()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mRemoteController:Landroid/media/RemoteController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mFormat:Ljava/text/DateFormat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTempDate:Ljava/util/Date;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mRemoteController:Landroid/media/RemoteController;

    invoke-virtual {v1}, Landroid/media/RemoteController;->getEstimatedMediaPosition()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Date;->setTime(J)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeekTimeElapsed:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mFormat:Ljava/text/DateFormat;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTempDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTempDate:Ljava/util/Date;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->duration:J
    invoke-static {v1}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$2000(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Date;->setTime(J)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeekTimeTotal:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mFormat:Ljava/text/DateFormat;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTempDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
