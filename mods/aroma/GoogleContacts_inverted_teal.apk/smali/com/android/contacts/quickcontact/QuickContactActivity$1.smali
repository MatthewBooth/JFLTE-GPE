.class Lcom/android/contacts/quickcontact/QuickContactActivity$1;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1    # Landroid/view/View;

    const/4 v13, 0x0

    const/4 v12, 0x2

    const/4 v9, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    instance-of v10, v3, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTag;

    if-nez v10, :cond_1

    :cond_0
    const-string v9, "QuickContact"

    const-string v10, "EntryTag was not used correctly"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    move-object v2, v3

    check-cast v2, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTag;

    invoke-virtual {v2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTag;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTag;->getId()I

    move-result v0

    const/4 v10, -0x2

    if-ne v0, v10, :cond_2

    iget-object v9, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # invokes: Lcom/android/contacts/quickcontact/QuickContactActivity;->editContact()V
    invoke-static {v9}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$000(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    goto :goto_0

    :cond_2
    const-string v8, "call"

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    const-string v11, "smsto"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    :cond_3
    invoke-virtual {v5}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-virtual {v5}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v10

    const-string v11, "vnd.android-dir/mms-sms"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    :cond_4
    const-string v8, "short_text"

    :cond_5
    if-lez v0, :cond_9

    sget-object v10, Landroid/provider/ContactsContract$DataUsageFeedback;->FEEDBACK_URI:Landroid/net/Uri;

    invoke-virtual {v10}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v10

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    const-string v11, "type"

    invoke-virtual {v10, v11, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    iget-object v10, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-virtual {v10}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v10, v1, v11, v13, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_8

    move v7, v9

    :goto_1
    if-nez v7, :cond_6

    const-string v10, "QuickContact"

    const-string v11, "DataUsageFeedback increment failed"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    const-string v10, "android.intent.action.CALL"

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-static {}, Lcom/android/contacts/common/interactions/TouchPointManager;->getInstance()Lcom/android/contacts/common/interactions/TouchPointManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/contacts/common/interactions/TouchPointManager;->hasValidPoint()Z

    move-result v10

    if-eqz v10, :cond_7

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v10, "touchPoint"

    invoke-static {}, Lcom/android/contacts/common/interactions/TouchPointManager;->getInstance()Lcom/android/contacts/common/interactions/TouchPointManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/contacts/common/interactions/TouchPointManager;->getPoint()Landroid/graphics/Point;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v10, "android.telecom.extra.OUTGOING_CALL_EXTRAS"

    invoke-virtual {v5, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_7
    const/high16 v10, 0x10000000

    invoke-virtual {v5, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-virtual {v10}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10, v12, v12}, Landroid/view/Window;->setFlags(II)V

    iget-object v10, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-virtual {v10}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getWindow()Landroid/view/Window;

    move-result-object v10

    iget-object v11, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mWindowScrim:Landroid/graphics/drawable/ColorDrawable;
    invoke-static {v11}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$100(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/drawable/ColorDrawable;->getAlpha()I

    move-result v11

    div-int/lit16 v11, v11, 0xc8

    int-to-float v11, v11

    invoke-virtual {v10, v11}, Landroid/view/Window;->setDimAmount(F)V

    iget-object v10, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # setter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasIntentLaunched:Z
    invoke-static {v10, v9}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$202(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)Z

    iget-object v9, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-virtual {v9, v5}, Lcom/android/contacts/quickcontact/QuickContactActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_8
    const/4 v7, 0x0

    goto :goto_1

    :cond_9
    const-string v10, "QuickContact"

    const-string v11, "Invalid Data ID"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
