.class Lcom/android/contacts/common/list/CustomContactListFilterActivity$2;
.super Ljava/lang/Object;
.source "CustomContactListFilterActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/list/CustomContactListFilterActivity;->showRemoveSync(Landroid/view/ContextMenu;Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/list/CustomContactListFilterActivity;

.field final synthetic val$account:Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;

.field final synthetic val$child:Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;

.field final synthetic val$syncMode:I

.field final synthetic val$title:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/list/CustomContactListFilterActivity;Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;ILjava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$2;->this$0:Lcom/android/contacts/common/list/CustomContactListFilterActivity;

    iput-object p2, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$2;->val$account:Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;

    iput-object p3, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$2;->val$child:Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;

    iput p4, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$2;->val$syncMode:I

    iput-object p5, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$2;->val$title:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1    # Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$2;->this$0:Lcom/android/contacts/common/list/CustomContactListFilterActivity;

    iget-object v1, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$2;->val$account:Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;

    iget-object v2, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$2;->val$child:Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;

    iget v3, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$2;->val$syncMode:I

    iget-object v4, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$2;->val$title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/contacts/common/list/CustomContactListFilterActivity;->handleRemoveSync(Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;ILjava/lang/CharSequence;)V

    const/4 v0, 0x1

    return v0
.end method
