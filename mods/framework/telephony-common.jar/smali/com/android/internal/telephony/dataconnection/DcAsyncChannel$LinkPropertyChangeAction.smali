.class public final enum Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;
.super Ljava/lang/Enum;
.source "DcAsyncChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LinkPropertyChangeAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;

.field public static final enum CHANGED:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;

.field public static final enum NONE:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;

.field public static final enum RESET:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;->NONE:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;

    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;

    const-string v1, "CHANGED"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;->CHANGED:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;

    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;

    const-string v1, "RESET"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;->RESET:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;->NONE:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;->CHANGED:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;->RESET:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;->$VALUES:[Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;

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

.method public static fromInt(I)Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;
    .locals 3
    .param p0    # I

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;->NONE:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;->NONE:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;->CHANGED:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;->CHANGED:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;->RESET:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_2

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;->RESET:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LinkPropertyChangeAction.fromInt: bad value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;
    .locals 1
    .param p0    # Ljava/lang/String;

    const-class v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;->$VALUES:[Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;

    return-object v0
.end method
