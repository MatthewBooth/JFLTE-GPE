.class public Lcom/google/android/gms/drive/metadata/internal/i;
.super Lcom/google/android/gms/drive/metadata/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/Parcelable;",
        ">",
        "Lcom/google/android/gms/drive/metadata/b",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/google/android/gms/drive/metadata/b;-><init>(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;I)V

    return-void
.end method


# virtual methods
.method protected synthetic h(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/metadata/internal/i;->m(Landroid/os/Bundle;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected m(Landroid/os/Bundle;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/internal/i;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
