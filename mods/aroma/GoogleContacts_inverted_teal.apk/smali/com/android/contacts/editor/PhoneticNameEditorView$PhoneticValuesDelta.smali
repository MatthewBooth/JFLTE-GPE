.class Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;
.super Lcom/android/contacts/common/model/ValuesDelta;
.source "PhoneticNameEditorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/PhoneticNameEditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PhoneticValuesDelta"
.end annotation


# instance fields
.field private mPhoneticName:Ljava/lang/String;

.field private mValues:Lcom/android/contacts/common/model/ValuesDelta;


# direct methods
.method public constructor <init>(Lcom/android/contacts/common/model/ValuesDelta;)V
    .locals 0
    .param p1    # Lcom/android/contacts/common/model/ValuesDelta;

    invoke-direct {p0}, Lcom/android/contacts/common/model/ValuesDelta;-><init>()V

    iput-object p1, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-direct {p0}, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->buildPhoneticName()V

    return-void
.end method

.method private buildPhoneticName()V
    .locals 4

    iget-object v3, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v3}, Lcom/android/contacts/common/model/ValuesDelta;->getPhoneticFamilyName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v3}, Lcom/android/contacts/common/model/ValuesDelta;->getPhoneticMiddleName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v3}, Lcom/android/contacts/common/model/ValuesDelta;->getPhoneticGivenName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/android/contacts/common/util/NameConverter;->buildPhoneticName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mPhoneticName:Ljava/lang/String;

    return-void
.end method

.method private parsePhoneticName(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/contacts/common/util/NameConverter;->parsePhoneticName(Ljava/lang/String;Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;)Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;->getPhoneticFamilyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/model/ValuesDelta;->setPhoneticFamilyName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;->getPhoneticMiddleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/model/ValuesDelta;->setPhoneticMiddleName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;->getPhoneticGivenName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/model/ValuesDelta;->setPhoneticGivenName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;

    const-string v0, "#phoneticName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mPhoneticName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public isVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->isVisible()Z

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    const-string v0, "#phoneticName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p2, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mPhoneticName:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->parsePhoneticName(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->buildPhoneticName()V

    goto :goto_0
.end method
