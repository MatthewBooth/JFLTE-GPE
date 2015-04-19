.class public final enum Lcom/android/contacts/group/GroupEditorFragment$Status;
.super Ljava/lang/Enum;
.source "GroupEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/group/GroupEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/contacts/group/GroupEditorFragment$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/contacts/group/GroupEditorFragment$Status;

.field public static final enum CLOSING:Lcom/android/contacts/group/GroupEditorFragment$Status;

.field public static final enum EDITING:Lcom/android/contacts/group/GroupEditorFragment$Status;

.field public static final enum LOADING:Lcom/android/contacts/group/GroupEditorFragment$Status;

.field public static final enum SAVING:Lcom/android/contacts/group/GroupEditorFragment$Status;

.field public static final enum SELECTING_ACCOUNT:Lcom/android/contacts/group/GroupEditorFragment$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/contacts/group/GroupEditorFragment$Status;

    const-string v1, "SELECTING_ACCOUNT"

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/group/GroupEditorFragment$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/group/GroupEditorFragment$Status;->SELECTING_ACCOUNT:Lcom/android/contacts/group/GroupEditorFragment$Status;

    new-instance v0, Lcom/android/contacts/group/GroupEditorFragment$Status;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v3}, Lcom/android/contacts/group/GroupEditorFragment$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/group/GroupEditorFragment$Status;->LOADING:Lcom/android/contacts/group/GroupEditorFragment$Status;

    new-instance v0, Lcom/android/contacts/group/GroupEditorFragment$Status;

    const-string v1, "EDITING"

    invoke-direct {v0, v1, v4}, Lcom/android/contacts/group/GroupEditorFragment$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/group/GroupEditorFragment$Status;->EDITING:Lcom/android/contacts/group/GroupEditorFragment$Status;

    new-instance v0, Lcom/android/contacts/group/GroupEditorFragment$Status;

    const-string v1, "SAVING"

    invoke-direct {v0, v1, v5}, Lcom/android/contacts/group/GroupEditorFragment$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/group/GroupEditorFragment$Status;->SAVING:Lcom/android/contacts/group/GroupEditorFragment$Status;

    new-instance v0, Lcom/android/contacts/group/GroupEditorFragment$Status;

    const-string v1, "CLOSING"

    invoke-direct {v0, v1, v6}, Lcom/android/contacts/group/GroupEditorFragment$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/group/GroupEditorFragment$Status;->CLOSING:Lcom/android/contacts/group/GroupEditorFragment$Status;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/contacts/group/GroupEditorFragment$Status;

    sget-object v1, Lcom/android/contacts/group/GroupEditorFragment$Status;->SELECTING_ACCOUNT:Lcom/android/contacts/group/GroupEditorFragment$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/contacts/group/GroupEditorFragment$Status;->LOADING:Lcom/android/contacts/group/GroupEditorFragment$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/contacts/group/GroupEditorFragment$Status;->EDITING:Lcom/android/contacts/group/GroupEditorFragment$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/contacts/group/GroupEditorFragment$Status;->SAVING:Lcom/android/contacts/group/GroupEditorFragment$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/contacts/group/GroupEditorFragment$Status;->CLOSING:Lcom/android/contacts/group/GroupEditorFragment$Status;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/contacts/group/GroupEditorFragment$Status;->$VALUES:[Lcom/android/contacts/group/GroupEditorFragment$Status;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/contacts/group/GroupEditorFragment$Status;
    .locals 1
    .param p0    # Ljava/lang/String;

    const-class v0, Lcom/android/contacts/group/GroupEditorFragment$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/group/GroupEditorFragment$Status;

    return-object v0
.end method

.method public static values()[Lcom/android/contacts/group/GroupEditorFragment$Status;
    .locals 1

    sget-object v0, Lcom/android/contacts/group/GroupEditorFragment$Status;->$VALUES:[Lcom/android/contacts/group/GroupEditorFragment$Status;

    invoke-virtual {v0}, [Lcom/android/contacts/group/GroupEditorFragment$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/contacts/group/GroupEditorFragment$Status;

    return-object v0
.end method
