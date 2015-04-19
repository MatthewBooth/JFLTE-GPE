.class Lcom/android/contacts/group/GroupDetailFragment$1;
.super Ljava/lang/Object;
.source "GroupDetailFragment.java"

# interfaces
.implements Lcom/android/contacts/common/list/ContactTileView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/group/GroupDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/group/GroupDetailFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/group/GroupDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/group/GroupDetailFragment$1;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApproximateTileWidth()I
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment$1;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupDetailFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/contacts/group/GroupDetailFragment$1;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    # getter for: Lcom/android/contacts/group/GroupDetailFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;
    invoke-static {v1}, Lcom/android/contacts/group/GroupDetailFragment;->access$100(Lcom/android/contacts/group/GroupDetailFragment;)Lcom/android/contacts/common/list/ContactTileAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/common/list/ContactTileAdapter;->getColumnCount()I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method

.method public onCallNumberDirectly(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    const-string v0, "GroupDetailFragment"

    const-string v1, "unexpected invocation of onCallNumberDirectly()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onContactSelected(Landroid/net/Uri;Landroid/graphics/Rect;)V
    .locals 1
    .param p1    # Landroid/net/Uri;
    .param p2    # Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment$1;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    # getter for: Lcom/android/contacts/group/GroupDetailFragment;->mListener:Lcom/android/contacts/group/GroupDetailFragment$Listener;
    invoke-static {v0}, Lcom/android/contacts/group/GroupDetailFragment;->access$000(Lcom/android/contacts/group/GroupDetailFragment;)Lcom/android/contacts/group/GroupDetailFragment$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/contacts/group/GroupDetailFragment$Listener;->onContactSelected(Landroid/net/Uri;)V

    return-void
.end method
