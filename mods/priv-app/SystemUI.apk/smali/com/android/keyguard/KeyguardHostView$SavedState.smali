.class Lcom/android/keyguard/KeyguardHostView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "KeyguardHostView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/keyguard/KeyguardHostView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field appWidgetToShow:I

.field insets:Landroid/graphics/Rect;

.field transportState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/keyguard/KeyguardHostView$SavedState$1;

    invoke-direct {v0}, Lcom/android/keyguard/KeyguardHostView$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/keyguard/KeyguardHostView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1    # Landroid/os/Parcel;

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/KeyguardHostView$SavedState;->appWidgetToShow:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView$SavedState;->insets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardHostView$SavedState;->transportState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardHostView$SavedState;->appWidgetToShow:I

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView$SavedState;->insets:Landroid/graphics/Rect;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/keyguard/KeyguardHostView$1;)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
    .param p2    # Lcom/android/keyguard/KeyguardHostView$1;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardHostView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 1
    .param p1    # Landroid/os/Parcelable;

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/KeyguardHostView$SavedState;->appWidgetToShow:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView$SavedState;->insets:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/android/keyguard/KeyguardHostView$SavedState;->transportState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/keyguard/KeyguardHostView$SavedState;->appWidgetToShow:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$SavedState;->insets:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
