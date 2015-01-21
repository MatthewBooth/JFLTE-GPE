.class public Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;
.super Ljava/lang/Object;
.source "DialerDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/database/DialerDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactNumber"
.end annotation


# instance fields
.field public final dataId:J

.field public final displayName:Ljava/lang/String;

.field public final id:J

.field public final lookupKey:Ljava/lang/String;

.field public final phoneNumber:Ljava/lang/String;

.field public final photoId:J


# direct methods
.method public constructor <init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p1    # J
    .param p3    # J
    .param p5    # Ljava/lang/String;
    .param p6    # Ljava/lang/String;
    .param p7    # Ljava/lang/String;
    .param p8    # J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p3, p0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->dataId:J

    iput-wide p1, p0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->id:J

    iput-object p5, p0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->displayName:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->phoneNumber:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->lookupKey:Ljava/lang/String;

    iput-wide p8, p0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->photoId:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v3, p1, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;

    if-eqz v3, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;

    iget-wide v4, p0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, v0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v4, p0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->dataId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, v0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->dataId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->displayName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->displayName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->phoneNumber:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->phoneNumber:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->lookupKey:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->lookupKey:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v4, p0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->photoId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, v0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->photoId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->dataId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->displayName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->phoneNumber:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->lookupKey:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->photoId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
