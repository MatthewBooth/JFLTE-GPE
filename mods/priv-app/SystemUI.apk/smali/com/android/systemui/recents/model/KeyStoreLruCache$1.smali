.class Lcom/android/systemui/recents/model/KeyStoreLruCache$1;
.super Landroid/util/LruCache;
.source "KeyStoreLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/model/KeyStoreLruCache;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/Integer;",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/model/KeyStoreLruCache;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/model/KeyStoreLruCache;I)V
    .locals 0
    .param p2    # I

    iput-object p1, p0, Lcom/android/systemui/recents/model/KeyStoreLruCache$1;->this$0:Lcom/android/systemui/recents/model/KeyStoreLruCache;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected entryRemoved(ZLjava/lang/Integer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Z
    .param p2    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/Integer;",
            "TV;TV;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/recents/model/KeyStoreLruCache$1;->this$0:Lcom/android/systemui/recents/model/KeyStoreLruCache;

    iget-object v0, v0, Lcom/android/systemui/recents/model/KeyStoreLruCache;->mTaskKeys:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Z
    .param p2    # Ljava/lang/Object;
    .param p3    # Ljava/lang/Object;
    .param p4    # Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/recents/model/KeyStoreLruCache$1;->entryRemoved(ZLjava/lang/Integer;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
