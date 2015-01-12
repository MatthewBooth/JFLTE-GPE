.class Lcom/android/contacts/widget/PinnedHeaderListDemoActivity$1;
.super Ljava/lang/Object;
.source "PinnedHeaderListDemoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/widget/PinnedHeaderListDemoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/widget/PinnedHeaderListDemoActivity;

.field final synthetic val$adapter:Lcom/android/contacts/widget/PinnedHeaderListDemoActivity$TestPinnedHeaderListAdapter;

.field final synthetic val$cursor:Landroid/database/Cursor;

.field final synthetic val$sectionId:I


# direct methods
.method constructor <init>(Lcom/android/contacts/widget/PinnedHeaderListDemoActivity;Lcom/android/contacts/widget/PinnedHeaderListDemoActivity$TestPinnedHeaderListAdapter;ILandroid/database/Cursor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/widget/PinnedHeaderListDemoActivity$1;->this$0:Lcom/android/contacts/widget/PinnedHeaderListDemoActivity;

    iput-object p2, p0, Lcom/android/contacts/widget/PinnedHeaderListDemoActivity$1;->val$adapter:Lcom/android/contacts/widget/PinnedHeaderListDemoActivity$TestPinnedHeaderListAdapter;

    iput p3, p0, Lcom/android/contacts/widget/PinnedHeaderListDemoActivity$1;->val$sectionId:I

    iput-object p4, p0, Lcom/android/contacts/widget/PinnedHeaderListDemoActivity$1;->val$cursor:Landroid/database/Cursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/contacts/widget/PinnedHeaderListDemoActivity$1;->val$adapter:Lcom/android/contacts/widget/PinnedHeaderListDemoActivity$TestPinnedHeaderListAdapter;

    iget v1, p0, Lcom/android/contacts/widget/PinnedHeaderListDemoActivity$1;->val$sectionId:I

    iget-object v2, p0, Lcom/android/contacts/widget/PinnedHeaderListDemoActivity$1;->val$cursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/widget/PinnedHeaderListDemoActivity$TestPinnedHeaderListAdapter;->changeCursor(ILandroid/database/Cursor;)V

    return-void
.end method
