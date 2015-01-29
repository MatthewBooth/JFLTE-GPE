.class final Landroid/view/textservice/SpellCheckerSubtype$1;
.super Ljava/lang/Object;
.source "SpellCheckerSubtype.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textservice/SpellCheckerSubtype;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/view/textservice/SpellCheckerSubtype;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/textservice/SpellCheckerSubtype;
    .locals 1
    .param p1    # Landroid/os/Parcel;

    new-instance v0, Landroid/view/textservice/SpellCheckerSubtype;

    invoke-direct {v0, p1}, Landroid/view/textservice/SpellCheckerSubtype;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1    # Landroid/os/Parcel;

    invoke-virtual {p0, p1}, Landroid/view/textservice/SpellCheckerSubtype$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/view/textservice/SpellCheckerSubtype;
    .locals 1
    .param p1    # I

    new-array v0, p1, [Landroid/view/textservice/SpellCheckerSubtype;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1    # I

    invoke-virtual {p0, p1}, Landroid/view/textservice/SpellCheckerSubtype$1;->newArray(I)[Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v0

    return-object v0
.end method
