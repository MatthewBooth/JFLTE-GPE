.class final Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;
.super Landroid/widget/BaseAdapter;
.source "GroupEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/group/GroupEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MemberListAdapter"
.end annotation


# instance fields
.field private mIsGroupMembershipEditable:Z

.field final synthetic this$0:Lcom/android/contacts/group/GroupEditorFragment;


# direct methods
.method private constructor <init>(Lcom/android/contacts/group/GroupEditorFragment;)V
    .locals 1

    iput-object p1, p0, Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;->mIsGroupMembershipEditable:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/group/GroupEditorFragment;Lcom/android/contacts/group/GroupEditorFragment$1;)V
    .locals 0
    .param p1    # Lcom/android/contacts/group/GroupEditorFragment;
    .param p2    # Lcom/android/contacts/group/GroupEditorFragment$1;

    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;-><init>(Lcom/android/contacts/group/GroupEditorFragment;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    # getter for: Lcom/android/contacts/group/GroupEditorFragment;->mListToDisplay:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/contacts/group/GroupEditorFragment;->access$1500(Lcom/android/contacts/group/GroupEditorFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/contacts/group/GroupEditorFragment$Member;
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    # getter for: Lcom/android/contacts/group/GroupEditorFragment;->mListToDisplay:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/contacts/group/GroupEditorFragment;->access$1500(Lcom/android/contacts/group/GroupEditorFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/group/GroupEditorFragment$Member;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;->getItem(I)Lcom/android/contacts/group/GroupEditorFragment$Member;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1    # I

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    # getter for: Lcom/android/contacts/group/GroupEditorFragment;->mLayoutInflater:Landroid/view/LayoutInflater;
    invoke-static {v0}, Lcom/android/contacts/group/GroupEditorFragment;->access$1200(Lcom/android/contacts/group/GroupEditorFragment;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;->mIsGroupMembershipEditable:Z

    if-eqz v0, :cond_1

    const v0, 0x7f04004e

    :goto_0
    invoke-virtual {v2, v0, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;->getItem(I)Lcom/android/contacts/group/GroupEditorFragment$Member;

    move-result-object v8

    const v0, 0x7f0e009b

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/QuickContactBadge;

    invoke-virtual {v8}, Lcom/android/contacts/group/GroupEditorFragment$Member;->getLookupUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    const v0, 0x7f0e002e

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v8}, Lcom/android/contacts/group/GroupEditorFragment$Member;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0e008f

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_0

    new-instance v0, Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter$1;

    invoke-direct {v0, p0, v8}, Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter$1;-><init>(Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;Lcom/android/contacts/group/GroupEditorFragment$Member;)V

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    new-instance v6, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    invoke-virtual {v8}, Lcom/android/contacts/group/GroupEditorFragment$Member;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8}, Lcom/android/contacts/group/GroupEditorFragment$Member;->getLookupKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v0, v2, v5}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    # getter for: Lcom/android/contacts/group/GroupEditorFragment;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;
    invoke-static {v0}, Lcom/android/contacts/group/GroupEditorFragment;->access$1400(Lcom/android/contacts/group/GroupEditorFragment;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v0

    invoke-virtual {v8}, Lcom/android/contacts/group/GroupEditorFragment$Member;->getPhotoUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1}, Lcom/android/contacts/common/util/ViewUtil;->getConstantPreLayoutWidth(Landroid/view/View;)I

    move-result v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/common/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    return-object v10

    :cond_1
    const v0, 0x7f04003d

    goto :goto_0

    :cond_2
    move-object v10, p2

    goto :goto_1
.end method

.method public setIsGroupMembershipEditable(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;->mIsGroupMembershipEditable:Z

    return-void
.end method
