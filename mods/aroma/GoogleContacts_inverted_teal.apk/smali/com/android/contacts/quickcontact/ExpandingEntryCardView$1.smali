.class Lcom/android/contacts/quickcontact/ExpandingEntryCardView$1;
.super Ljava/lang/Object;
.source "ExpandingEntryCardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/quickcontact/ExpandingEntryCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/ExpandingEntryCardView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$1;->this$0:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$1;->this$0:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    # getter for: Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->mIsExpanded:Z
    invoke-static {v0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->access$000(Lcom/android/contacts/quickcontact/ExpandingEntryCardView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$1;->this$0:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    # invokes: Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->collapse()V
    invoke-static {v0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->access$100(Lcom/android/contacts/quickcontact/ExpandingEntryCardView;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$1;->this$0:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    # invokes: Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->expand()V
    invoke-static {v0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->access$200(Lcom/android/contacts/quickcontact/ExpandingEntryCardView;)V

    goto :goto_0
.end method
