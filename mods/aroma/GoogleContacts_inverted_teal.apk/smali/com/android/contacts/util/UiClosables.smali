.class public Lcom/android/contacts/util/UiClosables;
.super Ljava/lang/Object;
.source "UiClosables.java"


# direct methods
.method public static closeQuietly(Landroid/widget/ListPopupWindow;)Z
    .locals 1
    .param p0    # Landroid/widget/ListPopupWindow;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->dismiss()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
