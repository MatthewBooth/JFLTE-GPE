.class public final Lcom/google/android/gms/common/people/data/AudienceBuilder;
.super Ljava/lang/Object;


# static fields
.field public static final EMPTY_AUDIENCE:Lcom/google/android/gms/common/people/data/Audience;


# instance fields
.field private QM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/people/data/AudienceMember;",
            ">;"
        }
    .end annotation
.end field

.field private QN:I

.field private QP:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/people/data/AudienceBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/common/people/data/AudienceBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/common/people/data/AudienceBuilder;->build()Lcom/google/android/gms/common/people/data/Audience;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/people/data/AudienceBuilder;->EMPTY_AUDIENCE:Lcom/google/android/gms/common/people/data/Audience;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/people/data/AudienceBuilder;->QM:Ljava/util/List;

    iput v1, p0, Lcom/google/android/gms/common/people/data/AudienceBuilder;->QN:I

    iput-boolean v1, p0, Lcom/google/android/gms/common/people/data/AudienceBuilder;->QP:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/common/people/data/Audience;
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/people/data/Audience;

    iget-object v1, p0, Lcom/google/android/gms/common/people/data/AudienceBuilder;->QM:Ljava/util/List;

    iget v2, p0, Lcom/google/android/gms/common/people/data/AudienceBuilder;->QN:I

    iget-boolean v3, p0, Lcom/google/android/gms/common/people/data/AudienceBuilder;->QP:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/people/data/Audience;-><init>(Ljava/util/List;IZ)V

    return-object v0
.end method

.method public setAudienceMembers(Ljava/util/Collection;)Lcom/google/android/gms/common/people/data/AudienceBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/common/people/data/AudienceMember;",
            ">;)",
            "Lcom/google/android/gms/common/people/data/AudienceBuilder;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    const-string v0, "Audience members must not be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/o;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/people/data/AudienceBuilder;->QM:Ljava/util/List;

    return-object p0
.end method
