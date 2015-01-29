.class public Landroid/service/voice/VoiceInteractionSession$Caller;
.super Ljava/lang/Object;
.source "VoiceInteractionSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VoiceInteractionSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Caller"
.end annotation


# instance fields
.field final packageName:Ljava/lang/String;

.field final uid:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/voice/VoiceInteractionSession$Caller;->packageName:Ljava/lang/String;

    iput p2, p0, Landroid/service/voice/VoiceInteractionSession$Caller;->uid:I

    return-void
.end method
