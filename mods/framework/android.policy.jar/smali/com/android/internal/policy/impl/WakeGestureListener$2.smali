.class Lcom/android/internal/policy/impl/WakeGestureListener$2;
.super Ljava/lang/Object;
.source "WakeGestureListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/WakeGestureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/WakeGestureListener;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/WakeGestureListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/WakeGestureListener$2;->this$0:Lcom/android/internal/policy/impl/WakeGestureListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/WakeGestureListener$2;->this$0:Lcom/android/internal/policy/impl/WakeGestureListener;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/WakeGestureListener;->onWakeUp()V

    return-void
.end method
