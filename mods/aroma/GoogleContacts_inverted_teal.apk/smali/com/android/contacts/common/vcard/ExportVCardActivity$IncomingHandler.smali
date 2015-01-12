.class Lcom/android/contacts/common/vcard/ExportVCardActivity$IncomingHandler;
.super Landroid/os/Handler;
.source "ExportVCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/vcard/ExportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IncomingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/vcard/ExportVCardActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/common/vcard/ExportVCardActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity$IncomingHandler;->this$0:Lcom/android/contacts/common/vcard/ExportVCardActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/common/vcard/ExportVCardActivity;Lcom/android/contacts/common/vcard/ExportVCardActivity$1;)V
    .locals 0
    .param p1    # Lcom/android/contacts/common/vcard/ExportVCardActivity;
    .param p2    # Lcom/android/contacts/common/vcard/ExportVCardActivity$1;

    invoke-direct {p0, p1}, Lcom/android/contacts/common/vcard/ExportVCardActivity$IncomingHandler;-><init>(Lcom/android/contacts/common/vcard/ExportVCardActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1    # Landroid/os/Message;

    const v3, 0x7f0e000d

    const v2, 0x7f0b00c7

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_1

    const-string v0, "VCardExport"

    const-string v1, "Message returned from vCard server contains error code."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity$IncomingHandler;->this$0:Lcom/android/contacts/common/vcard/ExportVCardActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    # setter for: Lcom/android/contacts/common/vcard/ExportVCardActivity;->mErrorReason:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->access$002(Lcom/android/contacts/common/vcard/ExportVCardActivity;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity$IncomingHandler;->this$0:Lcom/android/contacts/common/vcard/ExportVCardActivity;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->showDialog(I)V

    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "VCardExport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_2

    const-string v0, "VCardExport"

    const-string v1, "Message returned from vCard server doesn\'t contain valid path"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity$IncomingHandler;->this$0:Lcom/android/contacts/common/vcard/ExportVCardActivity;

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity$IncomingHandler;->this$0:Lcom/android/contacts/common/vcard/ExportVCardActivity;

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/contacts/common/vcard/ExportVCardActivity;->mErrorReason:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->access$002(Lcom/android/contacts/common/vcard/ExportVCardActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity$IncomingHandler;->this$0:Lcom/android/contacts/common/vcard/ExportVCardActivity;

    invoke-virtual {v0, v3}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->showDialog(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity$IncomingHandler;->this$0:Lcom/android/contacts/common/vcard/ExportVCardActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    # setter for: Lcom/android/contacts/common/vcard/ExportVCardActivity;->mTargetFileName:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->access$102(Lcom/android/contacts/common/vcard/ExportVCardActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity$IncomingHandler;->this$0:Lcom/android/contacts/common/vcard/ExportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ExportVCardActivity;->mTargetFileName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->access$100(Lcom/android/contacts/common/vcard/ExportVCardActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "VCardExport"

    const-string v1, "Destination file name coming from vCard service is empty."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity$IncomingHandler;->this$0:Lcom/android/contacts/common/vcard/ExportVCardActivity;

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity$IncomingHandler;->this$0:Lcom/android/contacts/common/vcard/ExportVCardActivity;

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/contacts/common/vcard/ExportVCardActivity;->mErrorReason:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->access$002(Lcom/android/contacts/common/vcard/ExportVCardActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity$IncomingHandler;->this$0:Lcom/android/contacts/common/vcard/ExportVCardActivity;

    invoke-virtual {v0, v3}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->showDialog(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity$IncomingHandler;->this$0:Lcom/android/contacts/common/vcard/ExportVCardActivity;

    const v1, 0x7f0e000b

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->showDialog(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
