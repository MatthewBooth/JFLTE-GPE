.class abstract enum Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;
.super Ljava/lang/Enum;
.source "ContextAwarePropertyBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "PropertyType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

.field public static final enum BOOLEAN_TYPE:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

.field public static final enum DOUBLE_TYPE:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

.field public static final enum FLOAT_TYPE:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

.field public static final enum INTEGER_TYPE:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

.field public static final enum LONG_TYPE:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

.field public static final enum STRING_TYPE:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType$1;

    const-string v1, "BOOLEAN_TYPE"

    invoke-direct {v0, v1, v3}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->BOOLEAN_TYPE:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    new-instance v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType$2;

    const-string v1, "INTEGER_TYPE"

    invoke-direct {v0, v1, v4}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->INTEGER_TYPE:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    new-instance v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType$3;

    const-string v1, "LONG_TYPE"

    invoke-direct {v0, v1, v5}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->LONG_TYPE:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    new-instance v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType$4;

    const-string v1, "FLOAT_TYPE"

    invoke-direct {v0, v1, v6}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->FLOAT_TYPE:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    new-instance v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType$5;

    const-string v1, "DOUBLE_TYPE"

    invoke-direct {v0, v1, v7}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->DOUBLE_TYPE:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    new-instance v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType$6;

    const-string v1, "STRING_TYPE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->STRING_TYPE:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    const/4 v0, 0x6

    new-array v0, v0, [Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    sget-object v1, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->BOOLEAN_TYPE:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->INTEGER_TYPE:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    aput-object v1, v0, v4

    sget-object v1, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->LONG_TYPE:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    aput-object v1, v0, v5

    sget-object v1, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->FLOAT_TYPE:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    aput-object v1, v0, v6

    sget-object v1, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->DOUBLE_TYPE:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->STRING_TYPE:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    aput-object v2, v0, v1

    sput-object v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->$VALUES:[Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

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

.method synthetic constructor <init>(Ljava/lang/String;ILandroid/hardware/contextaware/manager/ContextAwarePropertyBundle$1;)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$1;

    invoke-direct {p0, p1, p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;
    .locals 1
    .param p0    # Ljava/lang/String;

    const-class v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    return-object v0
.end method

.method public static values()[Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;
    .locals 1

    sget-object v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->$VALUES:[Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, [Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    return-object v0
.end method


# virtual methods
.method protected getCode()I
    .locals 1

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->ordinal()I

    move-result v0

    return v0
.end method

.method abstract getValue()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()TE;"
        }
    .end annotation
.end method

.method abstract setValue(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation
.end method
