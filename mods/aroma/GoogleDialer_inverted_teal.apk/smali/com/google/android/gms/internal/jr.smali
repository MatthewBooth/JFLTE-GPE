.class public final Lcom/google/android/gms/internal/jr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/common/server/response/FastJsonResponse$FieldConverter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/jr$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;",
        "Lcom/google/android/gms/common/server/response/FastJsonResponse$FieldConverter",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/js;


# instance fields
.field private final QY:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final QZ:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final Ra:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/jr$a;",
            ">;"
        }
    .end annotation
.end field

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/js;

    invoke-direct {v0}, Lcom/google/android/gms/internal/js;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/jr;->CREATOR:Lcom/google/android/gms/internal/js;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/jr;->mVersionCode:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/jr;->QY:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/jr;->QZ:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/jr;->Ra:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(ILjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/jr$a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/jr;->mVersionCode:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/jr;->QY:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/jr;->QZ:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/jr;->Ra:Ljava/util/ArrayList;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/jr;->b(Ljava/util/ArrayList;)V

    return-void
.end method

.method private b(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/jr$a;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jr$a;

    iget-object v2, v0, Lcom/google/android/gms/internal/jr$a;->Rb:Ljava/lang/String;

    iget v0, v0, Lcom/google/android/gms/internal/jr$a;->Rc:I

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/internal/jr;->h(Ljava/lang/String;I)Lcom/google/android/gms/internal/jr;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/jr;->QZ:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/jr;->QY:Ljava/util/HashMap;

    const-string v2, "gms_unknown"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "gms_unknown"

    :cond_0
    return-object v0
.end method

.method public synthetic convertBack(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/jr;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/jr;->CREATOR:Lcom/google/android/gms/internal/js;

    const/4 v0, 0x0

    return v0
.end method

.method public getTypeIn()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public getTypeOut()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/jr;->mVersionCode:I

    return v0
.end method

.method public h(Ljava/lang/String;I)Lcom/google/android/gms/internal/jr;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/jr;->QY:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/jr;->QZ:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method hc()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/jr$a;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/jr;->QY:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Lcom/google/android/gms/internal/jr$a;

    iget-object v1, p0, Lcom/google/android/gms/internal/jr;->QY:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v4, v0, v1}, Lcom/google/android/gms/internal/jr$a;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    sget-object v0, Lcom/google/android/gms/internal/jr;->CREATOR:Lcom/google/android/gms/internal/js;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/js;->a(Lcom/google/android/gms/internal/jr;Landroid/os/Parcel;I)V

    return-void
.end method
