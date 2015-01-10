.class Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;
.super Lcom/android/systemui/statusbar/phone/SystemUIDialog;
.source "GuestResumeSessionReceiver.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/GuestResumeSessionReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResetSessionDialog"
.end annotation


# instance fields
.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # I

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0b0137

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b0138

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->setCanceledOnTouchOutside(Z)V

    const/4 v0, -0x2

    const v1, 0x7f0b0139

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p0}, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v0, -0x1

    const v1, 0x7f0b013a

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p0}, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iput p2, p0, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->mUserId:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->mUserId:I

    # invokes: Lcom/android/systemui/GuestResumeSessionReceiver;->wipeGuestSession(Landroid/content/Context;I)V
    invoke-static {v0, v1}, Lcom/android/systemui/GuestResumeSessionReceiver;->access$000(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->dismiss()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->cancel()V

    goto :goto_0
.end method
