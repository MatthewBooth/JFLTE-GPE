.class Lcom/android/server/pm/PackagePrefetcher$2;
.super Ljava/lang/Object;
.source "PackagePrefetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackagePrefetcher;->prefetchPermissionsInner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackagePrefetcher;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackagePrefetcher;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PackagePrefetcher$2;->this$0:Lcom/android/server/pm/PackagePrefetcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/server/pm/PackagePrefetcher$2;->this$0:Lcom/android/server/pm/PackagePrefetcher;

    # setter for: Lcom/android/server/pm/PackagePrefetcher;->mReadPermissionsStarted:Z
    invoke-static {v0, v1}, Lcom/android/server/pm/PackagePrefetcher;->access$502(Lcom/android/server/pm/PackagePrefetcher;Z)Z

    iget-object v0, p0, Lcom/android/server/pm/PackagePrefetcher$2;->this$0:Lcom/android/server/pm/PackagePrefetcher;

    # invokes: Lcom/android/server/pm/PackagePrefetcher;->readPermissions()V
    invoke-static {v0}, Lcom/android/server/pm/PackagePrefetcher;->access$600(Lcom/android/server/pm/PackagePrefetcher;)V

    iget-object v0, p0, Lcom/android/server/pm/PackagePrefetcher$2;->this$0:Lcom/android/server/pm/PackagePrefetcher;

    # setter for: Lcom/android/server/pm/PackagePrefetcher;->mReadPermissionsFinished:Z
    invoke-static {v0, v1}, Lcom/android/server/pm/PackagePrefetcher;->access$702(Lcom/android/server/pm/PackagePrefetcher;Z)Z

    return-void
.end method
