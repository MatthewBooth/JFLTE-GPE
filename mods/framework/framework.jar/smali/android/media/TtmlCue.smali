.class Landroid/media/TtmlCue;
.super Landroid/media/SubtitleTrack$Cue;
.source "TtmlRenderer.java"


# instance fields
.field public mText:Ljava/lang/String;

.field public mTtmlFragment:Ljava/lang/String;


# direct methods
.method public constructor <init>(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # J
    .param p3    # J
    .param p5    # Ljava/lang/String;
    .param p6    # Ljava/lang/String;

    invoke-direct {p0}, Landroid/media/SubtitleTrack$Cue;-><init>()V

    iput-wide p1, p0, Landroid/media/TtmlCue;->mStartTimeMs:J

    iput-wide p3, p0, Landroid/media/TtmlCue;->mEndTimeMs:J

    iput-object p5, p0, Landroid/media/TtmlCue;->mText:Ljava/lang/String;

    iput-object p6, p0, Landroid/media/TtmlCue;->mTtmlFragment:Ljava/lang/String;

    return-void
.end method
