.class public Lcom/android/contacts/widget/PinnedHeaderListDemoActivity;
.super Landroid/app/ListActivity;
.source "PinnedHeaderListDemoActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/widget/PinnedHeaderListDemoActivity$TestPinnedHeaderListAdapter;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/widget/PinnedHeaderListDemoActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private makeCursor(Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 8
    .param p1    # Ljava/lang/String;
    .param p2    # I

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Landroid/database/MatrixCursor;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    aput-object p1, v2, v6

    invoke-direct {v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    const v10, 0x7f040063

    invoke-virtual {p0, v10}, Lcom/android/contacts/widget/PinnedHeaderListDemoActivity;->setContentView(I)V

    new-instance v0, Lcom/android/contacts/widget/PinnedHeaderListDemoActivity$TestPinnedHeaderListAdapter;

    invoke-direct {v0, p0}, Lcom/android/contacts/widget/PinnedHeaderListDemoActivity$TestPinnedHeaderListAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/contacts/widget/PinnedHeaderListDemoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v10, "counts"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    const-string v10, "names"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const-string v10, "showIfEmpty"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v9

    const-string v10, "headers"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v5

    const-string v10, "delays"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    if-eqz v1, :cond_0

    if-eqz v7, :cond_0

    if-eqz v9, :cond_0

    if-nez v3, :cond_1

    :cond_0
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Missing required extras"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_1
    invoke-virtual {v0, v7}, Lcom/android/contacts/widget/PinnedHeaderListDemoActivity$TestPinnedHeaderListAdapter;->setHeaders([Ljava/lang/String;)V

    const/4 v6, 0x0

    :goto_0
    array-length v10, v1

    if-ge v6, v10, :cond_3

    aget-boolean v11, v9, v6

    aget-object v10, v7, v6

    if-eqz v10, :cond_2

    const/4 v10, 0x1

    :goto_1
    invoke-virtual {v0, v11, v10}, Lcom/android/contacts/widget/PinnedHeaderListDemoActivity$TestPinnedHeaderListAdapter;->addPartition(ZZ)V

    array-length v10, v7

    # setter for: Lcom/android/contacts/widget/PinnedHeaderListDemoActivity$TestPinnedHeaderListAdapter;->mPinnedHeaderCount:I
    invoke-static {v0, v10}, Lcom/android/contacts/widget/PinnedHeaderListDemoActivity$TestPinnedHeaderListAdapter;->access$002(Lcom/android/contacts/widget/PinnedHeaderListDemoActivity$TestPinnedHeaderListAdapter;I)I

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/contacts/widget/PinnedHeaderListDemoActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    const/4 v6, 0x0

    :goto_2
    array-length v10, v1

    if-ge v6, v10, :cond_4

    move v8, v6

    aget-object v10, v7, v6

    aget v11, v1, v6

    invoke-direct {p0, v10, v11}, Lcom/android/contacts/widget/PinnedHeaderListDemoActivity;->makeCursor(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v2

    iget-object v10, p0, Lcom/android/contacts/widget/PinnedHeaderListDemoActivity;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/contacts/widget/PinnedHeaderListDemoActivity$1;

    invoke-direct {v11, p0, v0, v8, v2}, Lcom/android/contacts/widget/PinnedHeaderListDemoActivity$1;-><init>(Lcom/android/contacts/widget/PinnedHeaderListDemoActivity;Lcom/android/contacts/widget/PinnedHeaderListDemoActivity$TestPinnedHeaderListAdapter;ILandroid/database/Cursor;)V

    aget v12, v3, v6

    int-to-long v12, v12

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method
