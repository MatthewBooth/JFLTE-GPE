.class public Lcom/google/android/gms/internal/pn;
.super Ljava/lang/Object;


# static fields
.field public static final avV:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static avW:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<*>;"
        }
    .end annotation
.end field

.field public static final avX:Landroid/os/Handler;

.field public static final avY:[Ljava/lang/String;

.field public static final avZ:Ljava/util/regex/Pattern;

.field public static final awa:Ljava/util/regex/Pattern;

.field public static final awb:Ljava/security/SecureRandom;

.field private static final awc:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private static final awd:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final awe:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final awf:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final awg:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final awh:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/pn$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/pn$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/pn;->avV:Ljava/util/Map;

    new-instance v0, Lcom/google/android/gms/internal/pc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/pc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/pn;->avW:Ljava/lang/Iterable;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/android/gms/internal/pn;->avX:Landroid/os/Handler;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/pn;->avY:[Ljava/lang/String;

    const-string v0, "\\,"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/pn;->avZ:Ljava/util/regex/Pattern;

    const-string v0, "[\u2028\u2029 \u00a0\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\t\u000b\u000c\u001c\u001d\u001e\u001f\n\r]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/pn;->awa:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/pn;->awb:Ljava/security/SecureRandom;

    new-instance v0, Lcom/google/android/gms/internal/pn$2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/pn$2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/pn;->awc:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/google/android/gms/internal/pn$3;

    invoke-direct {v0}, Lcom/google/android/gms/internal/pn$3;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/pn;->awd:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/google/android/gms/internal/pn$4;

    invoke-direct {v0}, Lcom/google/android/gms/internal/pn$4;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/pn;->awe:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/google/android/gms/internal/pn$5;

    invoke-direct {v0}, Lcom/google/android/gms/internal/pn$5;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/pn;->awf:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/google/android/gms/internal/pn$6;

    invoke-direct {v0}, Lcom/google/android/gms/internal/pn$6;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/pn;->awg:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/google/android/gms/internal/pn$7;

    invoke-direct {v0}, Lcom/google/android/gms/internal/pn$7;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/pn;->awh:Ljava/lang/ThreadLocal;

    return-void
.end method
