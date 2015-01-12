.class final Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NewCall;
.super Ljava/lang/Object;
.source "DefaultVoicemailNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/calllog/DefaultVoicemailNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NewCall"
.end annotation


# instance fields
.field public final callsUri:Landroid/net/Uri;

.field public final number:Ljava/lang/String;

.field public final numberPresentation:I

.field public final voicemailUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;I)V
    .locals 0
    .param p1    # Landroid/net/Uri;
    .param p2    # Landroid/net/Uri;
    .param p3    # Ljava/lang/String;
    .param p4    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NewCall;->callsUri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NewCall;->voicemailUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NewCall;->number:Ljava/lang/String;

    iput p4, p0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NewCall;->numberPresentation:I

    return-void
.end method
