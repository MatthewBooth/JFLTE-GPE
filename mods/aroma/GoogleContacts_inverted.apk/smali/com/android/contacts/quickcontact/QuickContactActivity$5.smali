.class Lcom/android/contacts/quickcontact/QuickContactActivity$5;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/contacts/common/model/dataitem/DataItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$5;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/contacts/common/model/dataitem/DataItem;Lcom/android/contacts/common/model/dataitem/DataItem;)I
    .locals 7
    .param p1    # Lcom/android/contacts/common/model/dataitem/DataItem;
    .param p2    # Lcom/android/contacts/common/model/dataitem/DataItem;

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/contacts/common/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v3, "QuickContact"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Comparing DataItems with different mimetypes lhs.getMimeType(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rhs.getMimeType(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/contacts/common/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->isSuperPrimary()Z

    move-result v5

    if-eqz v5, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/android/contacts/common/model/dataitem/DataItem;->isSuperPrimary()Z

    move-result v5

    if-eqz v5, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->isPrimary()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p2}, Lcom/android/contacts/common/model/dataitem/DataItem;->isPrimary()Z

    move-result v5

    if-nez v5, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->isPrimary()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p2}, Lcom/android/contacts/common/model/dataitem/DataItem;->isPrimary()Z

    move-result v3

    if-eqz v3, :cond_4

    move v2, v4

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getTimesUsed()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_5

    move v0, v2

    :goto_1
    invoke-virtual {p2}, Lcom/android/contacts/common/model/dataitem/DataItem;->getTimesUsed()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_6

    move v1, v2

    :goto_2
    sub-int v2, v1, v0

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getTimesUsed()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_6
    invoke-virtual {p2}, Lcom/android/contacts/common/model/dataitem/DataItem;->getTimesUsed()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
    .param p2    # Ljava/lang/Object;

    check-cast p1, Lcom/android/contacts/common/model/dataitem/DataItem;

    check-cast p2, Lcom/android/contacts/common/model/dataitem/DataItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/quickcontact/QuickContactActivity$5;->compare(Lcom/android/contacts/common/model/dataitem/DataItem;Lcom/android/contacts/common/model/dataitem/DataItem;)I

    move-result v0

    return v0
.end method
