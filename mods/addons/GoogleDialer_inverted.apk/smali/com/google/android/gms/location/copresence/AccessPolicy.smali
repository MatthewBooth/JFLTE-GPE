.class public Lcom/google/android/gms/location/copresence/AccessPolicy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/location/copresence/AccessPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private static final anl:Lcom/google/android/gms/common/people/data/Audience;


# instance fields
.field private final Oh:Lcom/google/android/gms/common/people/data/Audience;

.field private final anm:I

.field private final ann:J

.field private final ano:Lcom/google/android/gms/location/copresence/AccessLock;

.field private final anp:I

.field private final anq:I

.field private final anr:Lcom/google/android/gms/location/copresence/AclResourceId;

.field private final mName:Ljava/lang/String;

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/location/copresence/c;

    invoke-direct {v0}, Lcom/google/android/gms/location/copresence/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/copresence/AccessPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/google/android/gms/common/people/data/AudienceBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/common/people/data/AudienceBuilder;-><init>()V

    const-string v1, "public"

    const-string v2, "Public"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/people/data/AudienceMember;->forGroup(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/people/data/AudienceMember;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/people/data/AudienceBuilder;->setAudienceMembers(Ljava/util/Collection;)Lcom/google/android/gms/common/people/data/AudienceBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/people/data/AudienceBuilder;->build()Lcom/google/android/gms/common/people/data/Audience;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/location/copresence/AccessPolicy;->anl:Lcom/google/android/gms/common/people/data/Audience;

    return-void
.end method

.method constructor <init>(IILjava/lang/String;JLcom/google/android/gms/location/copresence/AccessLock;Lcom/google/android/gms/common/people/data/Audience;IILcom/google/android/gms/location/copresence/AclResourceId;)V
    .locals 0
    .param p1    # I
    .param p2    # I
    .param p3    # Ljava/lang/String;
    .param p4    # J
    .param p6    # Lcom/google/android/gms/location/copresence/AccessLock;
    .param p7    # Lcom/google/android/gms/common/people/data/Audience;
    .param p8    # I
    .param p9    # I
    .param p10    # Lcom/google/android/gms/location/copresence/AclResourceId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/copresence/AccessPolicy;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/location/copresence/AccessPolicy;->anm:I

    iput-object p3, p0, Lcom/google/android/gms/location/copresence/AccessPolicy;->mName:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/location/copresence/AccessPolicy;->ann:J

    iput-object p6, p0, Lcom/google/android/gms/location/copresence/AccessPolicy;->ano:Lcom/google/android/gms/location/copresence/AccessLock;

    iput-object p7, p0, Lcom/google/android/gms/location/copresence/AccessPolicy;->Oh:Lcom/google/android/gms/common/people/data/Audience;

    iput p8, p0, Lcom/google/android/gms/location/copresence/AccessPolicy;->anp:I

    iput p9, p0, Lcom/google/android/gms/location/copresence/AccessPolicy;->anq:I

    iput-object p10, p0, Lcom/google/android/gms/location/copresence/AccessPolicy;->anr:Lcom/google/android/gms/location/copresence/AclResourceId;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAccessLock()Lcom/google/android/gms/location/copresence/AccessLock;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/copresence/AccessPolicy;->ano:Lcom/google/android/gms/location/copresence/AccessLock;

    return-object v0
.end method

.method public getAclResourceId()Lcom/google/android/gms/location/copresence/AclResourceId;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/copresence/AccessPolicy;->anr:Lcom/google/android/gms/location/copresence/AclResourceId;

    return-object v0
.end method

.method public getAudience()Lcom/google/android/gms/common/people/data/Audience;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/copresence/AccessPolicy;->Oh:Lcom/google/android/gms/common/people/data/Audience;

    return-object v0
.end method

.method public getCopresenceType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/copresence/AccessPolicy;->anq:I

    return v0
.end method

.method public getDistanceType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/copresence/AccessPolicy;->anp:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/copresence/AccessPolicy;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeToLiveMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/location/copresence/AccessPolicy;->ann:J

    return-wide v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/copresence/AccessPolicy;->mVersionCode:I

    return v0
.end method

.method mz()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/copresence/AccessPolicy;->anm:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/copresence/c;->a(Lcom/google/android/gms/location/copresence/AccessPolicy;Landroid/os/Parcel;I)V

    return-void
.end method
