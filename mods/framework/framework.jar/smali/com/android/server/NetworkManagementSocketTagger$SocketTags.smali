.class public Lcom/android/server/NetworkManagementSocketTagger$SocketTags;
.super Ljava/lang/Object;
.source "NetworkManagementSocketTagger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkManagementSocketTagger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SocketTags"
.end annotation


# instance fields
.field public statsTag:I

.field public statsUid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/server/NetworkManagementSocketTagger$SocketTags;->statsTag:I

    iput v0, p0, Lcom/android/server/NetworkManagementSocketTagger$SocketTags;->statsUid:I

    return-void
.end method
