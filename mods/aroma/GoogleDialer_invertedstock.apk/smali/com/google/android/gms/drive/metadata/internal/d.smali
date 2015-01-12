.class public Lcom/google/android/gms/drive/metadata/internal/d;
.super Lcom/google/android/gms/drive/metadata/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/drive/metadata/d",
        "<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/drive/metadata/d;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected synthetic h(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/metadata/internal/d;->j(Landroid/os/Bundle;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method protected j(Landroid/os/Bundle;)Ljava/util/Date;
    .locals 4

    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/internal/d;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method
