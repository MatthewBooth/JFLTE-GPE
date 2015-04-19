.class Lcom/google/android/gms/analytics/GAServiceManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/GAServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic yo:Lcom/google/android/gms/analytics/GAServiceManager;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/GAServiceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/GAServiceManager$1;->yo:Lcom/google/android/gms/analytics/GAServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public z(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/GAServiceManager$1;->yo:Lcom/google/android/gms/analytics/GAServiceManager;

    iget-object v1, p0, Lcom/google/android/gms/analytics/GAServiceManager$1;->yo:Lcom/google/android/gms/analytics/GAServiceManager;

    invoke-static {v1}, Lcom/google/android/gms/analytics/GAServiceManager;->a(Lcom/google/android/gms/analytics/GAServiceManager;)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/analytics/GAServiceManager;->a(ZZ)V

    return-void
.end method
