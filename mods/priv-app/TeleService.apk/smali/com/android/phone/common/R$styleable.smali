.class public final Lcom/android/phone/common/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/common/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CallForwardEditPreference:[I

.field public static final Dialpad:[I

.field public static final EditPhoneNumberPreference:[I

.field public static final ResizingText:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/common/R$styleable;->CallForwardEditPreference:[I

    new-array v0, v3, [I

    const/high16 v1, 0x7f010000

    aput v1, v0, v2

    sput-object v0, Lcom/android/phone/common/R$styleable;->Dialpad:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/phone/common/R$styleable;->EditPhoneNumberPreference:[I

    new-array v0, v3, [I

    const v1, 0x7f010001

    aput v1, v0, v2

    sput-object v0, Lcom/android/phone/common/R$styleable;->ResizingText:[I

    return-void

    :array_0
    .array-data 4
        0x7f010006
        0x7f010007
    .end array-data

    :array_1
    .array-data 4
        0x7f010002
        0x7f010003
        0x7f010004
        0x7f010005
    .end array-data
.end method
