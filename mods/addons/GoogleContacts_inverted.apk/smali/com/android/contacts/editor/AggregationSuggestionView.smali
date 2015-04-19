.class public Lcom/android/contacts/editor/AggregationSuggestionView;
.super Landroid/widget/LinearLayout;
.source "AggregationSuggestionView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/AggregationSuggestionView$Listener;
    }
.end annotation


# instance fields
.field private mContactId:J

.field private mListener:Lcom/android/contacts/editor/AggregationSuggestionView$Listener;

.field private mLookupKey:Ljava/lang/String;

.field private mNewContact:Z

.field private mRawContacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mRawContacts:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mRawContacts:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mRawContacts:Ljava/util/List;

    return-void
.end method

.method private canEditSuggestedContact()Z
    .locals 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-boolean v8, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mNewContact:Z

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/editor/AggregationSuggestionView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v1

    iget-object v8, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mRawContacts:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;

    iget-object v0, v4, Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;->accountType:Ljava/lang/String;

    iget-object v2, v4, Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;->dataSet:Ljava/lang/String;

    if-nez v0, :cond_3

    move v6, v7

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v0, v2}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/contacts/common/model/account/AccountType;->areContactsWritable()Z

    move-result v8

    if-eqz v8, :cond_2

    move v6, v7

    goto :goto_0
.end method


# virtual methods
.method public bindSuggestion(Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;)V
    .locals 7
    .param p1    # Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;

    const/4 v6, 0x0

    iget-wide v4, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->contactId:J

    iput-wide v4, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mContactId:J

    iget-object v4, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->lookupKey:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mLookupKey:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->rawContacts:Ljava/util/List;

    iput-object v4, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mRawContacts:Ljava/util/List;

    const v4, 0x7f0e0029

    invoke-virtual {p0, v4}, Lcom/android/contacts/editor/AggregationSuggestionView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->photo:[B

    if-eqz v4, :cond_1

    iget-object v4, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->photo:[B

    iget-object v5, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->photo:[B

    array-length v5, v5

    invoke-static {v4, v6, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    const v4, 0x7f0e0027

    invoke-virtual {p0, v4}, Lcom/android/contacts/editor/AggregationSuggestionView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v4, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f0e0028

    invoke-virtual {p0, v4}, Lcom/android/contacts/editor/AggregationSuggestionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    iget-object v4, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->nickname:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v1, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->nickname:Ljava/lang/String;

    :cond_0
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/editor/AggregationSuggestionView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v6, v5}, Lcom/android/contacts/common/ContactPhotoManager;->getDefaultAvatarDrawableForContact(Landroid/content/res/Resources;ZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    iget-object v4, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->emailAddress:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v1, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->emailAddress:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-object v4, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->phoneNumber:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v1, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->phoneNumber:Ljava/lang/String;

    goto :goto_1
.end method

.method public handleItemClickEvent()Z
    .locals 7

    iget-object v3, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mListener:Lcom/android/contacts/editor/AggregationSuggestionView$Listener;

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/editor/AggregationSuggestionView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/contacts/editor/AggregationSuggestionView;->canEditSuggestedContact()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mListener:Lcom/android/contacts/editor/AggregationSuggestionView$Listener;

    iget-wide v4, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mContactId:J

    iget-object v6, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mLookupKey:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/contacts/editor/AggregationSuggestionView$Listener;->onEditAction(Landroid/net/Uri;)V

    :goto_0
    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mRawContacts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;

    iget-wide v4, v1, Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;->rawContactId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    iget-object v3, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mListener:Lcom/android/contacts/editor/AggregationSuggestionView$Listener;

    iget-wide v4, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mContactId:J

    invoke-interface {v3, v4, v5, v2}, Lcom/android/contacts/editor/AggregationSuggestionView$Listener;->onJoinAction(JLjava/util/List;)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public setListener(Lcom/android/contacts/editor/AggregationSuggestionView$Listener;)V
    .locals 0
    .param p1    # Lcom/android/contacts/editor/AggregationSuggestionView$Listener;

    iput-object p1, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mListener:Lcom/android/contacts/editor/AggregationSuggestionView$Listener;

    return-void
.end method

.method public setNewContact(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mNewContact:Z

    return-void
.end method
