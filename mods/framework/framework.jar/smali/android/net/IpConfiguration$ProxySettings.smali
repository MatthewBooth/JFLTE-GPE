.class public final enum Landroid/net/IpConfiguration$ProxySettings;
.super Ljava/lang/Enum;
.source "IpConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IpConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProxySettings"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/net/IpConfiguration$ProxySettings;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/IpConfiguration$ProxySettings;

.field public static final enum NONE:Landroid/net/IpConfiguration$ProxySettings;

.field public static final enum PAC:Landroid/net/IpConfiguration$ProxySettings;

.field public static final enum STATIC:Landroid/net/IpConfiguration$ProxySettings;

.field public static final enum UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/net/IpConfiguration$ProxySettings;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Landroid/net/IpConfiguration$ProxySettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    new-instance v0, Landroid/net/IpConfiguration$ProxySettings;

    const-string v1, "STATIC"

    invoke-direct {v0, v1, v3}, Landroid/net/IpConfiguration$ProxySettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    new-instance v0, Landroid/net/IpConfiguration$ProxySettings;

    const-string v1, "UNASSIGNED"

    invoke-direct {v0, v1, v4}, Landroid/net/IpConfiguration$ProxySettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    new-instance v0, Landroid/net/IpConfiguration$ProxySettings;

    const-string v1, "PAC"

    invoke-direct {v0, v1, v5}, Landroid/net/IpConfiguration$ProxySettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/net/IpConfiguration$ProxySettings;

    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    aput-object v1, v0, v3

    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    aput-object v1, v0, v4

    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    aput-object v1, v0, v5

    sput-object v0, Landroid/net/IpConfiguration$ProxySettings;->$VALUES:[Landroid/net/IpConfiguration$ProxySettings;

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

.method public static valueOf(Ljava/lang/String;)Landroid/net/IpConfiguration$ProxySettings;
    .locals 1
    .param p0    # Ljava/lang/String;

    const-class v0, Landroid/net/IpConfiguration$ProxySettings;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/net/IpConfiguration$ProxySettings;

    return-object v0
.end method

.method public static values()[Landroid/net/IpConfiguration$ProxySettings;
    .locals 1

    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->$VALUES:[Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v0}, [Landroid/net/IpConfiguration$ProxySettings;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/IpConfiguration$ProxySettings;

    return-object v0
.end method
