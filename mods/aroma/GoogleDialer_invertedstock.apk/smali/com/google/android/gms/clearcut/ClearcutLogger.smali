.class public final Lcom/google/android/gms/clearcut/ClearcutLogger;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/clearcut/ClearcutLogger$MessageProducer;
    }
.end annotation


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api;

.field public static final CLIENT_BUILDER:Lcom/google/android/gms/common/api/Api$b;

.field public static final CLIENT_KEY:Lcom/google/android/gms/common/api/Api$c;

.field public static final ClearcutLoggerApi:Lcom/google/android/gms/clearcut/ClearcutLoggerApi;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Api$c;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$c;-><init>()V

    sput-object v0, Lcom/google/android/gms/clearcut/ClearcutLogger;->CLIENT_KEY:Lcom/google/android/gms/common/api/Api$c;

    new-instance v0, Lcom/google/android/gms/clearcut/ClearcutLogger$1;

    invoke-direct {v0}, Lcom/google/android/gms/clearcut/ClearcutLogger$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/clearcut/ClearcutLogger;->CLIENT_BUILDER:Lcom/google/android/gms/common/api/Api$b;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    sget-object v1, Lcom/google/android/gms/clearcut/ClearcutLogger;->CLIENT_BUILDER:Lcom/google/android/gms/common/api/Api$b;

    sget-object v2, Lcom/google/android/gms/clearcut/ClearcutLogger;->CLIENT_KEY:Lcom/google/android/gms/common/api/Api$c;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/google/android/gms/common/api/Scope;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Lcom/google/android/gms/common/api/Api$b;Lcom/google/android/gms/common/api/Api$c;[Lcom/google/android/gms/common/api/Scope;)V

    sput-object v0, Lcom/google/android/gms/clearcut/ClearcutLogger;->API:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/internal/jb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/jb;-><init>()V

    sput-object v0, Lcom/google/android/gms/clearcut/ClearcutLogger;->ClearcutLoggerApi:Lcom/google/android/gms/clearcut/ClearcutLoggerApi;

    return-void
.end method
