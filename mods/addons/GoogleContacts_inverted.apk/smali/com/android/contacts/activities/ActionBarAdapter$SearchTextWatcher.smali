.class Lcom/android/contacts/activities/ActionBarAdapter$SearchTextWatcher;
.super Ljava/lang/Object;
.source "ActionBarAdapter.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/ActionBarAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ActionBarAdapter;


# direct methods
.method private constructor <init>(Lcom/android/contacts/activities/ActionBarAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter$SearchTextWatcher;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/activities/ActionBarAdapter;Lcom/android/contacts/activities/ActionBarAdapter$1;)V
    .locals 0
    .param p1    # Lcom/android/contacts/activities/ActionBarAdapter;
    .param p2    # Lcom/android/contacts/activities/ActionBarAdapter$1;

    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ActionBarAdapter$SearchTextWatcher;-><init>(Lcom/android/contacts/activities/ActionBarAdapter;)V

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
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter$SearchTextWatcher;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    # getter for: Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->access$300(Lcom/android/contacts/activities/ActionBarAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter$SearchTextWatcher;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->access$302(Lcom/android/contacts/activities/ActionBarAdapter;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter$SearchTextWatcher;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    # getter for: Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z
    invoke-static {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->access$400(Lcom/android/contacts/activities/ActionBarAdapter;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter$SearchTextWatcher;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchMode(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter$SearchTextWatcher;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    # getter for: Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;
    invoke-static {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->access$200(Lcom/android/contacts/activities/ActionBarAdapter;)Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter$SearchTextWatcher;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    # getter for: Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;
    invoke-static {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->access$200(Lcom/android/contacts/activities/ActionBarAdapter;)Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter$Listener;->onAction(I)V

    goto :goto_0
.end method
