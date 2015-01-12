.class final Lcom/android/dialer/voicemail/VoicemailPlaybackFragment$ActivityReference;
.super Ljava/lang/Object;
.source "VoicemailPlaybackFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActivityReference"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;


# direct methods
.method private constructor <init>(Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment$ActivityReference;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;Lcom/android/dialer/voicemail/VoicemailPlaybackFragment$1;)V
    .locals 0
    .param p1    # Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;
    .param p2    # Lcom/android/dialer/voicemail/VoicemailPlaybackFragment$1;

    invoke-direct {p0, p1}, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment$ActivityReference;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;)V

    return-void
.end method


# virtual methods
.method public final get()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment$ActivityReference;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method
