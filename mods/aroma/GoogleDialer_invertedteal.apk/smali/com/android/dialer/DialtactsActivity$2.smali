.class Lcom/android/dialer/DialtactsActivity$2;
.super Ljava/lang/Object;
.source "DialtactsActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/DialtactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/DialtactsActivity;


# direct methods
.method constructor <init>(Lcom/android/dialer/DialtactsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/DialtactsActivity$2;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1    # Landroid/text/Editable;

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/dialer/DialtactsActivity$2;->this$0:Lcom/android/dialer/DialtactsActivity;

    # getter for: Lcom/android/dialer/DialtactsActivity;->mSearchQuery:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/dialer/DialtactsActivity;->access$300(Lcom/android/dialer/DialtactsActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v3, Lcom/android/dialer/DialtactsActivity;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "DialtactsActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onTextChange for mSearchView called with new query: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "DialtactsActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Previous Query: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/dialer/DialtactsActivity$2;->this$0:Lcom/android/dialer/DialtactsActivity;

    # getter for: Lcom/android/dialer/DialtactsActivity;->mSearchQuery:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/dialer/DialtactsActivity;->access$300(Lcom/android/dialer/DialtactsActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v3, p0, Lcom/android/dialer/DialtactsActivity$2;->this$0:Lcom/android/dialer/DialtactsActivity;

    # setter for: Lcom/android/dialer/DialtactsActivity;->mSearchQuery:Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/android/dialer/DialtactsActivity;->access$302(Lcom/android/dialer/DialtactsActivity;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/dialer/DialtactsActivity$2;->this$0:Lcom/android/dialer/DialtactsActivity;

    # getter for: Lcom/android/dialer/DialtactsActivity;->mIsDialpadShown:Z
    invoke-static {v3}, Lcom/android/dialer/DialtactsActivity;->access$400(Lcom/android/dialer/DialtactsActivity;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/dialer/DialtactsActivity$2;->this$0:Lcom/android/dialer/DialtactsActivity;

    # getter for: Lcom/android/dialer/DialtactsActivity;->mInDialpadSearch:Z
    invoke-static {v3}, Lcom/android/dialer/DialtactsActivity;->access$500(Lcom/android/dialer/DialtactsActivity;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/android/dialer/DialtactsActivity$2;->this$0:Lcom/android/dialer/DialtactsActivity;

    # getter for: Lcom/android/dialer/DialtactsActivity;->mIsDialpadShown:Z
    invoke-static {v3}, Lcom/android/dialer/DialtactsActivity;->access$400(Lcom/android/dialer/DialtactsActivity;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/dialer/DialtactsActivity$2;->this$0:Lcom/android/dialer/DialtactsActivity;

    # getter for: Lcom/android/dialer/DialtactsActivity;->mInRegularSearch:Z
    invoke-static {v3}, Lcom/android/dialer/DialtactsActivity;->access$600(Lcom/android/dialer/DialtactsActivity;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_4
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_5

    iget-object v3, p0, Lcom/android/dialer/DialtactsActivity$2;->this$0:Lcom/android/dialer/DialtactsActivity;

    iget-object v4, p0, Lcom/android/dialer/DialtactsActivity$2;->this$0:Lcom/android/dialer/DialtactsActivity;

    # getter for: Lcom/android/dialer/DialtactsActivity;->mIsDialpadShown:Z
    invoke-static {v4}, Lcom/android/dialer/DialtactsActivity;->access$400(Lcom/android/dialer/DialtactsActivity;)Z

    move-result v4

    iget-object v5, p0, Lcom/android/dialer/DialtactsActivity$2;->this$0:Lcom/android/dialer/DialtactsActivity;

    # getter for: Lcom/android/dialer/DialtactsActivity;->mSearchQuery:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/dialer/DialtactsActivity;->access$300(Lcom/android/dialer/DialtactsActivity;)Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/dialer/DialtactsActivity;->enterSearchUi(ZLjava/lang/String;)V
    invoke-static {v3, v4, v5}, Lcom/android/dialer/DialtactsActivity;->access$700(Lcom/android/dialer/DialtactsActivity;ZLjava/lang/String;)V

    :cond_5
    iget-object v3, p0, Lcom/android/dialer/DialtactsActivity$2;->this$0:Lcom/android/dialer/DialtactsActivity;

    # getter for: Lcom/android/dialer/DialtactsActivity;->mSmartDialSearchFragment:Lcom/android/dialer/list/SmartDialSearchFragment;
    invoke-static {v3}, Lcom/android/dialer/DialtactsActivity;->access$800(Lcom/android/dialer/DialtactsActivity;)Lcom/android/dialer/list/SmartDialSearchFragment;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/dialer/DialtactsActivity$2;->this$0:Lcom/android/dialer/DialtactsActivity;

    # getter for: Lcom/android/dialer/DialtactsActivity;->mSmartDialSearchFragment:Lcom/android/dialer/list/SmartDialSearchFragment;
    invoke-static {v3}, Lcom/android/dialer/DialtactsActivity;->access$800(Lcom/android/dialer/DialtactsActivity;)Lcom/android/dialer/list/SmartDialSearchFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/dialer/list/SmartDialSearchFragment;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/dialer/DialtactsActivity$2;->this$0:Lcom/android/dialer/DialtactsActivity;

    # getter for: Lcom/android/dialer/DialtactsActivity;->mSmartDialSearchFragment:Lcom/android/dialer/list/SmartDialSearchFragment;
    invoke-static {v3}, Lcom/android/dialer/DialtactsActivity;->access$800(Lcom/android/dialer/DialtactsActivity;)Lcom/android/dialer/list/SmartDialSearchFragment;

    move-result-object v3

    iget-object v4, p0, Lcom/android/dialer/DialtactsActivity$2;->this$0:Lcom/android/dialer/DialtactsActivity;

    # getter for: Lcom/android/dialer/DialtactsActivity;->mSearchQuery:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/dialer/DialtactsActivity;->access$300(Lcom/android/dialer/DialtactsActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/dialer/list/SmartDialSearchFragment;->setQueryString(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_6
    move v1, v2

    goto :goto_1

    :cond_7
    iget-object v3, p0, Lcom/android/dialer/DialtactsActivity$2;->this$0:Lcom/android/dialer/DialtactsActivity;

    # getter for: Lcom/android/dialer/DialtactsActivity;->mRegularSearchFragment:Lcom/android/dialer/list/RegularSearchFragment;
    invoke-static {v3}, Lcom/android/dialer/DialtactsActivity;->access$900(Lcom/android/dialer/DialtactsActivity;)Lcom/android/dialer/list/RegularSearchFragment;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/dialer/DialtactsActivity$2;->this$0:Lcom/android/dialer/DialtactsActivity;

    # getter for: Lcom/android/dialer/DialtactsActivity;->mRegularSearchFragment:Lcom/android/dialer/list/RegularSearchFragment;
    invoke-static {v3}, Lcom/android/dialer/DialtactsActivity;->access$900(Lcom/android/dialer/DialtactsActivity;)Lcom/android/dialer/list/RegularSearchFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/dialer/list/RegularSearchFragment;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/dialer/DialtactsActivity$2;->this$0:Lcom/android/dialer/DialtactsActivity;

    # getter for: Lcom/android/dialer/DialtactsActivity;->mRegularSearchFragment:Lcom/android/dialer/list/RegularSearchFragment;
    invoke-static {v3}, Lcom/android/dialer/DialtactsActivity;->access$900(Lcom/android/dialer/DialtactsActivity;)Lcom/android/dialer/list/RegularSearchFragment;

    move-result-object v3

    iget-object v4, p0, Lcom/android/dialer/DialtactsActivity$2;->this$0:Lcom/android/dialer/DialtactsActivity;

    # getter for: Lcom/android/dialer/DialtactsActivity;->mSearchQuery:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/dialer/DialtactsActivity;->access$300(Lcom/android/dialer/DialtactsActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/dialer/list/RegularSearchFragment;->setQueryString(Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method
