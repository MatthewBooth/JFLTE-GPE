.class Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;
.super Ljava/lang/Object;
.source "RecentApplicationsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/RecentApplicationsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecentTag"
.end annotation


# instance fields
.field info:Landroid/app/ActivityManager$RecentTaskInfo;

.field intent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/internal/policy/impl/RecentApplicationsDialog;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/RecentApplicationsDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;->this$0:Lcom/android/internal/policy/impl/RecentApplicationsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
