.class Lcom/android/dialer/calllog/CallLogFragment$2;
.super Ljava/lang/Object;
.source "CallLogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/calllog/CallLogFragment;->updateVoicemailStatusMessage(Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/calllog/CallLogFragment;

.field final synthetic val$message:Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;


# direct methods
.method constructor <init>(Lcom/android/dialer/calllog/CallLogFragment;Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogFragment$2;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    iput-object p2, p0, Lcom/android/dialer/calllog/CallLogFragment$2;->val$message:Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$2;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogFragment$2;->val$message:Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;

    iget-object v3, v3, Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;->actionUri:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
