.class public Lcom/android/phone/common/CallLogAsync;
.super Ljava/lang/Object;
.source "CallLogAsync.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/common/CallLogAsync$GetLastOutgoingCallTask;,
        Lcom/android/phone/common/CallLogAsync$OnLastOutgoingCallComplete;,
        Lcom/android/phone/common/CallLogAsync$GetLastOutgoingCallArgs;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/common/CallLogAsync;)V
    .locals 0
    .param p0    # Lcom/android/phone/common/CallLogAsync;

    invoke-direct {p0}, Lcom/android/phone/common/CallLogAsync;->assertUiThread()V

    return-void
.end method

.method private assertUiThread()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not on the UI thread!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public getLastOutgoingCall(Lcom/android/phone/common/CallLogAsync$GetLastOutgoingCallArgs;)Landroid/os/AsyncTask;
    .locals 3
    .param p1    # Lcom/android/phone/common/CallLogAsync$GetLastOutgoingCallArgs;

    invoke-direct {p0}, Lcom/android/phone/common/CallLogAsync;->assertUiThread()V

    new-instance v0, Lcom/android/phone/common/CallLogAsync$GetLastOutgoingCallTask;

    iget-object v1, p1, Lcom/android/phone/common/CallLogAsync$GetLastOutgoingCallArgs;->callback:Lcom/android/phone/common/CallLogAsync$OnLastOutgoingCallComplete;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/common/CallLogAsync$GetLastOutgoingCallTask;-><init>(Lcom/android/phone/common/CallLogAsync;Lcom/android/phone/common/CallLogAsync$OnLastOutgoingCallComplete;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/phone/common/CallLogAsync$GetLastOutgoingCallArgs;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/phone/common/CallLogAsync$GetLastOutgoingCallTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method
