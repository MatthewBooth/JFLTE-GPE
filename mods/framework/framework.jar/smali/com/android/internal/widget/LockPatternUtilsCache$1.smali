.class Lcom/android/internal/widget/LockPatternUtilsCache$1;
.super Lcom/android/internal/widget/ILockSettingsObserver$Stub;
.source "LockPatternUtilsCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternUtilsCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/LockPatternUtilsCache;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/LockPatternUtilsCache;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtilsCache$1;->this$0:Lcom/android/internal/widget/LockPatternUtilsCache;

    invoke-direct {p0}, Lcom/android/internal/widget/ILockSettingsObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onLockSettingChanged(Ljava/lang/String;I)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache$1;->this$0:Lcom/android/internal/widget/LockPatternUtilsCache;

    # invokes: Lcom/android/internal/widget/LockPatternUtilsCache;->invalidateCache(Ljava/lang/String;I)V
    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtilsCache;->access$100(Lcom/android/internal/widget/LockPatternUtilsCache;Ljava/lang/String;I)V

    return-void
.end method
