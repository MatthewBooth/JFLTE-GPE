.class public final Lcom/android/contacts/common/Collapser;
.super Ljava/lang/Object;
.source "Collapser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/Collapser$Collapsible;
    }
.end annotation


# direct methods
.method public static collapseList(Ljava/util/List;Landroid/content/Context;)V
    .locals 8
    .param p1    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/contacts/common/Collapser$Collapsible",
            "<TT;>;>(",
            "Ljava/util/List",
            "<TT;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const/4 v7, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0x14

    if-le v5, v6, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_5

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/Collapser$Collapsible;

    if-eqz v1, :cond_4

    add-int/lit8 v3, v0, 0x1

    :goto_1
    if-ge v3, v5, :cond_4

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/Collapser$Collapsible;

    if-eqz v4, :cond_2

    invoke-interface {v1, v4, p1}, Lcom/android/contacts/common/Collapser$Collapsible;->shouldCollapseWith(Ljava/lang/Object;Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1, v4}, Lcom/android/contacts/common/Collapser$Collapsible;->collapseWith(Ljava/lang/Object;)V

    invoke-interface {p0, v3, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {v4, v1, p1}, Lcom/android/contacts/common/Collapser$Collapsible;->shouldCollapseWith(Ljava/lang/Object;Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4, v1}, Lcom/android/contacts/common/Collapser$Collapsible;->collapseWith(Ljava/lang/Object;)V

    invoke-interface {p0, v0, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_2
.end method
