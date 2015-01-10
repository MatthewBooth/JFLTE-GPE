.class public Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;
.super Ljava/lang/Object;
.source "PackageManagerBackupAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/PackageManagerBackupAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Metadata"
.end annotation


# instance fields
.field public sigHashes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/backup/PackageManagerBackupAgent;

.field public versionCode:I


# direct methods
.method constructor <init>(Lcom/android/server/backup/PackageManagerBackupAgent;ILjava/util/ArrayList;)V
    .locals 0
    .param p2    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->this$0:Lcom/android/server/backup/PackageManagerBackupAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:I

    iput-object p3, p0, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->sigHashes:Ljava/util/ArrayList;

    return-void
.end method
