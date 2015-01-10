.class final enum Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
.super Ljava/lang/Enum;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "UnifiedRestoreState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

.field public static final enum FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

.field public static final enum INITIAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

.field public static final enum RESTORE_FINISHED:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

.field public static final enum RESTORE_FULL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

.field public static final enum RESTORE_KEYVALUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

.field public static final enum RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    const-string v1, "INITIAL"

    invoke-direct {v0, v1, v3}, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->INITIAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    new-instance v0, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    const-string v1, "RUNNING_QUEUE"

    invoke-direct {v0, v1, v4}, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    new-instance v0, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    const-string v1, "RESTORE_KEYVALUE"

    invoke-direct {v0, v1, v5}, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RESTORE_KEYVALUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    new-instance v0, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    const-string v1, "RESTORE_FULL"

    invoke-direct {v0, v1, v6}, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RESTORE_FULL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    new-instance v0, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    const-string v1, "RESTORE_FINISHED"

    invoke-direct {v0, v1, v7}, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RESTORE_FINISHED:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    new-instance v0, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    const-string v1, "FINAL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    sget-object v1, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->INITIAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RESTORE_KEYVALUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RESTORE_FULL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RESTORE_FINISHED:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->$VALUES:[Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    .locals 1
    .param p0    # Ljava/lang/String;

    const-class v0, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    return-object v0
.end method

.method public static values()[Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    .locals 1

    sget-object v0, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->$VALUES:[Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {v0}, [Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    return-object v0
.end method
