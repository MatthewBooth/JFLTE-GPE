.class public Lcom/android/contacts/editor/RawContactReadOnlyEditorView;
.super Lcom/android/contacts/editor/BaseRawContactEditorView;
.source "RawContactReadOnlyEditorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/RawContactReadOnlyEditorView$Listener;
    }
.end annotation


# instance fields
.field private mAccountContainer:Landroid/view/View;

.field private mAccountIcon:Landroid/widget/ImageView;

.field private mAccountName:Ljava/lang/String;

.field private mAccountNameTextView:Landroid/widget/TextView;

.field private mAccountType:Ljava/lang/String;

.field private mAccountTypeTextView:Landroid/widget/TextView;

.field private mDataSet:Ljava/lang/String;

.field private mEditExternallyButton:Landroid/widget/Button;

.field private mGeneral:Landroid/view/ViewGroup;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListener:Lcom/android/contacts/editor/RawContactReadOnlyEditorView$Listener;

.field private mName:Landroid/widget/TextView;

.field private mRawContactId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/contacts/editor/BaseRawContactEditorView;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mRawContactId:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Lcom/android/contacts/editor/BaseRawContactEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mRawContactId:J

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/editor/RawContactReadOnlyEditorView;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/contacts/editor/RawContactReadOnlyEditorView;

    iget-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/editor/RawContactReadOnlyEditorView;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/contacts/editor/RawContactReadOnlyEditorView;

    iget-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private bindData(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V
    .locals 6
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # Ljava/lang/CharSequence;
    .param p3    # Ljava/lang/CharSequence;
    .param p4    # Z

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->bindData(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    return-void
.end method

.method private bindData(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V
    .locals 10
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # Ljava/lang/CharSequence;
    .param p3    # Ljava/lang/CharSequence;
    .param p4    # Z
    .param p5    # Z

    iget-object v6, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f040056

    iget-object v8, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mGeneral:Landroid/view/ViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v6, 0x7f0e0033

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p4, :cond_1

    const v6, 0x7f0e0087

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const v6, 0x7f0e0015

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p5, :cond_0

    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextDirection(I)V

    :cond_0
    const v6, 0x7f0e00b8

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v6, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mGeneral:Landroid/view/ViewGroup;

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :cond_1
    const v6, 0x7f0e00b3

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public getRawContactId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mRawContactId:J

    return-wide v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1    # Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e00dc

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mListener:Lcom/android/contacts/editor/RawContactReadOnlyEditorView$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mListener:Lcom/android/contacts/editor/RawContactReadOnlyEditorView$Listener;

    new-instance v1, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    iget-object v2, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountType:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mDataSet:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/contacts/common/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mRawContactId:J

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView$Listener;->onExternalEditorRequest(Lcom/android/contacts/common/model/account/AccountWithDataSet;Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0e00db

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mName:Landroid/widget/TextView;

    const v0, 0x7f0e00dc

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mEditExternallyButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mEditExternallyButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e00dd

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mGeneral:Landroid/view/ViewGroup;

    const v0, 0x7f0e0089

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountContainer:Landroid/view/View;

    const v0, 0x7f0e008d

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountIcon:Landroid/widget/ImageView;

    const v0, 0x7f0e008b

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    const v0, 0x7f0e008c

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    return-void
.end method

.method public setListener(Lcom/android/contacts/editor/RawContactReadOnlyEditorView$Listener;)V
    .locals 0
    .param p1    # Lcom/android/contacts/editor/RawContactReadOnlyEditorView$Listener;

    iput-object p1, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mListener:Lcom/android/contacts/editor/RawContactReadOnlyEditorView$Listener;

    return-void
.end method

.method public setState(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/editor/ViewIdGenerator;Z)V
    .locals 28
    .param p1    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p2    # Lcom/android/contacts/common/model/account/AccountType;
    .param p3    # Lcom/android/contacts/editor/ViewIdGenerator;
    .param p4    # Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mGeneral:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "vnd.android.cursor.item/name"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v4}, Lcom/android/contacts/common/model/RawContactModifier;->ensureKindExists(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/RawContactDelta;->getAccountName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountName:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/RawContactDelta;->getAccountType()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountType:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/RawContactDelta;->getDataSet()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mDataSet:Ljava/lang/String;

    if-eqz p4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    const v7, 0x7f0b01ba

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070012

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountIcon:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/RawContactDelta;->getRawContactId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mRawContactId:J

    const-string v4, "vnd.android.cursor.item/photo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v5

    if-eqz v5, :cond_2

    const-string v4, "vnd.android.cursor.item/photo"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v4}, Lcom/android/contacts/common/model/RawContactModifier;->ensureKindExists(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    const-string v4, "vnd.android.cursor.item/photo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v4

    if-eqz v4, :cond_9

    const/16 v18, 0x1

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->setHasPhotoEditor(Z)V

    const-string v4, "vnd.android.cursor.item/photo"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/contacts/common/model/RawContactDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/common/model/account/AccountType;->areContactsWritable()Z

    move-result v7

    if-nez v7, :cond_a

    const/4 v8, 0x1

    :goto_3
    move-object/from16 v7, p1

    move-object/from16 v9, p3

    invoke-virtual/range {v4 .. v9}, Lcom/android/contacts/editor/PhotoEditorView;->setValues(Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    :cond_2
    const-string v4, "vnd.android.cursor.item/name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/contacts/common/model/RawContactDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mName:Landroid/widget/TextView;

    if-eqz v6, :cond_b

    const-string v4, "data1"

    invoke-virtual {v6, v4}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_4
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/common/model/account/AccountType;->getEditContactActivityClassName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountContainer:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountContainer:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/view/View;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mEditExternallyButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const-string v4, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v23

    if-eqz v23, :cond_d

    const/4 v11, 0x1

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_3
    :goto_6
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual/range {v21 .. v21}, Lcom/android/contacts/common/model/ValuesDelta;->getPhoneNumber()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual/range {v21 .. v21}, Lcom/android/contacts/common/model/ValuesDelta;->getPhoneNormalizedNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/contacts/common/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-static {v0, v4, v7}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual/range {v21 .. v21}, Lcom/android/contacts/common/model/ValuesDelta;->phoneHasType()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual/range {v21 .. v21}, Lcom/android/contacts/common/model/ValuesDelta;->getPhoneType()I

    move-result v4

    invoke-virtual/range {v21 .. v21}, Lcom/android/contacts/common/model/ValuesDelta;->getPhoneLabel()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v24

    invoke-static {v0, v4, v7}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mContext:Landroid/content/Context;

    const v7, 0x7f0b0085

    invoke-virtual {v4, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    const/4 v12, 0x1

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->bindData(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    const/4 v11, 0x0

    goto :goto_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mContext:Landroid/content/Context;

    const v8, 0x7f0b01bb

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/16 v25, 0x0

    aput-object v13, v12, v25

    invoke-virtual {v7, v8, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mContext:Landroid/content/Context;

    const v7, 0x7f0b0078

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mContext:Landroid/content/Context;

    const v8, 0x7f0b0180

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountName:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v12, v25

    invoke-virtual {v7, v8, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mContext:Landroid/content/Context;

    const v8, 0x7f0b017f

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/16 v25, 0x0

    aput-object v13, v12, v25

    invoke-virtual {v7, v8, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7

    :cond_9
    const/16 v18, 0x0

    goto/16 :goto_2

    :cond_a
    const/4 v8, 0x0

    goto/16 :goto_3

    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mContext:Landroid/content/Context;

    const v8, 0x7f0b0072

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4

    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountContainer:Landroid/view/View;

    new-instance v7, Lcom/android/contacts/editor/RawContactReadOnlyEditorView$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView$1;-><init>(Lcom/android/contacts/editor/RawContactReadOnlyEditorView;)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mEditExternallyButton:Landroid/widget/Button;

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_5

    :cond_d
    const-string v4, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    if-eqz v17, :cond_10

    const/16 v20, 0x1

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_e
    :goto_8
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v14}, Lcom/android/contacts/common/model/ValuesDelta;->getEmailData()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    const/16 v16, 0x0

    invoke-virtual {v14}, Lcom/android/contacts/common/model/ValuesDelta;->emailHasType()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual {v14}, Lcom/android/contacts/common/model/ValuesDelta;->getEmailType()I

    move-result v4

    invoke-virtual {v14}, Lcom/android/contacts/common/model/ValuesDelta;->getEmailLabel()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v24

    invoke-static {v0, v4, v7}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v16

    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mContext:Landroid/content/Context;

    const v7, 0x7f0b0086

    invoke-virtual {v4, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v20

    invoke-direct {v0, v4, v15, v1, v2}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->bindData(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    const/16 v20, 0x0

    goto :goto_8

    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mGeneral:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mGeneral:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mGeneral:Landroid/view/ViewGroup;

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0
.end method
