.class public Landroid/hardware/camera2/dispatch/ArgumentReplacingDispatcher;
.super Ljava/lang/Object;
.source "ArgumentReplacingDispatcher.java"

# interfaces
.implements Landroid/hardware/camera2/dispatch/Dispatchable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "TArg:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/hardware/camera2/dispatch/Dispatchable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mArgumentIndex:I

.field private final mReplaceWith:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTArg;"
        }
    .end annotation
.end field

.field private final mTarget:Landroid/hardware/camera2/dispatch/Dispatchable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/dispatch/Dispatchable",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/dispatch/Dispatchable;ILjava/lang/Object;)V
    .locals 1
    .param p2    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/dispatch/Dispatchable",
            "<TT;>;ITTArg;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "target must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/dispatch/Dispatchable;

    iput-object v0, p0, Landroid/hardware/camera2/dispatch/ArgumentReplacingDispatcher;->mTarget:Landroid/hardware/camera2/dispatch/Dispatchable;

    const-string v0, "argumentIndex must not be negative"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/dispatch/ArgumentReplacingDispatcher;->mArgumentIndex:I

    const-string v0, "replaceWith must not be null"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/dispatch/ArgumentReplacingDispatcher;->mReplaceWith:Ljava/lang/Object;

    return-void
.end method

.method private static arrayCopy([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .param p0    # [Ljava/lang/Object;

    array-length v1, p0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v3, p0, v0

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method


# virtual methods
.method public dispatch(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/reflect/Method;
    .param p2    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    array-length v0, p2

    iget v1, p0, Landroid/hardware/camera2/dispatch/ArgumentReplacingDispatcher;->mArgumentIndex:I

    if-le v0, v1, :cond_0

    invoke-static {p2}, Landroid/hardware/camera2/dispatch/ArgumentReplacingDispatcher;->arrayCopy([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    iget v0, p0, Landroid/hardware/camera2/dispatch/ArgumentReplacingDispatcher;->mArgumentIndex:I

    iget-object v1, p0, Landroid/hardware/camera2/dispatch/ArgumentReplacingDispatcher;->mReplaceWith:Ljava/lang/Object;

    aput-object v1, p2, v0

    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/dispatch/ArgumentReplacingDispatcher;->mTarget:Landroid/hardware/camera2/dispatch/Dispatchable;

    invoke-interface {v0, p1, p2}, Landroid/hardware/camera2/dispatch/Dispatchable;->dispatch(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
