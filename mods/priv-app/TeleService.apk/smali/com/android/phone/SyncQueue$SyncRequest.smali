.class public abstract Lcom/android/phone/SyncQueue$SyncRequest;
.super Ljava/lang/Object;
.source "SyncQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SyncQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SyncRequest"
.end annotation


# instance fields
.field private final mSyncQueue:Lcom/android/phone/SyncQueue;


# direct methods
.method public constructor <init>(Lcom/android/phone/SyncQueue;)V
    .locals 0
    .param p1    # Lcom/android/phone/SyncQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/phone/SyncQueue$SyncRequest;->mSyncQueue:Lcom/android/phone/SyncQueue;

    return-void
.end method


# virtual methods
.method protected final end()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/SyncQueue$SyncRequest;->mSyncQueue:Lcom/android/phone/SyncQueue;

    invoke-virtual {v0, p0}, Lcom/android/phone/SyncQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/SyncQueue$SyncRequest;->mSyncQueue:Lcom/android/phone/SyncQueue;

    invoke-virtual {v0, p0}, Lcom/android/phone/SyncQueue;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/phone/SyncQueue$SyncRequest;->mSyncQueue:Lcom/android/phone/SyncQueue;

    invoke-virtual {v0}, Lcom/android/phone/SyncQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/SyncQueue$SyncRequest;->mSyncQueue:Lcom/android/phone/SyncQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/SyncQueue;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/SyncQueue$SyncRequest;

    invoke-virtual {v0}, Lcom/android/phone/SyncQueue$SyncRequest;->start()V

    goto :goto_0
.end method

.method public loop()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/SyncQueue$SyncRequest;->mSyncQueue:Lcom/android/phone/SyncQueue;

    invoke-virtual {v0, p0}, Lcom/android/phone/SyncQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/SyncQueue$SyncRequest;->mSyncQueue:Lcom/android/phone/SyncQueue;

    invoke-virtual {v0, p0}, Lcom/android/phone/SyncQueue;->add(Lcom/android/phone/SyncQueue$SyncRequest;)Z

    :cond_0
    return-void
.end method

.method protected abstract start()V
.end method
