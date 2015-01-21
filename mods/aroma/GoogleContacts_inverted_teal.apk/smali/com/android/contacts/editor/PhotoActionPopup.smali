.class public Lcom/android/contacts/editor/PhotoActionPopup;
.super Ljava/lang/Object;
.source "PhotoActionPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/PhotoActionPopup$Listener;,
        Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;
    }
.end annotation


# direct methods
.method public static createPopupMenu(Landroid/content/Context;Landroid/view/View;Lcom/android/contacts/editor/PhotoActionPopup$Listener;I)Landroid/widget/ListPopupWindow;
    .locals 13
    .param p0    # Landroid/content/Context;
    .param p1    # Landroid/view/View;
    .param p2    # Lcom/android/contacts/editor/PhotoActionPopup$Listener;
    .param p3    # I

    new-instance v1, Ljava/util/ArrayList;

    const/4 v10, 0x4

    invoke-direct {v1, v10}, Ljava/util/ArrayList;-><init>(I)V

    and-int/lit8 v10, p3, 0x1

    if-lez v10, :cond_0

    new-instance v10, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;

    const/4 v11, 0x0

    const v12, 0x7f0b0181

    invoke-virtual {p0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    and-int/lit8 v10, p3, 0x2

    if-lez v10, :cond_1

    new-instance v10, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;

    const/4 v11, 0x3

    const v12, 0x7f0b015a

    invoke-virtual {p0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    and-int/lit8 v10, p3, 0x4

    if-lez v10, :cond_3

    and-int/lit8 v10, p3, 0x8

    if-lez v10, :cond_5

    const/4 v7, 0x1

    :goto_0
    if-eqz v7, :cond_6

    const v8, 0x7f0b0185

    :goto_1
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v7, :cond_7

    const v5, 0x7f0b0187

    :goto_2
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isCameraIntentRegistered(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_2

    new-instance v10, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;

    const/4 v11, 0x1

    invoke-direct {v10, v11, v9}, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance v10, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;

    const/4 v11, 0x2

    invoke-direct {v10, v11, v6}, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v10, 0x7f04006f

    invoke-direct {v0, p0, v10, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    new-instance v3, Landroid/widget/ListPopupWindow;

    invoke-direct {v3, p0}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/android/contacts/editor/PhotoActionPopup$1;

    invoke-direct {v2, v1, p2, v3}, Lcom/android/contacts/editor/PhotoActionPopup$1;-><init>(Ljava/util/ArrayList;Lcom/android/contacts/editor/PhotoActionPopup$Listener;Landroid/widget/ListPopupWindow;)V

    invoke-virtual {v3, p1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    invoke-virtual {v3, v0}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v3, v2}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    const/4 v10, 0x2

    invoke-virtual {v3, v10}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f080069

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v10

    if-ge v10, v4, :cond_4

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    :cond_4
    return-object v3

    :cond_5
    const/4 v7, 0x0

    goto :goto_0

    :cond_6
    const v8, 0x7f0b0184

    goto :goto_1

    :cond_7
    const v5, 0x7f0b0186

    goto :goto_2
.end method
