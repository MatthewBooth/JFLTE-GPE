.class public Lcom/google/android/gms/internal/jx;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/jx$e;,
        Lcom/google/android/gms/internal/jx$c;,
        Lcom/google/android/gms/internal/jx$d;,
        Lcom/google/android/gms/internal/jx$b;,
        Lcom/google/android/gms/internal/jx$a;
    }
.end annotation


# static fields
.field public static final VP:Lcom/google/android/gms/internal/jx$a;

.field public static final VQ:Lcom/google/android/gms/internal/jx$b;

.field public static final VR:Lcom/google/android/gms/internal/jx$d;

.field public static final VS:Lcom/google/android/gms/internal/jx$c;

.field public static final VT:Lcom/google/android/gms/internal/jx$e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const v3, 0x3e8fa0

    new-instance v0, Lcom/google/android/gms/internal/jx$a;

    const-string v1, "created"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/jx$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/jx;->VP:Lcom/google/android/gms/internal/jx$a;

    new-instance v0, Lcom/google/android/gms/internal/jx$b;

    const-string v1, "lastOpenedTime"

    const v2, 0x419ce0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/jx$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/jx;->VQ:Lcom/google/android/gms/internal/jx$b;

    new-instance v0, Lcom/google/android/gms/internal/jx$d;

    const-string v1, "modified"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/jx$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/jx;->VR:Lcom/google/android/gms/internal/jx$d;

    new-instance v0, Lcom/google/android/gms/internal/jx$c;

    const-string v1, "modifiedByMe"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/jx$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/jx;->VS:Lcom/google/android/gms/internal/jx$c;

    new-instance v0, Lcom/google/android/gms/internal/jx$e;

    const-string v1, "sharedWithMe"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/jx$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/jx;->VT:Lcom/google/android/gms/internal/jx$e;

    return-void
.end method
