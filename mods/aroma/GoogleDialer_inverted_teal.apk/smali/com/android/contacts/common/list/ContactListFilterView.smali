.class public Lcom/android/contacts/common/list/ContactListFilterView;
.super Landroid/widget/LinearLayout;
.source "ContactListFilterView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccountType:Landroid/widget/TextView;

.field private mAccountUserName:Landroid/widget/TextView;

.field private mFilter:Lcom/android/contacts/common/list/ContactListFilter;

.field private mIcon:Landroid/widget/ImageView;

.field private mRadioButton:Landroid/widget/RadioButton;

.field private mSingleAccount:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/contacts/common/list/ContactListFilterView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/list/ContactListFilterView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private bindView(II)V
    .locals 2
    .param p1    # I
    .param p2    # I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mAccountType:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public bindView(Lcom/android/contacts/common/model/AccountTypeManager;)V
    .locals 4
    .param p1    # Lcom/android/contacts/common/model/AccountTypeManager;

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mAccountType:Landroid/widget/TextView;

    if-nez v1, :cond_0

    const v1, 0x7f0e00a2

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactListFilterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f0e00a3

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactListFilterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mAccountType:Landroid/widget/TextView;

    const v1, 0x7f0e00a4

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactListFilterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mAccountUserName:Landroid/widget/TextView;

    const v1, 0x7f0e00a5

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactListFilterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mRadioButton:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListFilterView;->isActivated()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mAccountType:Landroid/widget/TextView;

    const v2, 0x7f08008d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mAccountUserName:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    iget v1, v1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const v1, 0x7f0800d7

    invoke-direct {p0, v3, v1}, Lcom/android/contacts/common/list/ContactListFilterView;->bindView(II)V

    goto :goto_0

    :pswitch_2
    const v1, 0x7f0800d4

    invoke-direct {p0, v3, v1}, Lcom/android/contacts/common/list/ContactListFilterView;->bindView(II)V

    goto :goto_0

    :pswitch_3
    const v1, 0x7f02008a

    const v2, 0x7f0800d5

    invoke-direct {p0, v1, v2}, Lcom/android/contacts/common/list/ContactListFilterView;->bindView(II)V

    goto :goto_0

    :pswitch_4
    const v1, 0x7f020088

    const v2, 0x7f0800d6

    invoke-direct {p0, v1, v2}, Lcom/android/contacts/common/list/ContactListFilterView;->bindView(II)V

    goto :goto_0

    :pswitch_5
    const v1, 0x7f08009a

    invoke-direct {p0, v3, v1}, Lcom/android/contacts/common/list/ContactListFilterView;->bindView(II)V

    goto :goto_0

    :pswitch_6
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mAccountUserName:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    iget-object v1, v1, Lcom/android/contacts/common/list/ContactListFilter;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    iget-object v2, v2, Lcom/android/contacts/common/list/ContactListFilter;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    iget-object v1, v1, Lcom/android/contacts/common/list/ContactListFilter;->accountType:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    iget-object v2, v2, Lcom/android/contacts/common/list/ContactListFilter;->dataSet:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mAccountUserName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    iget-object v2, v2, Lcom/android/contacts/common/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mAccountType:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListFilterView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    const v2, 0x7f0200f1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public setActivated(Z)V
    .locals 2
    .param p1    # Z

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setActivated(Z)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/contacts/common/list/ContactListFilterView;->TAG:Ljava/lang/String;

    const-string v1, "radio-button cannot be activated because it is null"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setContactListFilter(Lcom/android/contacts/common/list/ContactListFilter;)V
    .locals 0
    .param p1    # Lcom/android/contacts/common/list/ContactListFilter;

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    return-void
.end method

.method public setSingleAccount(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mSingleAccount:Z

    return-void
.end method
