.class public Lcom/android/server/updates/TZInfoInstallReceiver;
.super Lcom/android/server/updates/ConfigUpdateInstallReceiver;
.source "TZInfoInstallReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "/data/misc/zoneinfo/"

    const-string v1, "tzdata"

    const-string v2, "metadata/"

    const-string v3, "version"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected install([BI)V
    .locals 1
    .param p1    # [B
    .param p2    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    invoke-super {p0, v0, p2}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->install([BI)V

    return-void
.end method
