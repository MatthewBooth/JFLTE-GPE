.class final enum Lcom/android/systemui/recent/RecentTasksLoader$State;
.super Ljava/lang/Enum;
.source "RecentTasksLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/RecentTasksLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/systemui/recent/RecentTasksLoader$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/recent/RecentTasksLoader$State;

.field public static final enum CANCELLED:Lcom/android/systemui/recent/RecentTasksLoader$State;

.field public static final enum LOADED:Lcom/android/systemui/recent/RecentTasksLoader$State;

.field public static final enum LOADING:Lcom/android/systemui/recent/RecentTasksLoader$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/systemui/recent/RecentTasksLoader$State;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/RecentTasksLoader$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/recent/RecentTasksLoader$State;->LOADING:Lcom/android/systemui/recent/RecentTasksLoader$State;

    new-instance v0, Lcom/android/systemui/recent/RecentTasksLoader$State;

    const-string v1, "LOADED"

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/recent/RecentTasksLoader$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/recent/RecentTasksLoader$State;->LOADED:Lcom/android/systemui/recent/RecentTasksLoader$State;

    new-instance v0, Lcom/android/systemui/recent/RecentTasksLoader$State;

    const-string v1, "CANCELLED"

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/recent/RecentTasksLoader$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/recent/RecentTasksLoader$State;->CANCELLED:Lcom/android/systemui/recent/RecentTasksLoader$State;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/systemui/recent/RecentTasksLoader$State;

    sget-object v1, Lcom/android/systemui/recent/RecentTasksLoader$State;->LOADING:Lcom/android/systemui/recent/RecentTasksLoader$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/recent/RecentTasksLoader$State;->LOADED:Lcom/android/systemui/recent/RecentTasksLoader$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/recent/RecentTasksLoader$State;->CANCELLED:Lcom/android/systemui/recent/RecentTasksLoader$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/recent/RecentTasksLoader$State;->$VALUES:[Lcom/android/systemui/recent/RecentTasksLoader$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/recent/RecentTasksLoader$State;
    .locals 1
    .param p0    # Ljava/lang/String;

    const-class v0, Lcom/android/systemui/recent/RecentTasksLoader$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/RecentTasksLoader$State;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/recent/RecentTasksLoader$State;
    .locals 1

    sget-object v0, Lcom/android/systemui/recent/RecentTasksLoader$State;->$VALUES:[Lcom/android/systemui/recent/RecentTasksLoader$State;

    invoke-virtual {v0}, [Lcom/android/systemui/recent/RecentTasksLoader$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/recent/RecentTasksLoader$State;

    return-object v0
.end method
