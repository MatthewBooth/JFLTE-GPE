.class Lcom/android/contacts/common/preference/ContactsPreferences$1;
.super Ljava/lang/Object;
.source "ContactsPreferences.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/preference/ContactsPreferences;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/preference/ContactsPreferences;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/preference/ContactsPreferences;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/preference/ContactsPreferences$1;->this$0:Lcom/android/contacts/common/preference/ContactsPreferences;

    iput-object p2, p0, Lcom/android/contacts/common/preference/ContactsPreferences$1;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "android.contacts.DISPLAY_ORDER"

    iget-object v1, p0, Lcom/android/contacts/common/preference/ContactsPreferences$1;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences$1;->this$0:Lcom/android/contacts/common/preference/ContactsPreferences;

    iget-object v1, p0, Lcom/android/contacts/common/preference/ContactsPreferences$1;->this$0:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v1}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v1

    # setter for: Lcom/android/contacts/common/preference/ContactsPreferences;->mDisplayOrder:I
    invoke-static {v0, v1}, Lcom/android/contacts/common/preference/ContactsPreferences;->access$002(Lcom/android/contacts/common/preference/ContactsPreferences;I)I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences$1;->this$0:Lcom/android/contacts/common/preference/ContactsPreferences;

    # getter for: Lcom/android/contacts/common/preference/ContactsPreferences;->mListener:Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;
    invoke-static {v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->access$200(Lcom/android/contacts/common/preference/ContactsPreferences;)Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences$1;->this$0:Lcom/android/contacts/common/preference/ContactsPreferences;

    # getter for: Lcom/android/contacts/common/preference/ContactsPreferences;->mListener:Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;
    invoke-static {v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->access$200(Lcom/android/contacts/common/preference/ContactsPreferences;)Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;->onChange()V

    :cond_1
    return-void

    :cond_2
    const-string v0, "android.contacts.SORT_ORDER"

    iget-object v1, p0, Lcom/android/contacts/common/preference/ContactsPreferences$1;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences$1;->this$0:Lcom/android/contacts/common/preference/ContactsPreferences;

    iget-object v1, p0, Lcom/android/contacts/common/preference/ContactsPreferences$1;->this$0:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v1}, Lcom/android/contacts/common/preference/ContactsPreferences;->getSortOrder()I

    move-result v1

    # setter for: Lcom/android/contacts/common/preference/ContactsPreferences;->mSortOrder:I
    invoke-static {v0, v1}, Lcom/android/contacts/common/preference/ContactsPreferences;->access$102(Lcom/android/contacts/common/preference/ContactsPreferences;I)I

    goto :goto_0
.end method
