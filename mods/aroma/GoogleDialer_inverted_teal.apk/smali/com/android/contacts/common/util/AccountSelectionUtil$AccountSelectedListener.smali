.class public Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;
.super Ljava/lang/Object;
.source "AccountSelectionUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/util/AccountSelectionUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccountSelectedListener"
.end annotation


# instance fields
.field protected final mAccountList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p3    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "AccountSelectionUtil"

    const-string v1, "The size of Account list is 0."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-object p1, p0, Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;->mAccountList:Ljava/util/List;

    iput p3, p0, Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;->mResId:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v1, p0, Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;->mResId:I

    iget-object v0, p0, Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;->mAccountList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    invoke-static {v1, v2, v0}, Lcom/android/contacts/common/util/AccountSelectionUtil;->doImport(Landroid/content/Context;ILcom/android/contacts/common/model/account/AccountWithDataSet;)V

    return-void
.end method
