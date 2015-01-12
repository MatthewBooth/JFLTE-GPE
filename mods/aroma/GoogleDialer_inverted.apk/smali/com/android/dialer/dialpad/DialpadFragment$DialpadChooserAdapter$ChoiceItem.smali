.class Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;
.super Ljava/lang/Object;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChoiceItem"
.end annotation


# instance fields
.field icon:Landroid/graphics/Bitmap;

.field id:I

.field text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/graphics/Bitmap;
    .param p3    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;->text:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;->icon:Landroid/graphics/Bitmap;

    iput p3, p0, Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;->id:I

    return-void
.end method
