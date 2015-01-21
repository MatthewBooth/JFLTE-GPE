.class public final Lcom/google/android/gms/maps/model/BitmapDescriptor;
.super Ljava/lang/Object;


# instance fields
.field private final arM:Lcom/google/android/gms/dynamic/d;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/dynamic/d;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/dynamic/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/dynamic/d;

    iput-object v0, p0, Lcom/google/android/gms/maps/model/BitmapDescriptor;->arM:Lcom/google/android/gms/dynamic/d;

    return-void
.end method


# virtual methods
.method public nm()Lcom/google/android/gms/dynamic/d;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/BitmapDescriptor;->arM:Lcom/google/android/gms/dynamic/d;

    return-object v0
.end method
