.class Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;
.super Ljava/lang/Object;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/account/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KindParser"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;


# instance fields
.field private final mBuilders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;

    invoke-direct {v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;-><init>()V

    sput-object v0, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->INSTANCE:Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->mBuilders:Ljava/util/Map;

    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$NameKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$NameKindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$1;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->addBuilder(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V

    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$NicknameKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$NicknameKindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$1;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->addBuilder(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V

    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$PhoneKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$PhoneKindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$1;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->addBuilder(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V

    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$EmailKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$EmailKindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$1;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->addBuilder(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V

    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$StructuredPostalKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$StructuredPostalKindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$1;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->addBuilder(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V

    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$ImKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$ImKindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$1;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->addBuilder(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V

    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$OrganizationKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$OrganizationKindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$1;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->addBuilder(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V

    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$PhotoKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$PhotoKindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$1;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->addBuilder(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V

    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$NoteKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$NoteKindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$1;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->addBuilder(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V

    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$WebsiteKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$WebsiteKindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$1;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->addBuilder(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V

    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$SipAddressKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$SipAddressKindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$1;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->addBuilder(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V

    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$GroupMembershipKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$GroupMembershipKindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$1;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->addBuilder(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V

    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$EventKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$EventKindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$1;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->addBuilder(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V

    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$RelationshipKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$RelationshipKindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$1;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->addBuilder(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V

    return-void
.end method

.method private addBuilder(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V
    .locals 2
    .param p1    # Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;

    iget-object v0, p0, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->mBuilders:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;->getTagName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public parseDataKindTag(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Ljava/util/List;
    .locals 5
    .param p1    # Landroid/content/Context;
    .param p2    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/util/AttributeSet;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/dataitem/DataKind;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v2, "kind"

    # invokes: Lcom/android/contacts/common/model/account/BaseAccountType;->getAttr(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p3, v2}, Lcom/android/contacts/common/model/account/BaseAccountType;->access$1400(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->mBuilders:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;->parseDataKind(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Ljava/util/List;

    move-result-object v2

    return-object v2

    :cond_0
    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$DefinitionException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Undefined data kind \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/contacts/common/model/account/AccountType$DefinitionException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
