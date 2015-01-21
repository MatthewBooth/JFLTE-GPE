.class Lcom/android/dialer/list/PhoneFavoritesTileAdapter$1;
.super Ljava/lang/Object;
.source "PhoneFavoritesTileAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/list/PhoneFavoritesTileAdapter;
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
        "Lcom/android/contacts/common/list/ContactEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;


# direct methods
.method constructor <init>(Lcom/android/dialer/list/PhoneFavoritesTileAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$1;->this$0:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/contacts/common/list/ContactEntry;Lcom/android/contacts/common/list/ContactEntry;)I
    .locals 3
    .param p1    # Lcom/android/contacts/common/list/ContactEntry;
    .param p2    # Lcom/android/contacts/common/list/ContactEntry;

    invoke-static {}, Lcom/google/common/collect/ComparisonChain;->start()Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget v1, p1, Lcom/android/contacts/common/list/ContactEntry;->pinned:I

    iget v2, p2, Lcom/android/contacts/common/list/ContactEntry;->pinned:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compare(II)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget-object v1, p1, Lcom/android/contacts/common/list/ContactEntry;->name:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/contacts/common/list/ContactEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ComparisonChain;->result()I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
    .param p2    # Ljava/lang/Object;

    check-cast p1, Lcom/android/contacts/common/list/ContactEntry;

    check-cast p2, Lcom/android/contacts/common/list/ContactEntry;

    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$1;->compare(Lcom/android/contacts/common/list/ContactEntry;Lcom/android/contacts/common/list/ContactEntry;)I

    move-result v0

    return v0
.end method
