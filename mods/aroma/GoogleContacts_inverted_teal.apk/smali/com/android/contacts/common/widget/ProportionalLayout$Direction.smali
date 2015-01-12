.class public final enum Lcom/android/contacts/common/widget/ProportionalLayout$Direction;
.super Ljava/lang/Enum;
.source "ProportionalLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/widget/ProportionalLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/contacts/common/widget/ProportionalLayout$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/contacts/common/widget/ProportionalLayout$Direction;

.field public static final enum heightToWidth:Lcom/android/contacts/common/widget/ProportionalLayout$Direction;

.field public static final enum widthToHeight:Lcom/android/contacts/common/widget/ProportionalLayout$Direction;


# instance fields
.field public final XmlName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/contacts/common/widget/ProportionalLayout$Direction;

    const-string v1, "widthToHeight"

    const-string v2, "widthToHeight"

    invoke-direct {v0, v1, v3, v2}, Lcom/android/contacts/common/widget/ProportionalLayout$Direction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/contacts/common/widget/ProportionalLayout$Direction;->widthToHeight:Lcom/android/contacts/common/widget/ProportionalLayout$Direction;

    new-instance v0, Lcom/android/contacts/common/widget/ProportionalLayout$Direction;

    const-string v1, "heightToWidth"

    const-string v2, "heightToWidth"

    invoke-direct {v0, v1, v4, v2}, Lcom/android/contacts/common/widget/ProportionalLayout$Direction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/contacts/common/widget/ProportionalLayout$Direction;->heightToWidth:Lcom/android/contacts/common/widget/ProportionalLayout$Direction;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/contacts/common/widget/ProportionalLayout$Direction;

    sget-object v1, Lcom/android/contacts/common/widget/ProportionalLayout$Direction;->widthToHeight:Lcom/android/contacts/common/widget/ProportionalLayout$Direction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/contacts/common/widget/ProportionalLayout$Direction;->heightToWidth:Lcom/android/contacts/common/widget/ProportionalLayout$Direction;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/contacts/common/widget/ProportionalLayout$Direction;->$VALUES:[Lcom/android/contacts/common/widget/ProportionalLayout$Direction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/contacts/common/widget/ProportionalLayout$Direction;->XmlName:Ljava/lang/String;

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/android/contacts/common/widget/ProportionalLayout$Direction;
    .locals 3
    .param p0    # Ljava/lang/String;

    sget-object v0, Lcom/android/contacts/common/widget/ProportionalLayout$Direction;->widthToHeight:Lcom/android/contacts/common/widget/ProportionalLayout$Direction;

    iget-object v0, v0, Lcom/android/contacts/common/widget/ProportionalLayout$Direction;->XmlName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/contacts/common/widget/ProportionalLayout$Direction;->widthToHeight:Lcom/android/contacts/common/widget/ProportionalLayout$Direction;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/contacts/common/widget/ProportionalLayout$Direction;->heightToWidth:Lcom/android/contacts/common/widget/ProportionalLayout$Direction;

    iget-object v0, v0, Lcom/android/contacts/common/widget/ProportionalLayout$Direction;->XmlName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/contacts/common/widget/ProportionalLayout$Direction;->heightToWidth:Lcom/android/contacts/common/widget/ProportionalLayout$Direction;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "direction must be either "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/contacts/common/widget/ProportionalLayout$Direction;->widthToHeight:Lcom/android/contacts/common/widget/ProportionalLayout$Direction;

    iget-object v2, v2, Lcom/android/contacts/common/widget/ProportionalLayout$Direction;->XmlName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/contacts/common/widget/ProportionalLayout$Direction;->heightToWidth:Lcom/android/contacts/common/widget/ProportionalLayout$Direction;

    iget-object v2, v2, Lcom/android/contacts/common/widget/ProportionalLayout$Direction;->XmlName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/contacts/common/widget/ProportionalLayout$Direction;
    .locals 1
    .param p0    # Ljava/lang/String;

    const-class v0, Lcom/android/contacts/common/widget/ProportionalLayout$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/widget/ProportionalLayout$Direction;

    return-object v0
.end method

.method public static values()[Lcom/android/contacts/common/widget/ProportionalLayout$Direction;
    .locals 1

    sget-object v0, Lcom/android/contacts/common/widget/ProportionalLayout$Direction;->$VALUES:[Lcom/android/contacts/common/widget/ProportionalLayout$Direction;

    invoke-virtual {v0}, [Lcom/android/contacts/common/widget/ProportionalLayout$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/contacts/common/widget/ProportionalLayout$Direction;

    return-object v0
.end method
