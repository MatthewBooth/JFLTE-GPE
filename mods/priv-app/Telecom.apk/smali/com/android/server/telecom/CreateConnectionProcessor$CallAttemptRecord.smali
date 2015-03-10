.class final Lcom/android/server/telecom/CreateConnectionProcessor$CallAttemptRecord;
.super Ljava/lang/Object;
.source "CreateConnectionProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/CreateConnectionProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CallAttemptRecord"
.end annotation


# instance fields
.field public final connectionManagerPhoneAccount:Landroid/telecom/PhoneAccountHandle;

.field public final targetPhoneAccount:Landroid/telecom/PhoneAccountHandle;


# direct methods
.method public constructor <init>(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/PhoneAccountHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/telecom/CreateConnectionProcessor$CallAttemptRecord;->connectionManagerPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    iput-object p2, p0, Lcom/android/server/telecom/CreateConnectionProcessor$CallAttemptRecord;->targetPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/android/server/telecom/CreateConnectionProcessor$CallAttemptRecord;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/android/server/telecom/CreateConnectionProcessor$CallAttemptRecord;

    iget-object v1, p0, Lcom/android/server/telecom/CreateConnectionProcessor$CallAttemptRecord;->connectionManagerPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    iget-object v2, p1, Lcom/android/server/telecom/CreateConnectionProcessor$CallAttemptRecord;->connectionManagerPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/telecom/CreateConnectionProcessor$CallAttemptRecord;->targetPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    iget-object v2, p1, Lcom/android/server/telecom/CreateConnectionProcessor$CallAttemptRecord;->targetPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CallAttemptRecord("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/telecom/CreateConnectionProcessor$CallAttemptRecord;->connectionManagerPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/CreateConnectionProcessor$CallAttemptRecord;->targetPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
