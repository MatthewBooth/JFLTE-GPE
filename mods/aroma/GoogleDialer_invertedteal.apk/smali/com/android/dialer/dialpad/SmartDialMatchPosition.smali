.class public Lcom/android/dialer/dialpad/SmartDialMatchPosition;
.super Ljava/lang/Object;
.source "SmartDialMatchPosition.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public end:I

.field public start:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/dialer/dialpad/SmartDialMatchPosition;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/dialpad/SmartDialMatchPosition;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1    # I
    .param p2    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/dialer/dialpad/SmartDialMatchPosition;->start:I

    iput p2, p0, Lcom/android/dialer/dialpad/SmartDialMatchPosition;->end:I

    return-void
.end method

.method private advance(I)V
    .locals 1
    .param p1    # I

    iget v0, p0, Lcom/android/dialer/dialpad/SmartDialMatchPosition;->start:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/dialer/dialpad/SmartDialMatchPosition;->start:I

    iget v0, p0, Lcom/android/dialer/dialpad/SmartDialMatchPosition;->end:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/dialer/dialpad/SmartDialMatchPosition;->end:I

    return-void
.end method

.method public static advanceMatchPositions(Ljava/util/ArrayList;I)V
    .locals 2
    .param p1    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dialer/dialpad/SmartDialMatchPosition;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/dialpad/SmartDialMatchPosition;

    invoke-direct {v1, p1}, Lcom/android/dialer/dialpad/SmartDialMatchPosition;->advance(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
