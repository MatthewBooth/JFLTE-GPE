.class Lcom/android/contacts/common/model/ContactLoader$DirectoryQuery;
.super Ljava/lang/Object;
.source "ContactLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/ContactLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DirectoryQuery"
.end annotation


# static fields
.field static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "displayName"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "packageName"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "typeResourceId"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "accountType"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "accountName"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "exportSupport"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/common/model/ContactLoader$DirectoryQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method
