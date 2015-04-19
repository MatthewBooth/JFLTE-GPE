.class Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter$1;
.super Ljava/lang/Object;
.source "GroupEditorFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;

.field final synthetic val$member:Lcom/android/contacts/group/GroupEditorFragment$Member;


# direct methods
.method constructor <init>(Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;Lcom/android/contacts/group/GroupEditorFragment$Member;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter$1;->this$1:Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;

    iput-object p2, p0, Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter$1;->val$member:Lcom/android/contacts/group/GroupEditorFragment$Member;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter$1;->this$1:Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;

    iget-object v0, v0, Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter$1;->val$member:Lcom/android/contacts/group/GroupEditorFragment$Member;

    # invokes: Lcom/android/contacts/group/GroupEditorFragment;->removeMember(Lcom/android/contacts/group/GroupEditorFragment$Member;)V
    invoke-static {v0, v1}, Lcom/android/contacts/group/GroupEditorFragment;->access$1300(Lcom/android/contacts/group/GroupEditorFragment;Lcom/android/contacts/group/GroupEditorFragment$Member;)V

    return-void
.end method
