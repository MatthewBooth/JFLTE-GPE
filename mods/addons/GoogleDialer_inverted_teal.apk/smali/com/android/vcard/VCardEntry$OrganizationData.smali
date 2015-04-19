.class public Lcom/android/vcard/VCardEntry$OrganizationData;
.super Ljava/lang/Object;
.source "VCardEntry.java"

# interfaces
.implements Lcom/android/vcard/VCardEntry$EntryElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vcard/VCardEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OrganizationData"
.end annotation


# instance fields
.field private mDepartmentName:Ljava/lang/String;

.field private mIsPrimary:Z

.field private mOrganizationName:Ljava/lang/String;

.field private final mPhoneticName:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private final mType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # I
    .param p6    # Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p5, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mType:I

    iput-object p1, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mPhoneticName:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mIsPrimary:Z

    return-void
.end method

.method static synthetic access$100(Lcom/android/vcard/VCardEntry$OrganizationData;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/vcard/VCardEntry$OrganizationData;

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/vcard/VCardEntry$OrganizationData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/android/vcard/VCardEntry$OrganizationData;
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/vcard/VCardEntry$OrganizationData;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/vcard/VCardEntry$OrganizationData;

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/vcard/VCardEntry$OrganizationData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/android/vcard/VCardEntry$OrganizationData;
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/vcard/VCardEntry$OrganizationData;Z)Z
    .locals 0
    .param p0    # Lcom/android/vcard/VCardEntry$OrganizationData;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mIsPrimary:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/vcard/VCardEntry$OrganizationData;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/vcard/VCardEntry$OrganizationData;

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/vcard/VCardEntry$OrganizationData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/android/vcard/VCardEntry$OrganizationData;
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public constructInsertOperation(Ljava/util/List;I)V
    .locals 3
    .param p2    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I)V"
        }
    .end annotation

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/organization"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v1, "data2"

    iget v2, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "data1"

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    :cond_0
    iget-object v1, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "data5"

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    :cond_1
    iget-object v1, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, "data4"

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    :cond_2
    iget-object v1, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mPhoneticName:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, "data8"

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mPhoneticName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    :cond_3
    iget-boolean v1, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mIsPrimary:Z

    if-eqz v1, :cond_4

    const-string v1, "is_primary"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    :cond_4
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v3, p1, Lcom/android/vcard/VCardEntry$OrganizationData;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/android/vcard/VCardEntry$OrganizationData;

    iget v3, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mType:I

    iget v4, v0, Lcom/android/vcard/VCardEntry$OrganizationData;->mType:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mIsPrimary:Z

    iget-boolean v4, v0, Lcom/android/vcard/VCardEntry$OrganizationData;->mIsPrimary:Z

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public final getEntryLabel()Lcom/android/vcard/VCardEntry$EntryLabel;
    .locals 1

    sget-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->ORGANIZATION:Lcom/android/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public getFormattedString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public hashCode()I
    .locals 4

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mType:I

    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v3, v1

    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int v0, v3, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mIsPrimary:Z

    if-eqz v1, :cond_3

    const/16 v1, 0x4cf

    :goto_2
    add-int v0, v2, v1

    return v0

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    const/16 v1, 0x4d5

    goto :goto_2
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mPhoneticName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "type: %d, organization: %s, department: %s, title: %s, isPrimary: %s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-boolean v3, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mIsPrimary:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
