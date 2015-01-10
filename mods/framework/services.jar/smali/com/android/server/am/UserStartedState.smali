.class public final Lcom/android/server/am/UserStartedState;
.super Ljava/lang/Object;
.source "UserStartedState.java"


# static fields
.field public static final STATE_BOOTING:I = 0x0

.field public static final STATE_RUNNING:I = 0x1

.field public static final STATE_SHUTDOWN:I = 0x3

.field public static final STATE_STOPPING:I = 0x2


# instance fields
.field public initializing:Z

.field public final mHandle:Landroid/os/UserHandle;

.field public mState:I

.field public final mStopCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/IStopUserCallback;",
            ">;"
        }
    .end annotation
.end field

.field public switching:Z


# direct methods
.method public constructor <init>(Landroid/os/UserHandle;Z)V
    .locals 1
    .param p1    # Landroid/os/UserHandle;
    .param p2    # Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UserStartedState;->mStopCallbacks:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/UserStartedState;->mState:I

    iput-object p1, p0, Lcom/android/server/am/UserStartedState;->mHandle:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/io/PrintWriter;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/UserStartedState;->mState:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lcom/android/server/am/UserStartedState;->mState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    :goto_0
    iget-boolean v0, p0, Lcom/android/server/am/UserStartedState;->switching:Z

    if-eqz v0, :cond_0

    const-string v0, " SWITCHING"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/UserStartedState;->initializing:Z

    if-eqz v0, :cond_1

    const-string v0, " INITIALIZING"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void

    :pswitch_0
    const-string v0, "BOOTING"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "RUNNING"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "STOPPING"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string v0, "SHUTDOWN"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
