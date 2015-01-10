.class public interface abstract Lcom/android/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;
.super Ljava/lang/Object;
.source "RecentsPackageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/model/RecentsPackageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PackageCallbacks"
.end annotation


# virtual methods
.method public abstract onComponentRemoved(Ljava/util/HashSet;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation
.end method
