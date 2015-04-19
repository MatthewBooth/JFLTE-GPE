.class public final enum Lcom/google/android/gtalkservice/Presence$Show;
.super Ljava/lang/Enum;
.source "Presence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gtalkservice/Presence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Show"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gtalkservice/Presence$Show;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/gtalkservice/Presence$Show;

.field public static final enum AVAILABLE:Lcom/google/android/gtalkservice/Presence$Show;

.field public static final enum AWAY:Lcom/google/android/gtalkservice/Presence$Show;

.field public static final enum DND:Lcom/google/android/gtalkservice/Presence$Show;

.field public static final enum EXTENDED_AWAY:Lcom/google/android/gtalkservice/Presence$Show;

.field public static final enum NONE:Lcom/google/android/gtalkservice/Presence$Show;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gtalkservice/Presence$Show;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gtalkservice/Presence$Show;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gtalkservice/Presence$Show;->NONE:Lcom/google/android/gtalkservice/Presence$Show;

    new-instance v0, Lcom/google/android/gtalkservice/Presence$Show;

    const-string v1, "AWAY"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gtalkservice/Presence$Show;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gtalkservice/Presence$Show;->AWAY:Lcom/google/android/gtalkservice/Presence$Show;

    new-instance v0, Lcom/google/android/gtalkservice/Presence$Show;

    const-string v1, "EXTENDED_AWAY"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gtalkservice/Presence$Show;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gtalkservice/Presence$Show;->EXTENDED_AWAY:Lcom/google/android/gtalkservice/Presence$Show;

    new-instance v0, Lcom/google/android/gtalkservice/Presence$Show;

    const-string v1, "DND"

    invoke-direct {v0, v1, v5}, Lcom/google/android/gtalkservice/Presence$Show;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gtalkservice/Presence$Show;->DND:Lcom/google/android/gtalkservice/Presence$Show;

    new-instance v0, Lcom/google/android/gtalkservice/Presence$Show;

    const-string v1, "AVAILABLE"

    invoke-direct {v0, v1, v6}, Lcom/google/android/gtalkservice/Presence$Show;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gtalkservice/Presence$Show;->AVAILABLE:Lcom/google/android/gtalkservice/Presence$Show;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/gtalkservice/Presence$Show;

    sget-object v1, Lcom/google/android/gtalkservice/Presence$Show;->NONE:Lcom/google/android/gtalkservice/Presence$Show;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gtalkservice/Presence$Show;->AWAY:Lcom/google/android/gtalkservice/Presence$Show;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gtalkservice/Presence$Show;->EXTENDED_AWAY:Lcom/google/android/gtalkservice/Presence$Show;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gtalkservice/Presence$Show;->DND:Lcom/google/android/gtalkservice/Presence$Show;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gtalkservice/Presence$Show;->AVAILABLE:Lcom/google/android/gtalkservice/Presence$Show;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/gtalkservice/Presence$Show;->$VALUES:[Lcom/google/android/gtalkservice/Presence$Show;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gtalkservice/Presence$Show;
    .locals 1
    .param p0    # Ljava/lang/String;

    const-class v0, Lcom/google/android/gtalkservice/Presence$Show;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/gtalkservice/Presence$Show;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gtalkservice/Presence$Show;
    .locals 1

    sget-object v0, Lcom/google/android/gtalkservice/Presence$Show;->$VALUES:[Lcom/google/android/gtalkservice/Presence$Show;

    invoke-virtual {v0}, [Lcom/google/android/gtalkservice/Presence$Show;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gtalkservice/Presence$Show;

    return-object v0
.end method
