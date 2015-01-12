.class Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;
.super Ljava/lang/Object;
.source "ImportVCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/vcard/ImportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VCardSelectedListener"
.end annotation


# instance fields
.field private mCurrentIndex:I

.field private mSelectedIndexSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;Z)V
    .locals 1
    .param p2    # Z

    iput-object p1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;->mCurrentIndex:I

    if-eqz p2, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;->mSelectedIndexSet:Ljava/util/Set;

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/4 v3, -0x1

    if-ne p2, v3, :cond_4

    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;->mSelectedIndexSet:Ljava/util/Set;

    if-eqz v3, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$600(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;->mSelectedIndexSet:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$600(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # invokes: Lcom/android/contacts/common/vcard/ImportVCardActivity;->importVCardFromSDCard(Ljava/util/List;)V
    invoke-static {v3, v1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$700(Lcom/android/contacts/common/vcard/ImportVCardActivity;Ljava/util/List;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v4, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$600(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Ljava/util/List;

    move-result-object v3

    iget v5, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;->mCurrentIndex:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;

    # invokes: Lcom/android/contacts/common/vcard/ImportVCardActivity;->importVCardFromSDCard(Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;)V
    invoke-static {v4, v3}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$800(Lcom/android/contacts/common/vcard/ImportVCardActivity;Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;)V

    goto :goto_1

    :cond_4
    const/4 v3, -0x2

    if-ne p2, v3, :cond_5

    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v3}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->finish()V

    goto :goto_1

    :cond_5
    iput p2, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;->mCurrentIndex:I

    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;->mSelectedIndexSet:Ljava/util/Set;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;->mSelectedIndexSet:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;->mSelectedIndexSet:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;->mSelectedIndexSet:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 5
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I
    .param p3    # Z

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;->mSelectedIndexSet:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;->mSelectedIndexSet:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, p3, :cond_1

    :cond_0
    const-string v1, "VCardImport"

    const-string v2, "Inconsist state in index %d (%s)"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$600(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;

    invoke-virtual {v0}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;->onClick(Landroid/content/DialogInterface;I)V

    goto :goto_0
.end method
