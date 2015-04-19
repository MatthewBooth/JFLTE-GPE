.class public Lcom/android/contacts/list/ContactsIntentResolver;
.super Ljava/lang/Object;
.source "ContactsIntentResolver.java"


# instance fields
.field private final mContext:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/contacts/list/ContactsIntentResolver;->mContext:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public resolveIntent(Landroid/content/Intent;)Lcom/android/contacts/list/ContactsRequest;
    .locals 13
    .param p1    # Landroid/content/Intent;

    new-instance v6, Lcom/android/contacts/list/ContactsRequest;

    invoke-direct {v6}, Lcom/android/contacts/list/ContactsRequest;-><init>()V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v10, "ContactsIntentResolver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Called with action: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "com.android.contacts.action.LIST_DEFAULT"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/16 v10, 0xa

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    :cond_0
    :goto_0
    const-string v10, "com.android.contacts.extra.TITLE_EXTRA"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v6, v8}, Lcom/android/contacts/list/ContactsRequest;->setActivityTitle(Ljava/lang/CharSequence;)V

    :cond_1
    return-object v6

    :cond_2
    const-string v10, "com.android.contacts.action.LIST_ALL_CONTACTS"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/16 v10, 0xf

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_0

    :cond_3
    const-string v10, "com.android.contacts.action.LIST_CONTACTS_WITH_PHONES"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/16 v10, 0x11

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_0

    :cond_4
    const-string v10, "com.android.contacts.action.LIST_STARRED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/16 v10, 0x1e

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_0

    :cond_5
    const-string v10, "com.android.contacts.action.LIST_FREQUENT"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/16 v10, 0x28

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_0

    :cond_6
    const-string v10, "com.android.contacts.action.LIST_STREQUENT"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/16 v10, 0x32

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_0

    :cond_7
    const-string v10, "com.android.contacts.action.LIST_GROUP"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const/16 v10, 0x14

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_0

    :cond_8
    const-string v10, "android.intent.action.PICK"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    iget-object v10, p0, Lcom/android/contacts/list/ContactsIntentResolver;->mContext:Landroid/app/Activity;

    invoke-virtual {p1, v10}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "vnd.android.cursor.dir/contact"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const/16 v10, 0x3c

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_0

    :cond_9
    const-string v10, "vnd.android.cursor.dir/person"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    const/16 v10, 0x3c

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto/16 :goto_0

    :cond_a
    const-string v10, "vnd.android.cursor.dir/phone_v2"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    const/16 v10, 0x5a

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    :cond_b
    const-string v10, "vnd.android.cursor.dir/phone"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    const/16 v10, 0x5a

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto/16 :goto_0

    :cond_c
    const-string v10, "vnd.android.cursor.dir/postal-address_v2"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    const/16 v10, 0x64

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    :cond_d
    const-string v10, "vnd.android.cursor.dir/postal-address"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    const/16 v10, 0x64

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto/16 :goto_0

    :cond_e
    const-string v10, "vnd.android.cursor.dir/email_v2"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v10, 0x69

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    :cond_f
    const-string v10, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v10, "alias.DialShortcut"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    const/16 v10, 0x78

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    :cond_10
    const-string v10, "alias.MessageShortcut"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    const/16 v10, 0x82

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    :cond_11
    const/16 v10, 0x6e

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    :cond_12
    const-string v10, "android.intent.action.GET_CONTENT"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_18

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v9

    const-string v10, "vnd.android.cursor.item/contact"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    const/16 v10, 0x46

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    :cond_13
    const-string v10, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    const/16 v10, 0x5a

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    :cond_14
    const-string v10, "vnd.android.cursor.item/phone"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    const/16 v10, 0x5a

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto/16 :goto_0

    :cond_15
    const-string v10, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    const/16 v10, 0x64

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    :cond_16
    const-string v10, "vnd.android.cursor.item/postal-address"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    const/16 v10, 0x64

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto/16 :goto_0

    :cond_17
    const-string v10, "vnd.android.cursor.item/person"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v10, 0x46

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto/16 :goto_0

    :cond_18
    const-string v10, "android.intent.action.INSERT_OR_EDIT"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_19

    const/16 v10, 0x50

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    :cond_19
    const-string v10, "android.intent.action.SEARCH"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1c

    const-string v10, "query"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1a

    const-string v10, "phone"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_1a
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1b

    const-string v10, "email"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_1b
    invoke-virtual {v6, v5}, Lcom/android/contacts/list/ContactsRequest;->setQueryString(Ljava/lang/String;)V

    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setSearchMode(Z)V

    goto/16 :goto_0

    :cond_1c
    const-string v10, "android.intent.action.VIEW"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1f

    iget-object v10, p0, Lcom/android/contacts/list/ContactsIntentResolver;->mContext:Landroid/app/Activity;

    invoke-virtual {p1, v10}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "vnd.android.cursor.dir/contact"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1d

    const-string v10, "vnd.android.cursor.dir/person"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1e

    :cond_1d
    const/16 v10, 0xf

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    :cond_1e
    const/16 v10, 0x8c

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setContactUri(Landroid/net/Uri;)V

    const-string v10, "android.intent.action.VIEW"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_1f
    const-string v10, "com.android.contacts.action.FILTER_CONTACTS"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_21

    const/16 v10, 0xa

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_20

    const-string v10, "com.android.contacts.extra.FILTER_TEXT"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setQueryString(Ljava/lang/String;)V

    const-string v10, "originalRequest"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/list/ContactsRequest;

    if-eqz v4, :cond_20

    invoke-virtual {v6, v4}, Lcom/android/contacts/list/ContactsRequest;->copyFrom(Lcom/android/contacts/list/ContactsRequest;)V

    :cond_20
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setSearchMode(Z)V

    goto/16 :goto_0

    :cond_21
    const-string v10, "android.provider.Contacts.SEARCH_SUGGESTION_CLICKED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_22

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    const/16 v10, 0x8c

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    invoke-virtual {v6, v2}, Lcom/android/contacts/list/ContactsRequest;->setContactUri(Landroid/net/Uri;)V

    const-string v10, "android.intent.action.VIEW"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_22
    const-string v10, "com.android.contacts.action.JOIN_CONTACT"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v10, 0x96

    invoke-virtual {v6, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0
.end method
