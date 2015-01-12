.class Lcom/android/incallui/InCallPresenter$2;
.super Landroid/telecom/Call$Listener;
.source "InCallPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallPresenter;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/InCallPresenter$2;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-direct {p0}, Landroid/telecom/Call$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onConferenceableCallsChanged(Landroid/telecom/Call;Ljava/util/List;)V
    .locals 4
    .param p1    # Landroid/telecom/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Call;",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;)V"
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConferenceableCallsChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter$2;->this$0:Lcom/android/incallui/InCallPresenter;

    # getter for: Lcom/android/incallui/InCallPresenter;->mDetailsListeners:Ljava/util/Set;
    invoke-static {v2}, Lcom/android/incallui/InCallPresenter;->access$100(Lcom/android/incallui/InCallPresenter;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallPresenter$InCallDetailsListener;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/incallui/CallList;->getCallByTelecommCall(Landroid/telecom/Call;)Lcom/android/incallui/Call;

    move-result-object v2

    invoke-virtual {p1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/incallui/InCallPresenter$InCallDetailsListener;->onDetailsChanged(Lcom/android/incallui/Call;Landroid/telecom/Call$Details;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDetailsChanged(Landroid/telecom/Call;Landroid/telecom/Call$Details;)V
    .locals 3
    .param p1    # Landroid/telecom/Call;
    .param p2    # Landroid/telecom/Call$Details;

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter$2;->this$0:Lcom/android/incallui/InCallPresenter;

    # getter for: Lcom/android/incallui/InCallPresenter;->mDetailsListeners:Ljava/util/Set;
    invoke-static {v2}, Lcom/android/incallui/InCallPresenter;->access$100(Lcom/android/incallui/InCallPresenter;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallPresenter$InCallDetailsListener;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/incallui/CallList;->getCallByTelecommCall(Landroid/telecom/Call;)Lcom/android/incallui/Call;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Lcom/android/incallui/InCallPresenter$InCallDetailsListener;->onDetailsChanged(Lcom/android/incallui/Call;Landroid/telecom/Call$Details;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPostDialWait(Landroid/telecom/Call;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/telecom/Call;
    .param p2    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$2;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/incallui/CallList;->getCallByTelecommCall(Landroid/telecom/Call;)Lcom/android/incallui/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/incallui/InCallPresenter;->onPostDialCharWait(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
