.class Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher$1;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;->dispatchRotationChanged()V

    return-void
.end method
