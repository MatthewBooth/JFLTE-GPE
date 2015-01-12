.class Lcom/android/incallui/ConferenceManagerFragment$2;
.super Ljava/lang/Object;
.source "ConferenceManagerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/ConferenceManagerFragment;->setupSeparateButtonForRow(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/ConferenceManagerFragment;

.field final synthetic val$rowId:I


# direct methods
.method constructor <init>(Lcom/android/incallui/ConferenceManagerFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/ConferenceManagerFragment$2;->this$0:Lcom/android/incallui/ConferenceManagerFragment;

    iput p2, p0, Lcom/android/incallui/ConferenceManagerFragment$2;->val$rowId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/ConferenceManagerFragment$2;->this$0:Lcom/android/incallui/ConferenceManagerFragment;

    invoke-virtual {v0}, Lcom/android/incallui/ConferenceManagerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ConferenceManagerPresenter;

    iget v1, p0, Lcom/android/incallui/ConferenceManagerFragment$2;->val$rowId:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/ConferenceManagerPresenter;->separateConferenceConnection(I)V

    return-void
.end method
