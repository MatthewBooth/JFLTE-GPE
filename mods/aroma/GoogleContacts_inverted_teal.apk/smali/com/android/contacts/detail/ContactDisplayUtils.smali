.class public Lcom/android/contacts/detail/ContactDisplayUtils;
.super Ljava/lang/Object;
.source "ContactDisplayUtils.java"


# static fields
.field private static sBidiFormatter:Landroid/text/BidiFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/detail/ContactDisplayUtils;->sBidiFormatter:Landroid/text/BidiFormatter;

    return-void
.end method

.method public static configureStarredMenuItem(Landroid/view/MenuItem;ZZZ)V
    .locals 2
    .param p0    # Landroid/view/MenuItem;
    .param p1    # Z
    .param p2    # Z
    .param p3    # Z

    if-nez p1, :cond_2

    if-nez p2, :cond_2

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    if-eqz p3, :cond_0

    const v0, 0x7f02004c

    :goto_0
    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-interface {p0, p3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    if-eqz p3, :cond_1

    const v1, 0x7f0b0135

    :goto_1
    invoke-interface {p0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :goto_2
    return-void

    :cond_0
    const v0, 0x7f02004d

    goto :goto_0

    :cond_1
    const v1, 0x7f0b0134

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method public static getDisplayName(Landroid/content/Context;Lcom/android/contacts/common/model/Contact;)Ljava/lang/CharSequence;
    .locals 6
    .param p0    # Landroid/content/Context;
    .param p1    # Lcom/android/contacts/common/model/Contact;

    new-instance v2, Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-direct {v2, p0}, Lcom/android/contacts/common/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->getDisplayNameSource()I

    move-result v3

    const/16 v4, 0x14

    if-ne v3, v4, :cond_0

    sget-object v3, Lcom/android/contacts/detail/ContactDisplayUtils;->sBidiFormatter:Landroid/text/BidiFormatter;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v3, v4, v5}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->getAltDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0072

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
