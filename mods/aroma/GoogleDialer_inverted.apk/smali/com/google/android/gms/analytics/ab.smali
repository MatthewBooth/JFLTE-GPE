.class Lcom/google/android/gms/analytics/ab;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/l;


# static fields
.field private static Bg:Lcom/google/android/gms/analytics/ab;

.field private static xy:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/analytics/ab;->xy:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/analytics/ab;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static eL()Lcom/google/android/gms/analytics/ab;
    .locals 2

    sget-object v1, Lcom/google/android/gms/analytics/ab;->xy:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/analytics/ab;->Bg:Lcom/google/android/gms/analytics/ab;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static y(Landroid/content/Context;)V
    .locals 2

    sget-object v1, Lcom/google/android/gms/analytics/ab;->xy:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/analytics/ab;->Bg:Lcom/google/android/gms/analytics/ab;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/analytics/ab;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/ab;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/analytics/ab;->Bg:Lcom/google/android/gms/analytics/ab;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected eM()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/analytics/ab;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "&sr"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/ab;->eM()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
