.class public Lcom/android/phone/common/widget/ResizingTextTextView;
.super Landroid/widget/TextView;
.source "ResizingTextTextView.java"


# instance fields
.field private final mMinTextSize:I

.field private final mOriginalTextSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/android/phone/common/widget/ResizingTextTextView;->getTextSize()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/phone/common/widget/ResizingTextTextView;->mOriginalTextSize:I

    sget-object v1, Lcom/android/phone/common/R$styleable;->ResizingText:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/phone/common/widget/ResizingTextTextView;->mOriginalTextSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/phone/common/widget/ResizingTextTextView;->mMinTextSize:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    iget v0, p0, Lcom/android/phone/common/widget/ResizingTextTextView;->mOriginalTextSize:I

    iget v1, p0, Lcom/android/phone/common/widget/ResizingTextTextView;->mMinTextSize:I

    invoke-static {p0, v0, v1}, Lcom/android/phone/common/util/ViewUtil;->resizeText(Landroid/widget/TextView;II)V

    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    iget v0, p0, Lcom/android/phone/common/widget/ResizingTextTextView;->mOriginalTextSize:I

    iget v1, p0, Lcom/android/phone/common/widget/ResizingTextTextView;->mMinTextSize:I

    invoke-static {p0, v0, v1}, Lcom/android/phone/common/util/ViewUtil;->resizeText(Landroid/widget/TextView;II)V

    return-void
.end method
