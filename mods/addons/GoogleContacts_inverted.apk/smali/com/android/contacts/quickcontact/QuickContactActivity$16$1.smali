.class Lcom/android/contacts/quickcontact/QuickContactActivity$16$1;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity$16;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
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
        "Lcom/android/contacts/interactions/ContactInteraction;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/quickcontact/QuickContactActivity$16;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity$16;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$16$1;->this$1:Lcom/android/contacts/quickcontact/QuickContactActivity$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/contacts/interactions/ContactInteraction;Lcom/android/contacts/interactions/ContactInteraction;)I
    .locals 4
    .param p1    # Lcom/android/contacts/interactions/ContactInteraction;
    .param p2    # Lcom/android/contacts/interactions/ContactInteraction;

    invoke-interface {p1}, Lcom/android/contacts/interactions/ContactInteraction;->getInteractionDate()J

    move-result-wide v0

    invoke-interface {p2}, Lcom/android/contacts/interactions/ContactInteraction;->getInteractionDate()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
    .param p2    # Ljava/lang/Object;

    check-cast p1, Lcom/android/contacts/interactions/ContactInteraction;

    check-cast p2, Lcom/android/contacts/interactions/ContactInteraction;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/quickcontact/QuickContactActivity$16$1;->compare(Lcom/android/contacts/interactions/ContactInteraction;Lcom/android/contacts/interactions/ContactInteraction;)I

    move-result v0

    return v0
.end method
