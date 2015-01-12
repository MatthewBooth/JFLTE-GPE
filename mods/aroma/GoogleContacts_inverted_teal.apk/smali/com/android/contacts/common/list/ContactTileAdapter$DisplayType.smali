.class public final enum Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;
.super Ljava/lang/Enum;
.source "ContactTileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/list/ContactTileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisplayType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

.field public static final enum FREQUENT_ONLY:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

.field public static final enum GROUP_MEMBERS:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

.field public static final enum STARRED_ONLY:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

.field public static final enum STREQUENT:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    const-string v1, "STREQUENT"

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->STREQUENT:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    new-instance v0, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    const-string v1, "STARRED_ONLY"

    invoke-direct {v0, v1, v3}, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->STARRED_ONLY:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    new-instance v0, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    const-string v1, "FREQUENT_ONLY"

    invoke-direct {v0, v1, v4}, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->FREQUENT_ONLY:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    new-instance v0, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    const-string v1, "GROUP_MEMBERS"

    invoke-direct {v0, v1, v5}, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->GROUP_MEMBERS:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    sget-object v1, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->STREQUENT:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->STARRED_ONLY:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->FREQUENT_ONLY:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->GROUP_MEMBERS:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->$VALUES:[Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;
    .locals 1
    .param p0    # Ljava/lang/String;

    const-class v0, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    return-object v0
.end method

.method public static values()[Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;
    .locals 1

    sget-object v0, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->$VALUES:[Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v0}, [Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    return-object v0
.end method
