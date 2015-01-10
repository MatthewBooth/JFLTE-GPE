.class Lcom/android/server/tv/PersistentDataStore$1;
.super Ljava/lang/Object;
.source "PersistentDataStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/PersistentDataStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/tv/PersistentDataStore;


# direct methods
.method constructor <init>(Lcom/android/server/tv/PersistentDataStore;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/tv/PersistentDataStore$1;->this$0:Lcom/android/server/tv/PersistentDataStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore$1;->this$0:Lcom/android/server/tv/PersistentDataStore;

    # invokes: Lcom/android/server/tv/PersistentDataStore;->save()V
    invoke-static {v0}, Lcom/android/server/tv/PersistentDataStore;->access$000(Lcom/android/server/tv/PersistentDataStore;)V

    return-void
.end method
