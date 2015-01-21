.class Lcom/android/contacts/common/list/PhoneNumberPickerFragment$FilterHeaderClickListener;
.super Ljava/lang/Object;
.source "PhoneNumberPickerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/list/PhoneNumberPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilterHeaderClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/list/PhoneNumberPickerFragment;


# direct methods
.method private constructor <init>(Lcom/android/contacts/common/list/PhoneNumberPickerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment$FilterHeaderClickListener;->this$0:Lcom/android/contacts/common/list/PhoneNumberPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/common/list/PhoneNumberPickerFragment;Lcom/android/contacts/common/list/PhoneNumberPickerFragment$1;)V
    .locals 0
    .param p1    # Lcom/android/contacts/common/list/PhoneNumberPickerFragment;
    .param p2    # Lcom/android/contacts/common/list/PhoneNumberPickerFragment$1;

    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment$FilterHeaderClickListener;-><init>(Lcom/android/contacts/common/list/PhoneNumberPickerFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment$FilterHeaderClickListener;->this$0:Lcom/android/contacts/common/list/PhoneNumberPickerFragment;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment$FilterHeaderClickListener;->this$0:Lcom/android/contacts/common/list/PhoneNumberPickerFragment;

    # getter for: Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;
    invoke-static {v2}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->access$000(Lcom/android/contacts/common/list/PhoneNumberPickerFragment;)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/contacts/common/util/AccountFilterUtil;->startAccountFilterActivityForResult(Landroid/app/Fragment;ILcom/android/contacts/common/list/ContactListFilter;)V

    return-void
.end method
