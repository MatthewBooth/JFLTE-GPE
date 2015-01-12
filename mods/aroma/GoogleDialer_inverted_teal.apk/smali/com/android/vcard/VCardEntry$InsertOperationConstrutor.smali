.class Lcom/android/vcard/VCardEntry$InsertOperationConstrutor;
.super Ljava/lang/Object;
.source "VCardEntry.java"

# interfaces
.implements Lcom/android/vcard/VCardEntry$EntryElementIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vcard/VCardEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InsertOperationConstrutor"
.end annotation


# instance fields
.field private final mBackReferenceIndex:I

.field private final mOperationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/vcard/VCardEntry;


# direct methods
.method public constructor <init>(Lcom/android/vcard/VCardEntry;Ljava/util/List;I)V
    .locals 0
    .param p3    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/vcard/VCardEntry$InsertOperationConstrutor;->this$0:Lcom/android/vcard/VCardEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/vcard/VCardEntry$InsertOperationConstrutor;->mOperationList:Ljava/util/List;

    iput p3, p0, Lcom/android/vcard/VCardEntry$InsertOperationConstrutor;->mBackReferenceIndex:I

    return-void
.end method


# virtual methods
.method public onElement(Lcom/android/vcard/VCardEntry$EntryElement;)Z
    .locals 2
    .param p1    # Lcom/android/vcard/VCardEntry$EntryElement;

    invoke-interface {p1}, Lcom/android/vcard/VCardEntry$EntryElement;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$InsertOperationConstrutor;->mOperationList:Ljava/util/List;

    iget v1, p0, Lcom/android/vcard/VCardEntry$InsertOperationConstrutor;->mBackReferenceIndex:I

    invoke-interface {p1, v0, v1}, Lcom/android/vcard/VCardEntry$EntryElement;->constructInsertOperation(Ljava/util/List;I)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onElementGroupEnded()V
    .locals 0

    return-void
.end method

.method public onElementGroupStarted(Lcom/android/vcard/VCardEntry$EntryLabel;)V
    .locals 0
    .param p1    # Lcom/android/vcard/VCardEntry$EntryLabel;

    return-void
.end method

.method public onIterationEnded()V
    .locals 0

    return-void
.end method

.method public onIterationStarted()V
    .locals 0

    return-void
.end method
