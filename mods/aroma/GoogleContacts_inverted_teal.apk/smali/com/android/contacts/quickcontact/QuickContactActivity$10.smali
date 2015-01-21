.class Lcom/android/contacts/quickcontact/QuickContactActivity$10;
.super Landroid/os/AsyncTask;
.source "QuickContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity;->bindContactData(Lcom/android/contacts/common/model/Contact;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

.field final synthetic val$data:Lcom/android/contacts/common/model/Contact;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Lcom/android/contacts/common/model/Contact;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$10;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    iput-object p2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$10;->val$data:Lcom/android/contacts/common/model/Contact;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;
    .locals 2
    .param p1    # [Ljava/lang/Void;

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$10;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$10;->val$data:Lcom/android/contacts/common/model/Contact;

    # invokes: Lcom/android/contacts/quickcontact/QuickContactActivity;->generateDataModelFromContact(Lcom/android/contacts/common/model/Contact;)Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;
    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$1600(Lcom/android/contacts/quickcontact/QuickContactActivity;Lcom/android/contacts/common/model/Contact;)Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity$10;->doInBackground([Ljava/lang/Void;)Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;)V
    .locals 2
    .param p1    # Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$10;->val$data:Lcom/android/contacts/common/model/Contact;

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$10;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;
    invoke-static {v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$700(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/common/model/Contact;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$10;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$10;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # invokes: Lcom/android/contacts/quickcontact/QuickContactActivity;->bindDataToCards(Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;)V
    invoke-static {v0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$1700(Lcom/android/contacts/quickcontact/QuickContactActivity;Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;)V

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$10;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # invokes: Lcom/android/contacts/quickcontact/QuickContactActivity;->showActivity()V
    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$1800(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;

    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity$10;->onPostExecute(Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;)V

    return-void
.end method
