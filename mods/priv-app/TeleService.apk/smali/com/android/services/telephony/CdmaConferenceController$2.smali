.class Lcom/android/services/telephony/CdmaConferenceController$2;
.super Ljava/lang/Object;
.source "CdmaConferenceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/services/telephony/CdmaConferenceController;->add(Lcom/android/services/telephony/CdmaConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/CdmaConferenceController;

.field final synthetic val$connection:Lcom/android/services/telephony/CdmaConnection;

.field final synthetic val$connectionsToReset:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/CdmaConferenceController;Lcom/android/services/telephony/CdmaConnection;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/CdmaConferenceController$2;->this$0:Lcom/android/services/telephony/CdmaConferenceController;

    iput-object p2, p0, Lcom/android/services/telephony/CdmaConferenceController$2;->val$connection:Lcom/android/services/telephony/CdmaConnection;

    iput-object p3, p0, Lcom/android/services/telephony/CdmaConferenceController$2;->val$connectionsToReset:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v2, p0, Lcom/android/services/telephony/CdmaConferenceController$2;->val$connection:Lcom/android/services/telephony/CdmaConnection;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/services/telephony/CdmaConnection;->forceAsDialing(Z)V

    iget-object v2, p0, Lcom/android/services/telephony/CdmaConferenceController$2;->this$0:Lcom/android/services/telephony/CdmaConferenceController;

    iget-object v3, p0, Lcom/android/services/telephony/CdmaConferenceController$2;->val$connection:Lcom/android/services/telephony/CdmaConnection;

    # invokes: Lcom/android/services/telephony/CdmaConferenceController;->addInternal(Lcom/android/services/telephony/CdmaConnection;)V
    invoke-static {v2, v3}, Lcom/android/services/telephony/CdmaConferenceController;->access$200(Lcom/android/services/telephony/CdmaConferenceController;Lcom/android/services/telephony/CdmaConnection;)V

    iget-object v2, p0, Lcom/android/services/telephony/CdmaConferenceController$2;->val$connectionsToReset:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/CdmaConnection;

    invoke-virtual {v0}, Lcom/android/services/telephony/CdmaConnection;->resetStateForConference()V

    goto :goto_0

    :cond_0
    return-void
.end method
