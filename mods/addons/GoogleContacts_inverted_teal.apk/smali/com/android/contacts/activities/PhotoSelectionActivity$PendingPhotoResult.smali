.class Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;
.super Ljava/lang/Object;
.source "PhotoSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/PhotoSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingPhotoResult"
.end annotation


# instance fields
.field private final mData:Landroid/content/Intent;

.field private final mRequestCode:I

.field private final mResultCode:I


# direct methods
.method private constructor <init>(IILandroid/content/Intent;)V
    .locals 0
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;->mRequestCode:I

    iput p2, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;->mResultCode:I

    iput-object p3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;->mData:Landroid/content/Intent;

    return-void
.end method

.method synthetic constructor <init>(IILandroid/content/Intent;Lcom/android/contacts/activities/PhotoSelectionActivity$1;)V
    .locals 0
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/content/Intent;
    .param p4    # Lcom/android/contacts/activities/PhotoSelectionActivity$1;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;-><init>(IILandroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;)Landroid/content/Intent;
    .locals 1
    .param p0    # Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;

    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;->mData:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;)I
    .locals 1
    .param p0    # Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;

    iget v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;->mRequestCode:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;)I
    .locals 1
    .param p0    # Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;

    iget v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;->mResultCode:I

    return v0
.end method
