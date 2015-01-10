.class Lcom/android/server/net/IpConfigStore$1;
.super Ljava/lang/Object;
.source "IpConfigStore.java"

# interfaces
.implements Lcom/android/server/net/DelayedDiskWrite$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/net/IpConfigStore;->writeIpAndProxyConfigurations(Ljava/lang/String;Landroid/util/SparseArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/IpConfigStore;

.field final synthetic val$networks:Landroid/util/SparseArray;


# direct methods
.method constructor <init>(Lcom/android/server/net/IpConfigStore;Landroid/util/SparseArray;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/net/IpConfigStore$1;->this$0:Lcom/android/server/net/IpConfigStore;

    iput-object p2, p0, Lcom/android/server/net/IpConfigStore$1;->val$networks:Landroid/util/SparseArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWriteCalled(Ljava/io/DataOutputStream;)V
    .locals 4
    .param p1    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/net/IpConfigStore$1;->val$networks:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/server/net/IpConfigStore$1;->this$0:Lcom/android/server/net/IpConfigStore;

    iget-object v1, p0, Lcom/android/server/net/IpConfigStore$1;->val$networks:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v1, p0, Lcom/android/server/net/IpConfigStore$1;->val$networks:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/IpConfiguration;

    # invokes: Lcom/android/server/net/IpConfigStore;->writeConfig(Ljava/io/DataOutputStream;ILandroid/net/IpConfiguration;)Z
    invoke-static {v2, p1, v3, v1}, Lcom/android/server/net/IpConfigStore;->access$000(Lcom/android/server/net/IpConfigStore;Ljava/io/DataOutputStream;ILandroid/net/IpConfiguration;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
