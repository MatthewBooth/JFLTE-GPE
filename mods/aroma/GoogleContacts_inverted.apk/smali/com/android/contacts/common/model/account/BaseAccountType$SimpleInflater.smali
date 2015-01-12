.class public Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;
.super Ljava/lang/Object;
.source "BaseAccountType.java"

# interfaces
.implements Lcom/android/contacts/common/model/account/AccountType$StringInflater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/account/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleInflater"
.end annotation


# instance fields
.field private final mColumnName:Ljava/lang/String;

.field private final mStringRes:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1    # I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1    # I
    .param p2    # Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;->mStringRes:I

    iput-object p2, p0, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;->mColumnName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    const/4 v0, -0x1

    invoke-direct {p0, v0, p1}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getColumnNameForTest()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;->mColumnName:Ljava/lang/String;

    return-object v0
.end method

.method public inflateUsing(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/CharSequence;
    .locals 8
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/ContentValues;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    iget-object v7, p0, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;->mColumnName:Ljava/lang/String;

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    iget v7, p0, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;->mStringRes:I

    if-lez v7, :cond_1

    move v3, v5

    :goto_0
    if-eqz v3, :cond_2

    iget v7, p0, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;->mStringRes:I

    invoke-virtual {p1, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_1
    if-eqz v2, :cond_3

    iget-object v7, p0, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;->mColumnName:Ljava/lang/String;

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_3
    return-object v1

    :cond_1
    move v3, v6

    goto :goto_0

    :cond_2
    move-object v1, v4

    goto :goto_1

    :cond_3
    move-object v0, v4

    goto :goto_2

    :cond_4
    if-nez v3, :cond_0

    if-eqz v2, :cond_5

    move-object v1, v0

    goto :goto_3

    :cond_5
    move-object v1, v4

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mStringRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;->mStringRes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mColumnName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;->mColumnName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
