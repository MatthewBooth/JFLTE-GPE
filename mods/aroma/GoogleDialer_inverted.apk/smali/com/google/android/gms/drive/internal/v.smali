.class public final Lcom/google/android/gms/drive/internal/v;
.super Ljava/lang/Object;


# static fields
.field private static final Ur:Lcom/google/android/gms/common/internal/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/internal/i;

    const-string v1, "GmsDrive"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/internal/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/drive/internal/v;->Ur:Lcom/google/android/gms/common/internal/i;

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/drive/internal/v;->Ur:Lcom/google/android/gms/common/internal/i;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/common/internal/i;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
