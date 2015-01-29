.class final Lcom/android/server/NetworkManagementSocketTagger$1;
.super Ljava/lang/ThreadLocal;
.source "NetworkManagementSocketTagger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkManagementSocketTagger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lcom/android/server/NetworkManagementSocketTagger$SocketTags;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Lcom/android/server/NetworkManagementSocketTagger$SocketTags;
    .locals 1

    new-instance v0, Lcom/android/server/NetworkManagementSocketTagger$SocketTags;

    invoke-direct {v0}, Lcom/android/server/NetworkManagementSocketTagger$SocketTags;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/NetworkManagementSocketTagger$1;->initialValue()Lcom/android/server/NetworkManagementSocketTagger$SocketTags;

    move-result-object v0

    return-object v0
.end method
