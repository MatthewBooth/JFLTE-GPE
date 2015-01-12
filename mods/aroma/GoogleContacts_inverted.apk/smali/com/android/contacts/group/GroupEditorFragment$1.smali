.class Lcom/android/contacts/group/GroupEditorFragment$1;
.super Ljava/lang/Object;
.source "GroupEditorFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/group/GroupEditorFragment;->setupEditorForAccount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/group/GroupEditorFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/group/GroupEditorFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/group/GroupEditorFragment$1;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2    # Landroid/view/View;
    .param p3    # I
    .param p4    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment$1;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    invoke-virtual {v0}, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->getRawContactId()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->getContactId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/contacts/group/GroupEditorFragment;->loadMemberToAddToGroup(JLjava/lang/String;)V

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment$1;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    # getter for: Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteAdapter:Lcom/android/contacts/group/SuggestedMemberListAdapter;
    invoke-static {v1}, Lcom/android/contacts/group/GroupEditorFragment;->access$100(Lcom/android/contacts/group/GroupEditorFragment;)Lcom/android/contacts/group/SuggestedMemberListAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->getContactId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->addNewMember(J)V

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment$1;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    # getter for: Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;
    invoke-static {v1}, Lcom/android/contacts/group/GroupEditorFragment;->access$200(Lcom/android/contacts/group/GroupEditorFragment;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
