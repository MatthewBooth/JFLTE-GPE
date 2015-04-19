.class Lcom/google/android/gms/analytics/GAThread$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/analytics/GAThread;->setForceLocalDispatch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic yZ:Lcom/google/android/gms/analytics/GAThread;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/GAThread;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/GAThread$4;->yZ:Lcom/google/android/gms/analytics/GAThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/GAThread$4;->yZ:Lcom/google/android/gms/analytics/GAThread;

    invoke-static {v0}, Lcom/google/android/gms/analytics/GAThread;->d(Lcom/google/android/gms/analytics/GAThread;)Lcom/google/android/gms/analytics/ad;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/analytics/ad;->setForceLocalDispatch()V

    return-void
.end method
