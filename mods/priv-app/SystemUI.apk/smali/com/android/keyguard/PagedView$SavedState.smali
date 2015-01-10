.class public Lcom/android/keyguard/PagedView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "PagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/PagedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/keyguard/PagedView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field currentPage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/keyguard/PagedView$SavedState$1;

    invoke-direct {v0}, Lcom/android/keyguard/PagedView$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/keyguard/PagedView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1    # Landroid/os/Parcel;

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/PagedView$SavedState;->currentPage:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/PagedView$SavedState;->currentPage:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/keyguard/PagedView$1;)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
    .param p2    # Lcom/android/keyguard/PagedView$1;

    invoke-direct {p0, p1}, Lcom/android/keyguard/PagedView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/android/keyguard/PagedView$SavedState;->currentPage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
