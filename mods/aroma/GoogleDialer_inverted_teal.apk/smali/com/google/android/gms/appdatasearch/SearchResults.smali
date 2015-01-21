.class public Lcom/google/android/gms/appdatasearch/SearchResults;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/appdatasearch/SearchResults$ResultIterator;,
        Lcom/google/android/gms/appdatasearch/SearchResults$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/google/android/gms/appdatasearch/SearchResults$Result;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/appdatasearch/ae;


# instance fields
.field final Dn:[I

.field final Do:[B

.field final Dp:[Landroid/os/Bundle;

.field final Dq:[Landroid/os/Bundle;

.field final Dr:[Landroid/os/Bundle;

.field final Ds:I

.field final Dt:[I

.field final Du:[Ljava/lang/String;

.field final Dv:[B

.field final Dw:[D

.field final mErrorMessage:Ljava/lang/String;

.field final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/appdatasearch/ae;

    invoke-direct {v0}, Lcom/google/android/gms/appdatasearch/ae;-><init>()V

    sput-object v0, Lcom/google/android/gms/appdatasearch/SearchResults;->CREATOR:Lcom/google/android/gms/appdatasearch/ae;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;[I[B[Landroid/os/Bundle;[Landroid/os/Bundle;[Landroid/os/Bundle;I[I[Ljava/lang/String;[B[D)V
    .locals 0
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # [I
    .param p4    # [B
    .param p5    # [Landroid/os/Bundle;
    .param p6    # [Landroid/os/Bundle;
    .param p7    # [Landroid/os/Bundle;
    .param p8    # I
    .param p9    # [I
    .param p10    # [Ljava/lang/String;
    .param p11    # [B
    .param p12    # [D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/appdatasearch/SearchResults;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/appdatasearch/SearchResults;->mErrorMessage:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/appdatasearch/SearchResults;->Dn:[I

    iput-object p4, p0, Lcom/google/android/gms/appdatasearch/SearchResults;->Do:[B

    iput-object p5, p0, Lcom/google/android/gms/appdatasearch/SearchResults;->Dp:[Landroid/os/Bundle;

    iput-object p6, p0, Lcom/google/android/gms/appdatasearch/SearchResults;->Dq:[Landroid/os/Bundle;

    iput-object p7, p0, Lcom/google/android/gms/appdatasearch/SearchResults;->Dr:[Landroid/os/Bundle;

    iput p8, p0, Lcom/google/android/gms/appdatasearch/SearchResults;->Ds:I

    iput-object p9, p0, Lcom/google/android/gms/appdatasearch/SearchResults;->Dt:[I

    iput-object p10, p0, Lcom/google/android/gms/appdatasearch/SearchResults;->Du:[Ljava/lang/String;

    iput-object p11, p0, Lcom/google/android/gms/appdatasearch/SearchResults;->Dv:[B

    iput-object p12, p0, Lcom/google/android/gms/appdatasearch/SearchResults;->Dw:[D

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/SearchResults;->CREATOR:Lcom/google/android/gms/appdatasearch/ae;

    const/4 v0, 0x0

    return v0
.end method

.method public getNumResults()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/appdatasearch/SearchResults;->Ds:I

    return v0
.end method

.method public hasError()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/appdatasearch/SearchResults;->mErrorMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Lcom/google/android/gms/appdatasearch/SearchResults$ResultIterator;
    .locals 1

    new-instance v0, Lcom/google/android/gms/appdatasearch/SearchResults$ResultIterator;

    invoke-direct {v0, p0}, Lcom/google/android/gms/appdatasearch/SearchResults$ResultIterator;-><init>(Lcom/google/android/gms/appdatasearch/SearchResults;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/appdatasearch/SearchResults;->iterator()Lcom/google/android/gms/appdatasearch/SearchResults$ResultIterator;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    sget-object v0, Lcom/google/android/gms/appdatasearch/SearchResults;->CREATOR:Lcom/google/android/gms/appdatasearch/ae;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/appdatasearch/ae;->a(Lcom/google/android/gms/appdatasearch/SearchResults;Landroid/os/Parcel;I)V

    return-void
.end method
