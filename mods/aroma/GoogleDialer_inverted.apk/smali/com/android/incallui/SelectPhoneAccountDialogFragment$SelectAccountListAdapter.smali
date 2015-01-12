.class Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SelectPhoneAccountDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SelectPhoneAccountDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectAccountListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/telecom/PhoneAccountHandle;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mResId:I

.field final synthetic this$0:Lcom/android/incallui/SelectPhoneAccountDialogFragment;


# direct methods
.method public constructor <init>(Lcom/android/incallui/SelectPhoneAccountDialogFragment;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .param p2    # Landroid/content/Context;
    .param p3    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;->this$0:Lcom/android/incallui/SelectPhoneAccountDialogFragment;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p2, p0, Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;->mContext:Landroid/content/Context;

    iput p3, p0, Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;->mResId:I

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    if-nez p2, :cond_0

    iget v5, p0, Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;->mResId:I

    invoke-virtual {v3, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    new-instance v2, Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;

    invoke-direct {v2, p0, v7}, Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;-><init>(Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;Lcom/android/incallui/SelectPhoneAccountDialogFragment$1;)V

    const v5, 0x7f0e00bb

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    const v5, 0x7f0e00a2

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v2, Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    iget-object v5, p0, Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;->this$0:Lcom/android/incallui/SelectPhoneAccountDialogFragment;

    # getter for: Lcom/android/incallui/SelectPhoneAccountDialogFragment;->mTelecomManager:Landroid/telecom/TelecomManager;
    invoke-static {v5}, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->access$300(Lcom/android/incallui/SelectPhoneAccountDialogFragment;)Landroid/telecom/TelecomManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    iget-object v5, v2, Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v2, Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/telecom/PhoneAccount;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v4

    :cond_0
    move-object v4, p2

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;

    goto :goto_0
.end method
