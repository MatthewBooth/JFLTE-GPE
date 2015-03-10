.class final Lcom/android/services/telephony/GsmConferenceController;
.super Ljava/lang/Object;
.source "GsmConferenceController.java"


# instance fields
.field private final mConnectionListener:Landroid/telecom/Connection$Listener;

.field private final mConnectionService:Lcom/android/services/telephony/TelephonyConnectionService;

.field private mGsmConference:Landroid/telecom/Conference;

.field private final mGsmConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/services/telephony/GsmConnection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/services/telephony/TelephonyConnectionService;)V
    .locals 1
    .param p1    # Lcom/android/services/telephony/TelephonyConnectionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/services/telephony/GsmConferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/GsmConferenceController$1;-><init>(Lcom/android/services/telephony/GsmConferenceController;)V

    iput-object v0, p0, Lcom/android/services/telephony/GsmConferenceController;->mConnectionListener:Landroid/telecom/Connection$Listener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/services/telephony/GsmConferenceController;->mGsmConnections:Ljava/util/List;

    iput-object p1, p0, Lcom/android/services/telephony/GsmConferenceController;->mConnectionService:Lcom/android/services/telephony/TelephonyConnectionService;

    return-void
.end method

.method static synthetic access$000(Lcom/android/services/telephony/GsmConferenceController;)V
    .locals 0
    .param p0    # Lcom/android/services/telephony/GsmConferenceController;

    invoke-direct {p0}, Lcom/android/services/telephony/GsmConferenceController;->recalculate()V

    return-void
.end method

.method private isFullConference(Landroid/telecom/Conference;)Z
    .locals 2
    .param p1    # Landroid/telecom/Conference;

    invoke-virtual {p1}, Landroid/telecom/Conference;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private participatesInFullConference(Landroid/telecom/Connection;)Z
    .locals 1
    .param p1    # Landroid/telecom/Connection;

    invoke-virtual {p1}, Landroid/telecom/Connection;->getConference()Landroid/telecom/Conference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/telecom/Connection;->getConference()Landroid/telecom/Conference;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/services/telephony/GsmConferenceController;->isFullConference(Landroid/telecom/Conference;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recalculate()V
    .locals 0

    invoke-direct {p0}, Lcom/android/services/telephony/GsmConferenceController;->recalculateConferenceable()V

    invoke-direct {p0}, Lcom/android/services/telephony/GsmConferenceController;->recalculateConference()V

    return-void
.end method

.method private recalculateConference()V
    .locals 15

    const/4 v14, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x2

    const/4 v11, 0x0

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v8, p0, Lcom/android/services/telephony/GsmConferenceController;->mGsmConnections:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/services/telephony/GsmConnection;

    invoke-virtual {v3}, Lcom/android/services/telephony/GsmConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    sget-object v8, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v7, v8, :cond_1

    sget-object v8, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v8, :cond_0

    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v8, "Recalculate conference calls %s %s."

    new-array v9, v12, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/android/services/telephony/GsmConferenceController;->mGsmConference:Landroid/telecom/Conference;

    aput-object v10, v9, v11

    aput-object v2, v9, v13

    invoke-static {p0, v8, v9}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v8

    if-ge v8, v12, :cond_4

    const-string v8, "less than two conference calls!"

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {p0, v8, v9}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v8, p0, Lcom/android/services/telephony/GsmConferenceController;->mGsmConference:Landroid/telecom/Conference;

    if-eqz v8, :cond_3

    const-string v8, "with a conference to destroy!"

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {p0, v8, v9}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v8, p0, Lcom/android/services/telephony/GsmConferenceController;->mGsmConference:Landroid/telecom/Conference;

    invoke-virtual {v8}, Landroid/telecom/Conference;->destroy()V

    iput-object v14, p0, Lcom/android/services/telephony/GsmConferenceController;->mGsmConference:Landroid/telecom/Conference;

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-object v8, p0, Lcom/android/services/telephony/GsmConferenceController;->mGsmConference:Landroid/telecom/Conference;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/services/telephony/GsmConferenceController;->mGsmConference:Landroid/telecom/Conference;

    invoke-virtual {v8}, Landroid/telecom/Conference;->getConnections()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Connection;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/android/services/telephony/GsmConferenceController;->mGsmConference:Landroid/telecom/Conference;

    invoke-virtual {v8, v3}, Landroid/telecom/Conference;->removeConnection(Landroid/telecom/Connection;)V

    goto :goto_2

    :cond_6
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Connection;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, p0, Lcom/android/services/telephony/GsmConferenceController;->mGsmConference:Landroid/telecom/Conference;

    invoke-virtual {v8, v3}, Landroid/telecom/Conference;->addConnection(Landroid/telecom/Connection;)Z

    goto :goto_3

    :cond_8
    new-instance v8, Lcom/android/services/telephony/GsmConference;

    invoke-direct {v8, v14}, Lcom/android/services/telephony/GsmConference;-><init>(Landroid/telecom/PhoneAccountHandle;)V

    iput-object v8, p0, Lcom/android/services/telephony/GsmConferenceController;->mGsmConference:Landroid/telecom/Conference;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Connection;

    const-string v8, "Adding a connection to a conference call: %s %s"

    new-array v9, v12, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/android/services/telephony/GsmConferenceController;->mGsmConference:Landroid/telecom/Conference;

    aput-object v10, v9, v11

    aput-object v3, v9, v13

    invoke-static {p0, v8, v9}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v8, p0, Lcom/android/services/telephony/GsmConferenceController;->mGsmConference:Landroid/telecom/Conference;

    invoke-virtual {v8, v3}, Landroid/telecom/Conference;->addConnection(Landroid/telecom/Connection;)Z

    goto :goto_4

    :cond_9
    iget-object v8, p0, Lcom/android/services/telephony/GsmConferenceController;->mConnectionService:Lcom/android/services/telephony/TelephonyConnectionService;

    iget-object v9, p0, Lcom/android/services/telephony/GsmConferenceController;->mGsmConference:Landroid/telecom/Conference;

    invoke-virtual {v8, v9}, Lcom/android/services/telephony/TelephonyConnectionService;->addConference(Landroid/telecom/Conference;)V

    :cond_a
    iget-object v8, p0, Lcom/android/services/telephony/GsmConferenceController;->mGsmConference:Landroid/telecom/Conference;

    invoke-virtual {v8}, Landroid/telecom/Conference;->getConnections()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection;

    invoke-virtual {v1}, Landroid/telecom/Connection;->getState()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object v8, p0, Lcom/android/services/telephony/GsmConferenceController;->mGsmConference:Landroid/telecom/Conference;

    invoke-virtual {v8}, Landroid/telecom/Conference;->setActive()V

    goto/16 :goto_1

    :pswitch_1
    iget-object v8, p0, Lcom/android/services/telephony/GsmConferenceController;->mGsmConference:Landroid/telecom/Conference;

    invoke-virtual {v8}, Landroid/telecom/Conference;->setOnHold()V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private recalculateConferenceable()V
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v6, "recalculateConferenceable : %d"

    new-array v7, v10, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/services/telephony/GsmConferenceController;->mGsmConnections:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {p0, v6, v7}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/services/telephony/GsmConferenceController;->mGsmConnections:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/services/telephony/GsmConferenceController;->mGsmConnections:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v6, p0, Lcom/android/services/telephony/GsmConferenceController;->mGsmConnections:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/services/telephony/GsmConnection;

    const-string v6, "recalc - %s %s"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/android/services/telephony/GsmConnection;->getState()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    aput-object v3, v7, v10

    invoke-static {p0, v6, v7}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v3}, Lcom/android/services/telephony/GsmConferenceController;->participatesInFullConference(Landroid/telecom/Connection;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v3}, Lcom/android/services/telephony/GsmConnection;->getState()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/services/telephony/GsmConnection;->setConferenceableConnections(Ljava/util/List;)V

    goto :goto_0

    :pswitch_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_1
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v6, "active: %d, holding: %d"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {p0, v6, v7}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Connection;

    invoke-virtual {v3, v1}, Landroid/telecom/Connection;->setConferenceableConnections(Ljava/util/List;)V

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Connection;

    invoke-virtual {v3, v0}, Landroid/telecom/Connection;->setConferenceableConnections(Ljava/util/List;)V

    goto :goto_2

    :cond_3
    iget-object v6, p0, Lcom/android/services/telephony/GsmConferenceController;->mGsmConference:Landroid/telecom/Conference;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/services/telephony/GsmConferenceController;->mGsmConference:Landroid/telecom/Conference;

    invoke-direct {p0, v6}, Lcom/android/services/telephony/GsmConferenceController;->isFullConference(Landroid/telecom/Conference;)Z

    move-result v6

    if-nez v6, :cond_6

    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/services/telephony/GsmConferenceController;->mGsmConnections:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v6, p0, Lcom/android/services/telephony/GsmConferenceController;->mGsmConnections:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/services/telephony/GsmConnection;

    invoke-virtual {v2}, Lcom/android/services/telephony/GsmConnection;->getConference()Landroid/telecom/Conference;

    move-result-object v6

    if-nez v6, :cond_4

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    iget-object v6, p0, Lcom/android/services/telephony/GsmConferenceController;->mGsmConference:Landroid/telecom/Conference;

    invoke-virtual {v6, v5}, Landroid/telecom/Conference;->setConferenceableConnections(Ljava/util/List;)V

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method add(Lcom/android/services/telephony/GsmConnection;)V
    .locals 1
    .param p1    # Lcom/android/services/telephony/GsmConnection;

    iget-object v0, p0, Lcom/android/services/telephony/GsmConferenceController;->mGsmConnections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/services/telephony/GsmConferenceController;->mConnectionListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {p1, v0}, Lcom/android/services/telephony/GsmConnection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    invoke-direct {p0}, Lcom/android/services/telephony/GsmConferenceController;->recalculate()V

    return-void
.end method

.method remove(Lcom/android/services/telephony/GsmConnection;)V
    .locals 1
    .param p1    # Lcom/android/services/telephony/GsmConnection;

    iget-object v0, p0, Lcom/android/services/telephony/GsmConferenceController;->mConnectionListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {p1, v0}, Lcom/android/services/telephony/GsmConnection;->removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    iget-object v0, p0, Lcom/android/services/telephony/GsmConferenceController;->mGsmConnections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/services/telephony/GsmConferenceController;->recalculate()V

    return-void
.end method
