.class public Lcom/google/android/gms/drive/metadata/internal/g;
.super Lcom/google/android/gms/drive/metadata/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/drive/metadata/a",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/drive/metadata/a;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected synthetic h(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/metadata/internal/g;->l(Landroid/os/Bundle;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected l(Landroid/os/Bundle;)Ljava/lang/Long;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/internal/g;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
