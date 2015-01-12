.class final Lcom/android/dialer/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;
.super Ljava/lang/Object;
.source "VoicemailPlaybackFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TextViewWithMessagesController"
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final mPermanentTextView:Landroid/widget/TextView;

.field private mRunnable:Ljava/lang/Runnable;

.field private final mTemporaryTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
    .param p2    # Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;->mPermanentTextView:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;->mTemporaryTextView:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$300(Lcom/android/dialer/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;)Ljava/lang/Object;
    .locals 1
    .param p0    # Lcom/android/dialer/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/dialer/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;)Ljava/lang/Runnable;
    .locals 1
    .param p0    # Lcom/android/dialer/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/dialer/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0    # Lcom/android/dialer/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;
    .param p1    # Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;->mRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/dialer/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;)Landroid/widget/TextView;
    .locals 1
    .param p0    # Lcom/android/dialer/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;->mTemporaryTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/dialer/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;)Landroid/widget/TextView;
    .locals 1
    .param p0    # Lcom/android/dialer/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;->mPermanentTextView:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public setPermanentText(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;->mPermanentTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTemporaryText(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V
    .locals 6
    .param p1    # Ljava/lang/String;
    .param p2    # J
    .param p4    # Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;->mTemporaryTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;->mTemporaryTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f800000

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;->mPermanentTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    new-instance v0, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController$1;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;)V

    iput-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;->mRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;->mTemporaryTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
