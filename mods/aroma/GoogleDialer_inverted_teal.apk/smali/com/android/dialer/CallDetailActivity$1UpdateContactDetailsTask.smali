.class Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;
.super Landroid/os/AsyncTask;
.source "CallDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/CallDetailActivity;->updateData([Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateContactDetailsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Lcom/android/dialer/PhoneCallDetails;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/CallDetailActivity;

.field final synthetic val$callUris:[Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/dialer/CallDetailActivity;[Landroid/net/Uri;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    iput-object p2, p0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->val$callUris:[Landroid/net/Uri;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private getNumberTypeOrLocation(Lcom/android/dialer/PhoneCallDetails;)Ljava/lang/CharSequence;
    .locals 3
    .param p1    # Lcom/android/dialer/PhoneCallDetails;

    iget-object v0, p1, Lcom/android/dialer/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    iget-object v0, v0, Lcom/android/dialer/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    iget v1, p1, Lcom/android/dialer/PhoneCallDetails;->numberType:I

    iget-object v2, p1, Lcom/android/dialer/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/android/dialer/PhoneCallDetails;->geocode:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->doInBackground([Ljava/lang/Void;)[Lcom/android/dialer/PhoneCallDetails;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)[Lcom/android/dialer/PhoneCallDetails;
    .locals 6
    .param p1    # [Ljava/lang/Void;

    iget-object v4, p0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->val$callUris:[Landroid/net/Uri;

    array-length v3, v4

    new-array v0, v3, [Lcom/android/dialer/PhoneCallDetails;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    iget-object v5, p0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->val$callUris:[Landroid/net/Uri;

    aget-object v5, v5, v2

    # invokes: Lcom/android/dialer/CallDetailActivity;->getPhoneCallDetailsForUri(Landroid/net/Uri;)Lcom/android/dialer/PhoneCallDetails;
    invoke-static {v4, v5}, Lcom/android/dialer/CallDetailActivity;->access$100(Lcom/android/dialer/CallDetailActivity;Landroid/net/Uri;)Lcom/android/dialer/PhoneCallDetails;

    move-result-object v4

    aput-object v4, v0, v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "CallDetail"

    const-string v5, "invalid URI starting call details"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, [Lcom/android/dialer/PhoneCallDetails;

    invoke-virtual {p0, p1}, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->onPostExecute([Lcom/android/dialer/PhoneCallDetails;)V

    return-void
.end method

.method public onPostExecute([Lcom/android/dialer/PhoneCallDetails;)V
    .locals 24
    .param p1    # [Lcom/android/dialer/PhoneCallDetails;

    if-nez p1, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    const v21, 0x7f08022b

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v4, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-virtual {v4}, Lcom/android/dialer/CallDetailActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    const/4 v4, 0x0

    aget-object v14, p1, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    iget-object v0, v14, Lcom/android/dialer/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    # setter for: Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v4, v0}, Lcom/android/dialer/CallDetailActivity;->access$202(Lcom/android/dialer/CallDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    iget v0, v14, Lcom/android/dialer/PhoneCallDetails;->numberPresentation:I

    move/from16 v19, v0

    iget-object v5, v14, Lcom/android/dialer/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    iget-object v6, v14, Lcom/android/dialer/PhoneCallDetails;->photoUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/dialer/CallDetailActivity;->access$200(Lcom/android/dialer/CallDetailActivity;)Ljava/lang/String;

    move-result-object v4

    move/from16 v0, v19

    invoke-static {v4, v0}, Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;->canPlaceCallsTo(Ljava/lang/CharSequence;I)Z

    move-result v11

    new-instance v20, Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;

    invoke-direct/range {v20 .. v20}, Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/dialer/CallDetailActivity;->access$200(Lcom/android/dialer/CallDetailActivity;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;->isVoicemailNumber(Ljava/lang/CharSequence;)Z

    move-result v18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/dialer/CallDetailActivity;->access$200(Lcom/android/dialer/CallDetailActivity;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;->isSipNumber(Ljava/lang/CharSequence;)Z

    move-result v17

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->getNumberTypeOrLocation(Lcom/android/dialer/PhoneCallDetails;)Ljava/lang/CharSequence;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberDisplayHelper;
    invoke-static {v4}, Lcom/android/dialer/CallDetailActivity;->access$300(Lcom/android/dialer/CallDetailActivity;)Lcom/android/dialer/calllog/PhoneNumberDisplayHelper;

    move-result-object v4

    iget-object v0, v14, Lcom/android/dialer/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    iget v0, v14, Lcom/android/dialer/PhoneCallDetails;->numberPresentation:I

    move/from16 v22, v0

    iget-object v0, v14, Lcom/android/dialer/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/dialer/calllog/PhoneNumberDisplayHelper;->getDisplayNumber(Ljava/lang/CharSequence;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mBidiFormatter:Landroid/text/BidiFormatter;
    invoke-static {v4}, Lcom/android/dialer/CallDetailActivity;->access$400(Lcom/android/dialer/CallDetailActivity;)Landroid/text/BidiFormatter;

    move-result-object v4

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v21

    sget-object v22, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v13

    iget-object v4, v14, Lcom/android/dialer/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mCallerName:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/dialer/CallDetailActivity;->access$500(Lcom/android/dialer/CallDetailActivity;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v0, v14, Lcom/android/dialer/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mCallerNumber:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/dialer/CallDetailActivity;->access$600(Lcom/android/dialer/CallDetailActivity;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v4, v14, Lcom/android/dialer/PhoneCallDetails;->accountLabel:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mAccountLabel:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/dialer/CallDetailActivity;->access$700(Lcom/android/dialer/CallDetailActivity;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v0, v14, Lcom/android/dialer/PhoneCallDetails;->accountLabel:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mAccountLabel:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/dialer/CallDetailActivity;->access$700(Lcom/android/dialer/CallDetailActivity;)Landroid/widget/TextView;

    move-result-object v4

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    move-object/from16 v21, v0

    if-eqz v11, :cond_5

    if-nez v17, :cond_5

    if-nez v18, :cond_5

    const/4 v4, 0x1

    :goto_3
    move-object/from16 v0, v21

    # setter for: Lcom/android/dialer/CallDetailActivity;->mHasEditNumberBeforeCallOption:Z
    invoke-static {v0, v4}, Lcom/android/dialer/CallDetailActivity;->access$802(Lcom/android/dialer/CallDetailActivity;Z)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    move-object/from16 v21, v0

    # invokes: Lcom/android/dialer/CallDetailActivity;->hasVoicemail()Z
    invoke-static/range {v21 .. v21}, Lcom/android/dialer/CallDetailActivity;->access$1000(Lcom/android/dialer/CallDetailActivity;)Z

    move-result v21

    move/from16 v0, v21

    # setter for: Lcom/android/dialer/CallDetailActivity;->mHasTrashOption:Z
    invoke-static {v4, v0}, Lcom/android/dialer/CallDetailActivity;->access$902(Lcom/android/dialer/CallDetailActivity;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # invokes: Lcom/android/dialer/CallDetailActivity;->hasVoicemail()Z
    invoke-static {v4}, Lcom/android/dialer/CallDetailActivity;->access$1000(Lcom/android/dialer/CallDetailActivity;)Z

    move-result v4

    if-nez v4, :cond_6

    const/4 v4, 0x1

    :goto_4
    move-object/from16 v0, v21

    # setter for: Lcom/android/dialer/CallDetailActivity;->mHasRemoveFromCallLogOption:Z
    invoke-static {v0, v4}, Lcom/android/dialer/CallDetailActivity;->access$1102(Lcom/android/dialer/CallDetailActivity;Z)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-virtual {v4}, Lcom/android/dialer/CallDetailActivity;->invalidateOptionsMenu()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    const v21, 0x7f0e0065

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ListView;

    new-instance v4, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/dialer/CallDetailActivity;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/android/dialer/CallDetailActivity;->mCallTypeHelper:Lcom/android/dialer/calllog/CallTypeHelper;
    invoke-static/range {v23 .. v23}, Lcom/android/dialer/CallDetailActivity;->access$1200(Lcom/android/dialer/CallDetailActivity;)Lcom/android/dialer/calllog/CallTypeHelper;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, p1

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/android/dialer/calllog/CallTypeHelper;[Lcom/android/dialer/PhoneCallDetails;)V

    invoke-virtual {v15, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    if-nez v5, :cond_7

    const/4 v8, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mContactInfoHelper:Lcom/android/dialer/calllog/ContactInfoHelper;
    invoke-static {v4}, Lcom/android/dialer/CallDetailActivity;->access$1300(Lcom/android/dialer/CallDetailActivity;)Lcom/android/dialer/calllog/ContactInfoHelper;

    move-result-object v4

    iget v0, v14, Lcom/android/dialer/PhoneCallDetails;->sourceType:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/dialer/calllog/ContactInfoHelper;->isBusiness(I)Z

    move-result v16

    if-eqz v18, :cond_8

    const/4 v9, 0x3

    :goto_6
    iget-object v4, v14, Lcom/android/dialer/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberDisplayHelper;
    invoke-static {v4}, Lcom/android/dialer/CallDetailActivity;->access$300(Lcom/android/dialer/CallDetailActivity;)Lcom/android/dialer/calllog/PhoneNumberDisplayHelper;

    move-result-object v4

    iget-object v0, v14, Lcom/android/dialer/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    iget v0, v14, Lcom/android/dialer/PhoneCallDetails;->numberPresentation:I

    move/from16 v22, v0

    iget-object v0, v14, Lcom/android/dialer/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/dialer/calllog/PhoneNumberDisplayHelper;->getDisplayNumber(Ljava/lang/CharSequence;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # invokes: Lcom/android/dialer/CallDetailActivity;->hasVoicemail()Z
    invoke-static {v4}, Lcom/android/dialer/CallDetailActivity;->access$1000(Lcom/android/dialer/CallDetailActivity;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v14, Lcom/android/dialer/PhoneCallDetails;->transcription:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mVoicemailTranscription:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/dialer/CallDetailActivity;->access$1400(Lcom/android/dialer/CallDetailActivity;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v0, v14, Lcom/android/dialer/PhoneCallDetails;->transcription:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mVoicemailTranscription:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/dialer/CallDetailActivity;->access$1400(Lcom/android/dialer/CallDetailActivity;)Landroid/widget/TextView;

    move-result-object v4

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # invokes: Lcom/android/dialer/CallDetailActivity;->loadContactPhotos(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static/range {v4 .. v9}, Lcom/android/dialer/CallDetailActivity;->access$1500(Lcom/android/dialer/CallDetailActivity;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    const v21, 0x7f0e005f

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mCallerName:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/dialer/CallDetailActivity;->access$500(Lcom/android/dialer/CallDetailActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mCallerNumber:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/dialer/CallDetailActivity;->access$600(Lcom/android/dialer/CallDetailActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mCallerNumber:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/dialer/CallDetailActivity;->access$600(Lcom/android/dialer/CallDetailActivity;)Landroid/widget/TextView;

    move-result-object v4

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mCallerNumber:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/dialer/CallDetailActivity;->access$600(Lcom/android/dialer/CallDetailActivity;)Landroid/widget/TextView;

    move-result-object v4

    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mAccountLabel:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/dialer/CallDetailActivity;->access$700(Lcom/android/dialer/CallDetailActivity;)Landroid/widget/TextView;

    move-result-object v4

    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_3

    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_7
    invoke-static {v5}, Lcom/android/dialer/calllog/ContactInfoHelper;->getLookupKeyFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_5

    :cond_8
    if-eqz v16, :cond_9

    const/4 v9, 0x2

    goto/16 :goto_6

    :cond_9
    const/4 v9, 0x1

    goto/16 :goto_6

    :cond_a
    iget-object v4, v14, Lcom/android/dialer/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_7
.end method
