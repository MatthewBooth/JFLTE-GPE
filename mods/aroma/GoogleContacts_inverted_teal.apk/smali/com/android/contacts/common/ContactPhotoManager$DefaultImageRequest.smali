.class public Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;
.super Ljava/lang/Object;
.source "ContactPhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/ContactPhotoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultImageRequest"
.end annotation


# static fields
.field public static EMPTY_CIRCULAR_BUSINESS_IMAGE_REQUEST:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

.field public static EMPTY_CIRCULAR_DEFAULT_IMAGE_REQUEST:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

.field public static EMPTY_DEFAULT_BUSINESS_IMAGE_REQUEST:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

.field public static EMPTY_DEFAULT_IMAGE_REQUEST:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;


# instance fields
.field public contactType:I

.field public displayName:Ljava/lang/String;

.field public identifier:Ljava/lang/String;

.field public isCircular:Z

.field public offset:F

.field public scale:F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    invoke-direct {v0}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>()V

    sput-object v0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->EMPTY_DEFAULT_IMAGE_REQUEST:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    new-instance v0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v2, v4, v1}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->EMPTY_DEFAULT_BUSINESS_IMAGE_REQUEST:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    new-instance v0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    invoke-direct {v0, v2, v2, v3}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->EMPTY_CIRCULAR_DEFAULT_IMAGE_REQUEST:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    new-instance v0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    invoke-direct {v0, v2, v2, v4, v3}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->EMPTY_CIRCULAR_BUSINESS_IMAGE_REQUEST:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->contactType:I

    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->scale:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->offset:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->isCircular:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IFFZ)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .param p4    # F
    .param p5    # F
    .param p6    # Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->contactType:I

    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->scale:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->offset:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->isCircular:Z

    iput-object p1, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->displayName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->identifier:Ljava/lang/String;

    iput p3, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->contactType:I

    iput p4, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->scale:F

    iput p5, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->offset:F

    iput-boolean p6, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->isCircular:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 7
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .param p4    # Z

    const/high16 v4, 0x3f800000

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IFFZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Z

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IFFZ)V

    return-void
.end method
