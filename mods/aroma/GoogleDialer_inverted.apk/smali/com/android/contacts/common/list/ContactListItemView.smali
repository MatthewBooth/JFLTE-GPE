.class public Lcom/android/contacts/common/list/ContactListItemView;
.super Landroid/view/ViewGroup;
.source "ContactListItemView.java"

# interfaces
.implements Landroid/widget/AbsListView$SelectionBoundsAdjuster;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;,
        Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;
    }
.end annotation


# static fields
.field private static final SPLIT_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mActivatedStateSupported:Z

.field private mAdjustSelectionBoundsEnabled:Z

.field private mBoundsWithoutHeader:Landroid/graphics/Rect;

.field private final mDataBuffer:Landroid/database/CharArrayBuffer;

.field private mDataView:Landroid/widget/TextView;

.field private mDataViewHeight:I

.field private mDataViewWidthWeight:I

.field private mDefaultPhotoViewSize:I

.field private mGapBetweenImageAndText:I

.field private mGapBetweenLabelAndData:I

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mHeaderWidth:I

.field private mHighlightedPrefix:Ljava/lang/String;

.field private mIsSectionHeaderEnabled:Z

.field private mKeepHorizontalPaddingForPhotoView:Z

.field private mKeepVerticalPaddingForPhotoView:Z

.field private mLabelAndDataViewMaxHeight:I

.field private mLabelView:Landroid/widget/TextView;

.field private mLabelViewHeight:I

.field private mLabelViewWidthWeight:I

.field private mLeftOffset:I

.field private mNameHighlightSequence:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mNameTextView:Landroid/widget/TextView;

.field private mNameTextViewHeight:I

.field private mNameTextViewTextColor:I

.field private mNameTextViewTextSize:I

.field private mNumberHighlightSequence:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhoneticNameBuffer:Landroid/database/CharArrayBuffer;

.field private mPhoneticNameTextView:Landroid/widget/TextView;

.field private mPhoneticNameTextViewHeight:I

.field private mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

.field private mPhotoView:Landroid/widget/ImageView;

.field private mPhotoViewHeight:I

.field private mPhotoViewWidth:I

.field private mPhotoViewWidthAndHeightAreReady:Z

.field private mPreferredHeight:I

.field private mPresenceIcon:Landroid/widget/ImageView;

.field private mPresenceIconMargin:I

.field private mPresenceIconSize:I

.field private mQuickContact:Landroid/widget/QuickContactBadge;

.field private mQuickContactEnabled:Z

.field private mRightOffset:I

.field private mSecondaryTextColor:Landroid/content/res/ColorStateList;

.field private mSnippetTextViewHeight:I

.field private mSnippetView:Landroid/widget/TextView;

.field private mStatusTextViewHeight:I

.field private mStatusView:Landroid/widget/TextView;

.field private final mTextHighlighter:Lcom/android/contacts/common/format/TextHighlighter;

.field private mTextIndent:I

.field private mTextOffsetTop:I

.field private mUnknownNameText:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "([\\w-\\.]+)@((?:[\\w]+\\.)+)([a-zA-Z]{2,4})|[\\w]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/list/ContactListItemView;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v8, 0x5

    const/4 v4, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v5, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPreferredHeight:I

    iput v5, p0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I

    iput v5, p0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenLabelAndData:I

    iput v4, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIconMargin:I

    const/16 v1, 0x10

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIconSize:I

    iput v5, p0, Lcom/android/contacts/common/list/ContactListItemView;->mTextIndent:I

    iput v7, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelViewWidthWeight:I

    iput v8, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataViewWidthWeight:I

    invoke-static {v5}, Lcom/android/contacts/common/list/ContactListItemView;->getDefaultPhotoPosition(Z)Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    iput-boolean v6, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContactEnabled:Z

    iput v5, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDefaultPhotoViewSize:I

    iput-boolean v5, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    const/high16 v1, -0x1000000

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextViewTextColor:I

    new-instance v1, Landroid/database/CharArrayBuffer;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataBuffer:Landroid/database/CharArrayBuffer;

    new-instance v1, Landroid/database/CharArrayBuffer;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameBuffer:Landroid/database/CharArrayBuffer;

    iput-boolean v6, p0, Lcom/android/contacts/common/list/ContactListItemView;->mAdjustSelectionBoundsEnabled:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/contacts/common/R$styleable;->ContactListItemView:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    iget v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPreferredHeight:I

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPreferredHeight:I

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x8

    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I

    const/16 v1, 0x9

    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenLabelAndData:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenLabelAndData:I

    const/16 v1, 0xa

    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIconMargin:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIconMargin:I

    const/16 v1, 0xb

    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIconSize:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIconSize:I

    const/16 v1, 0xc

    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDefaultPhotoViewSize:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDefaultPhotoViewSize:I

    const/16 v1, 0x16

    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mTextIndent:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mTextIndent:I

    const/16 v1, 0x17

    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mTextOffsetTop:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mTextOffsetTop:I

    const/16 v1, 0x18

    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataViewWidthWeight:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataViewWidthWeight:I

    const/16 v1, 0x19

    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelViewWidthWeight:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelViewWidthWeight:I

    const/16 v1, 0x14

    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextViewTextColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextViewTextColor:I

    const/16 v1, 0x15

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b003a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextViewTextSize:I

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    invoke-virtual {v0, v8, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    const/4 v4, 0x6

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/contacts/common/list/ContactListItemView;->setPaddingRelative(IIII)V

    new-instance v1, Lcom/android/contacts/common/format/TextHighlighter;

    invoke-direct {v1, v6}, Lcom/android/contacts/common/format/TextHighlighter;-><init>(I)V

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mTextHighlighter:Lcom/android/contacts/common/format/TextHighlighter;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/contacts/common/R$styleable;->Theme:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSecondaryTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0034

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderWidth:I

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameHighlightSequence:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNumberHighlightSequence:Ljava/util/ArrayList;

    invoke-virtual {p0, v7}, Lcom/android/contacts/common/list/ContactListItemView;->setLayoutDirection(I)V

    return-void
.end method

.method private ensurePhotoViewSize()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getDefaultPhotoViewSize()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewHeight:I

    iput v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidth:I

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContactEnabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mKeepHorizontalPaddingForPhotoView:Z

    if-nez v0, :cond_0

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidth:I

    :cond_0
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mKeepVerticalPaddingForPhotoView:Z

    if-nez v0, :cond_1

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewHeight:I

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    :cond_2
    return-void
.end method

.method private getDefaultPhotoLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getDefaultPhotoViewSize()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-object v0
.end method

.method public static final getDefaultPhotoPosition(Z)Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;
    .locals 3
    .param p0    # Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    if-eqz p0, :cond_1

    sget-object v2, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->RIGHT:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    :goto_0
    return-object v2

    :pswitch_0
    if-eqz p0, :cond_0

    sget-object v2, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->RIGHT:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private getTextEllipsis()Landroid/text/TextUtils$TruncateAt;
    .locals 1

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    return-object v0
.end method

.method private final pointIsInView(FF)Z
    .locals 2
    .param p1    # F
    .param p2    # F

    iget v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLeftOffset:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mRightOffset:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 5
    .param p1    # Landroid/widget/TextView;
    .param p2    # Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v1, v2, :cond_0

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private snippetize(Ljava/lang/String;II)Ljava/lang/String;
    .locals 7
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # I

    move v2, p3

    move v5, v2

    move v1, p2

    move v0, v1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v6

    if-nez v6, :cond_2

    move v0, v1

    move v2, v5

    :cond_0
    add-int/lit8 v1, p2, -0x1

    move v5, v2

    move v4, p2

    :goto_1
    const/4 v6, -0x1

    if-le v1, v6, :cond_3

    if-lez v5, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v6

    if-nez v6, :cond_1

    move v4, v1

    move v2, v5

    :cond_1
    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v0

    move v5, v2

    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_5

    if-lez v5, :cond_5

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v6

    if-nez v6, :cond_4

    move v0, v1

    :cond_4
    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v4, :cond_6

    const-string v6, "..."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v0, v6, :cond_7

    const-string v6, "..."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private static split(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p0    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v2, Lcom/android/contacts/common/list/ContactListItemView;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private updateSnippet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/contacts/common/util/SearchUtil;->cleanStartAndEndOfSearchQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/common/list/ContactListItemView;->split(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0

    :cond_3
    invoke-static {p1, p2}, Lcom/android/contacts/common/util/SearchUtil;->findMatchingLine(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/util/SearchUtil$MatchedLine;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v7, v3, Lcom/android/contacts/common/util/SearchUtil$MatchedLine;->line:Ljava/lang/String;

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0008

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v6, v3, Lcom/android/contacts/common/util/SearchUtil$MatchedLine;->line:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v1, :cond_4

    iget-object v6, v3, Lcom/android/contacts/common/util/SearchUtil$MatchedLine;->line:Ljava/lang/String;

    iget v7, v3, Lcom/android/contacts/common/util/SearchUtil$MatchedLine;->startIndex:I

    invoke-direct {p0, v6, v7, v1}, Lcom/android/contacts/common/list/ContactListItemView;->snippetize(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_4
    iget-object v6, v3, Lcom/android/contacts/common/util/SearchUtil$MatchedLine;->line:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public addNameHighlightSequence(II)V
    .locals 2
    .param p1    # I
    .param p2    # I

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameHighlightSequence:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;

    invoke-direct {v1, p1, p2}, Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addNumberHighlightSequence(II)V
    .locals 2
    .param p1    # I
    .param p2    # I

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNumberHighlightSequence:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;

    invoke-direct {v1, p1, p2}, Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public adjustListItemSelectionBounds(Landroid/graphics/Rect;)V
    .locals 2
    .param p1    # Landroid/graphics/Rect;

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mAdjustSelectionBoundsEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    :cond_0
    return-void
.end method

.method public clearHighlightSequences()V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameHighlightSequence:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNumberHighlightSequence:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHighlightedPrefix:Ljava/lang/String;

    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mActivatedStateSupported:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mActivatedStateSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method public getDataView()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070013

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    const v1, 0x7f0e0011

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected getDefaultPhotoViewSize()I
    .locals 1

    iget v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDefaultPhotoViewSize:I

    return v0
.end method

.method public getLabelView()Landroid/widget/TextView;
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070013

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    sget-object v1, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    const v1, 0x800005

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    const v1, 0x7f0e0010

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0
.end method

.method public getNameTextView()Landroid/widget/TextView;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextViewTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextViewTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    const v1, 0x7f0e000e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPhotoView()Landroid/widget/ImageView;
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getDefaultPhotoLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getQuickContact()Landroid/widget/QuickContactBadge;
    .locals 6

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContactEnabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "QuickContact is disabled for this view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    if-nez v0, :cond_2

    new-instance v0, Landroid/widget/QuickContactBadge;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getDefaultPhotoLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080095

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    iput-boolean v5, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    :cond_2
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    return-object v0
.end method

.method public getSnippetView()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1030046

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getStatusView()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1030046

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSecondaryTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    return-object v0
.end method

.method public hideDisplayName()V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    :cond_0
    return-void
.end method

.method protected isVisible(Landroid/view/View;)Z
    .locals 1
    .param p1    # Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->jumpDrawablesToCurrentState()V

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mActivatedStateSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 25
    .param p1    # Z
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    sub-int v8, p5, p3

    sub-int v20, p4, p2

    const/16 v18, 0x0

    move v4, v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPaddingLeft()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPaddingRight()I

    move-result v21

    sub-int v14, v20, v21

    invoke-static/range {p0 .. p0}, Lcom/android/contacts/common/util/ViewUtil;->isViewLayoutRtl(Landroid/view/View;)Z

    move-result v10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mIsSectionHeaderEnabled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int v21, v4, v18

    sub-int v21, v21, v6

    div-int/lit8 v21, v21, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mTextOffsetTop:I

    move/from16 v22, v0

    add-int v7, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    if-eqz v10, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderWidth:I

    move/from16 v21, v0

    sub-int v21, v14, v21

    move/from16 v22, v21

    :goto_0
    if-eqz v10, :cond_11

    move/from16 v21, v14

    :goto_1
    add-int v24, v7, v6

    move-object/from16 v0, v23

    move/from16 v1, v22

    move/from16 v2, v21

    move/from16 v3, v24

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    :cond_0
    if-eqz v10, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderWidth:I

    move/from16 v21, v0

    sub-int v14, v14, v21

    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    add-int v22, p2, v11

    add-int v23, p2, v14

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v18

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    add-int v21, p2, v11

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/common/list/ContactListItemView;->mLeftOffset:I

    add-int v21, p2, v14

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/common/list/ContactListItemView;->mRightOffset:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mIsSectionHeaderEnabled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2

    if-eqz v10, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I

    move/from16 v21, v0

    sub-int v14, v14, v21

    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mActivatedStateSupported:Z

    move/from16 v21, v0

    if-eqz v21, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/ContactListItemView;->isActivated()Z

    move-result v21

    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    move-object/from16 v21, v0

    if-eqz v21, :cond_14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_16

    if-eqz v13, :cond_15

    sub-int v21, v4, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewHeight:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    div-int/lit8 v21, v21, 0x2

    add-int v12, v18, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidth:I

    move/from16 v21, v0

    add-int v21, v21, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewHeight:I

    move/from16 v22, v0

    add-int v22, v22, v12

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v13, v11, v12, v0, v1}, Landroid/view/View;->layout(IIII)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidth:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I

    move/from16 v22, v0

    add-int v21, v21, v22

    add-int v11, v11, v21

    :cond_4
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextViewHeight:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextViewHeight:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetTextViewHeight:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusTextViewHeight:I

    move/from16 v22, v0

    add-int v19, v21, v22

    add-int v21, v4, v18

    sub-int v21, v21, v19

    div-int/lit8 v21, v21, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mTextOffsetTop:I

    move/from16 v22, v0

    add-int v17, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v21

    if-eqz v21, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextViewHeight:I

    move/from16 v22, v0

    add-int v22, v22, v17

    move-object/from16 v0, v21

    move/from16 v1, v17

    move/from16 v2, v22

    invoke-virtual {v0, v11, v1, v14, v2}, Landroid/widget/TextView;->layout(IIII)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextViewHeight:I

    move/from16 v21, v0

    add-int v17, v17, v21

    :cond_5
    if-eqz v10, :cond_19

    move/from16 v16, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v21

    if-eqz v21, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    sub-int v22, v14, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusTextViewHeight:I

    move/from16 v23, v0

    add-int v23, v23, v17

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v17

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v14, v3}, Landroid/widget/ImageView;->layout(IIII)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIconMargin:I

    move/from16 v21, v0

    add-int v21, v21, v9

    sub-int v16, v16, v21

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v21

    if-eqz v21, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusTextViewHeight:I

    move/from16 v22, v0

    add-int v22, v22, v17

    move-object/from16 v0, v21

    move/from16 v1, v17

    move/from16 v2, v16

    move/from16 v3, v22

    invoke-virtual {v0, v11, v1, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    :cond_7
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v21

    if-nez v21, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v21

    if-eqz v21, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusTextViewHeight:I

    move/from16 v21, v0

    add-int v17, v17, v21

    :cond_9
    move v5, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v21

    if-eqz v21, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextViewHeight:I

    move/from16 v22, v0

    add-int v22, v22, v17

    move-object/from16 v0, v21

    move/from16 v1, v17

    move/from16 v2, v22

    invoke-virtual {v0, v11, v1, v14, v2}, Landroid/widget/TextView;->layout(IIII)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextViewHeight:I

    move/from16 v21, v0

    add-int v17, v17, v21

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v21

    if-eqz v21, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v22

    sub-int v22, v14, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    move/from16 v23, v0

    add-int v23, v23, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelViewHeight:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    move/from16 v24, v0

    add-int v24, v24, v17

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v14, v3}, Landroid/widget/TextView;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v21

    sub-int v14, v14, v21

    :cond_b
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v21

    if-eqz v21, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    move/from16 v22, v0

    add-int v22, v22, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mDataViewHeight:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    move/from16 v23, v0

    add-int v23, v23, v17

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v5, v1, v14, v2}, Landroid/widget/TextView;->layout(IIII)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v21

    if-nez v21, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v21

    if-eqz v21, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    move/from16 v21, v0

    add-int v17, v17, v21

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v21

    if-eqz v21, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetTextViewHeight:I

    move/from16 v22, v0

    add-int v22, v22, v17

    move-object/from16 v0, v21

    move/from16 v1, v17

    move/from16 v2, v22

    invoke-virtual {v0, v11, v1, v14, v2}, Landroid/widget/TextView;->layout(IIII)V

    :cond_f
    return-void

    :cond_10
    move/from16 v22, v11

    goto/16 :goto_0

    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderWidth:I

    move/from16 v21, v0

    add-int v21, v21, v11

    goto/16 :goto_1

    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderWidth:I

    move/from16 v21, v0

    add-int v11, v11, v21

    goto/16 :goto_2

    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I

    move/from16 v21, v0

    add-int v11, v11, v21

    goto/16 :goto_3

    :cond_14
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    goto/16 :goto_4

    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mKeepHorizontalPaddingForPhotoView:Z

    move/from16 v21, v0

    if-eqz v21, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidth:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I

    move/from16 v22, v0

    add-int v21, v21, v22

    add-int v11, v11, v21

    goto/16 :goto_5

    :cond_16
    if-eqz v13, :cond_18

    sub-int v21, v4, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewHeight:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    div-int/lit8 v21, v21, 0x2

    add-int v12, v18, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidth:I

    move/from16 v21, v0

    sub-int v21, v14, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewHeight:I

    move/from16 v22, v0

    add-int v22, v22, v12

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v13, v0, v12, v14, v1}, Landroid/view/View;->layout(IIII)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidth:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I

    move/from16 v22, v0

    add-int v21, v21, v22

    sub-int v14, v14, v21

    :cond_17
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mTextIndent:I

    move/from16 v21, v0

    add-int v11, v11, v21

    goto/16 :goto_5

    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mKeepHorizontalPaddingForPhotoView:Z

    move/from16 v21, v0

    if-eqz v21, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidth:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I

    move/from16 v22, v0

    add-int v21, v21, v22

    sub-int v14, v14, v21

    goto :goto_8

    :cond_19
    move v15, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v21

    if-eqz v21, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    add-int v22, v11, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusTextViewHeight:I

    move/from16 v23, v0

    add-int v23, v23, v17

    move-object/from16 v0, v21

    move/from16 v1, v17

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v11, v1, v2, v3}, Landroid/widget/ImageView;->layout(IIII)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIconMargin:I

    move/from16 v21, v0

    add-int v21, v21, v9

    add-int v15, v15, v21

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v21

    if-eqz v21, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusTextViewHeight:I

    move/from16 v22, v0

    add-int v22, v22, v17

    move-object/from16 v0, v21

    move/from16 v1, v17

    move/from16 v2, v22

    invoke-virtual {v0, v15, v1, v14, v2}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_6

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v21

    add-int v5, v11, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    move/from16 v22, v0

    add-int v22, v22, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelViewHeight:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    move/from16 v23, v0

    add-int v23, v23, v17

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v11, v1, v5, v2}, Landroid/widget/TextView;->layout(IIII)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenLabelAndData:I

    move/from16 v21, v0

    add-int v5, v5, v21

    goto/16 :goto_7
.end method

.method protected onMeasure(II)V
    .locals 14
    .param p1    # I
    .param p2    # I

    const/4 v10, 0x0

    invoke-static {v10, p1}, Lcom/android/contacts/common/list/ContactListItemView;->resolveSize(II)I

    move-result v7

    iget v6, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPreferredHeight:I

    const/4 v10, 0x0

    iput v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextViewHeight:I

    const/4 v10, 0x0

    iput v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextViewHeight:I

    const/4 v10, 0x0

    iput v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelViewHeight:I

    const/4 v10, 0x0

    iput v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataViewHeight:I

    const/4 v10, 0x0

    iput v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    const/4 v10, 0x0

    iput v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetTextViewHeight:I

    const/4 v10, 0x0

    iput v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusTextViewHeight:I

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListItemView;->ensurePhotoViewSize()V

    iget v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidth:I

    if-gtz v10, :cond_0

    iget-boolean v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mKeepHorizontalPaddingForPhotoView:Z

    if-eqz v10, :cond_b

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPaddingLeft()I

    move-result v10

    sub-int v10, v7, v10

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPaddingRight()I

    move-result v11

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidth:I

    iget v12, p0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I

    add-int/2addr v11, v12

    sub-int v1, v10, v11

    :goto_0
    iget-boolean v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mIsSectionHeaderEnabled:Z

    if-eqz v10, :cond_1

    iget v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderWidth:I

    iget v11, p0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I

    add-int/2addr v10, v11

    sub-int/2addr v1, v10

    :cond_1
    iget-object v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v10}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_3

    move v5, v1

    iget-object v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    sget-object v11, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    if-eq v10, v11, :cond_2

    iget v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mTextIndent:I

    sub-int/2addr v5, v10

    :cond_2
    iget-object v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    const/high16 v11, 0x40000000

    invoke-static {v5, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/widget/TextView;->measure(II)V

    iget-object v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v10

    iput v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextViewHeight:I

    :cond_3
    iget-object v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v10}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    const/high16 v11, 0x40000000

    invoke-static {v1, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/widget/TextView;->measure(II)V

    iget-object v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v10

    iput v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextViewHeight:I

    :cond_4
    iget-object v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {p0, v10}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_d

    iget-object v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p0, v10}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_c

    iget v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenLabelAndData:I

    sub-int v9, v1, v10

    iget v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataViewWidthWeight:I

    mul-int/2addr v10, v9

    iget v11, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataViewWidthWeight:I

    iget v12, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelViewWidthWeight:I

    add-int/2addr v11, v12

    div-int v0, v10, v11

    iget v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelViewWidthWeight:I

    mul-int/2addr v10, v9

    iget v11, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataViewWidthWeight:I

    iget v12, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelViewWidthWeight:I

    add-int/2addr v11, v12

    div-int v3, v10, v11

    :goto_1
    iget-object v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {p0, v10}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    const/high16 v11, 0x40000000

    invoke-static {v0, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/widget/TextView;->measure(II)V

    iget-object v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v10

    iput v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataViewHeight:I

    :cond_5
    iget-object v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p0, v10}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    sget-object v11, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    if-ne v10, v11, :cond_f

    const/high16 v4, 0x40000000

    :goto_2
    iget-object v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/widget/TextView;->measure(II)V

    iget-object v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v10

    iput v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelViewHeight:I

    :cond_6
    iget v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelViewHeight:I

    iget v11, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataViewHeight:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    iget-object v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    invoke-virtual {p0, v10}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    const/high16 v11, 0x40000000

    invoke-static {v1, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/widget/TextView;->measure(II)V

    iget-object v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v10

    iput v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetTextViewHeight:I

    :cond_7
    iget-object v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v10}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    iget v11, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIconSize:I

    const/high16 v12, 0x40000000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    iget v12, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIconSize:I

    const/high16 v13, 0x40000000

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/widget/ImageView;->measure(II)V

    iget-object v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v10

    iput v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusTextViewHeight:I

    :cond_8
    iget-object v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {p0, v10}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v10}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_10

    iget-object v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v10

    sub-int v10, v1, v10

    iget v11, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIconMargin:I

    sub-int v8, v10, v11

    :goto_3
    iget-object v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    const/high16 v11, 0x40000000

    invoke-static {v8, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/widget/TextView;->measure(II)V

    iget v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusTextViewHeight:I

    iget-object v11, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusTextViewHeight:I

    :cond_9
    iget v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextViewHeight:I

    iget v11, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextViewHeight:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetTextViewHeight:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusTextViewHeight:I

    add-int v2, v10, v11

    iget v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewHeight:I

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPaddingBottom()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPaddingTop()I

    move-result v11

    add-int/2addr v10, v11

    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getVisibility()I

    move-result v10

    if-nez v10, :cond_a

    iget-object v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    iget v11, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderWidth:I

    const/high16 v12, 0x40000000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/widget/TextView;->measure(II)V

    :cond_a
    invoke-virtual {p0, v7, v2}, Lcom/android/contacts/common/list/ContactListItemView;->setMeasuredDimension(II)V

    return-void

    :cond_b
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPaddingLeft()I

    move-result v10

    sub-int v10, v7, v10

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPaddingRight()I

    move-result v11

    sub-int v1, v10, v11

    goto/16 :goto_0

    :cond_c
    move v0, v1

    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_d
    const/4 v0, 0x0

    iget-object v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p0, v10}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_e

    move v3, v1

    goto/16 :goto_1

    :cond_e
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_f
    const/high16 v4, -0x80000000

    goto/16 :goto_2

    :cond_10
    move v8, v1

    goto/16 :goto_3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1    # Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    float-to-int v3, v0

    float-to-int v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->pointIsInView(FF)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public removePhotoView()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->removePhotoView(ZZ)V

    return-void
.end method

.method public removePhotoView(ZZ)V
    .locals 2
    .param p1    # Z
    .param p2    # Z

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mKeepHorizontalPaddingForPhotoView:Z

    iput-boolean p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mKeepVerticalPaddingForPhotoView:Z

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    :cond_1
    return-void
.end method

.method public requestLayout()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->forceLayout()V

    return-void
.end method

.method public setActivatedStateSupported(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mActivatedStateSupported:Z

    return-void
.end method

.method public setAdjustSelectionBoundsEnabled(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mAdjustSelectionBoundsEnabled:Z

    return-void
.end method

.method public setDisplayName(Ljava/lang/CharSequence;)V
    .locals 6
    .param p1    # Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHighlightedPrefix:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mTextHighlighter:Lcom/android/contacts/common/format/TextHighlighter;

    iget-object v4, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHighlightedPrefix:Ljava/lang/String;

    invoke-virtual {v3, p1, v4}, Lcom/android/contacts/common/format/TextHighlighter;->applyPrefixHighlight(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getNameTextView()Landroid/widget/TextView;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/android/contacts/common/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameHighlightSequence:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameHighlightSequence:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mTextHighlighter:Lcom/android/contacts/common/format/TextHighlighter;

    # getter for: Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;->start:I
    invoke-static {v0}, Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;->access$000(Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;)I

    move-result v4

    # getter for: Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;->end:I
    invoke-static {v0}, Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;->access$100(Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;)I

    move-result v5

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/contacts/common/format/TextHighlighter;->applyMaskingHighlight(Landroid/text/SpannableString;II)V

    goto :goto_1

    :cond_2
    move-object p1, v2

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mUnknownNameText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public setDrawableResource(II)V
    .locals 2
    .param p1    # I
    .param p2    # I

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setHighlightedPrefix(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHighlightedPrefix:Ljava/lang/String;

    return-void
.end method

.method public setIsSectionHeaderEnabled(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mIsSectionHeaderEnabled:Z

    return-void
.end method

.method public setLabel(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1    # Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getLabelView()Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/android/contacts/common/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPhoneNumber(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    const/4 v5, 0x0

    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getDataView()Landroid/widget/TextView;

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNumberHighlightSequence:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNumberHighlightSequence:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mTextHighlighter:Lcom/android/contacts/common/format/TextHighlighter;

    # getter for: Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;->start:I
    invoke-static {v0}, Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;->access$000(Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;)I

    move-result v3

    # getter for: Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;->end:I
    invoke-static {v0}, Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;->access$100(Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;)I

    move-result v4

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/contacts/common/format/TextHighlighter;->applyMaskingHighlight(Landroid/text/SpannableString;II)V

    :cond_2
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-direct {p0, v2, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextDirection(I)V

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextAlignment(I)V

    goto :goto_0
.end method

.method public setPhotoPosition(Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;)V
    .locals 0
    .param p1    # Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    return-void
.end method

.method public setPresence(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setQuickContactEnabled(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContactEnabled:Z

    return-void
.end method

.method public setSectionHeader(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07000f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/android/contacts/common/util/ViewUtil;->isViewLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/android/contacts/common/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setSnippet(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mTextHighlighter:Lcom/android/contacts/common/format/TextHighlighter;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getSnippetView()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHighlightedPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/contacts/common/format/TextHighlighter;->setPrefixText(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setStatus(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1    # Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getStatusView()Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/android/contacts/common/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setUnknownNameText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mUnknownNameText:Ljava/lang/CharSequence;

    return-void
.end method

.method public showDisplayName(Landroid/database/Cursor;II)V
    .locals 7
    .param p1    # Landroid/database/Cursor;
    .param p2    # I
    .param p3    # I

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->setDisplayName(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f080095

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/QuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public showPresenceAndStatusMessage(Landroid/database/Cursor;II)V
    .locals 4
    .param p1    # Landroid/database/Cursor;
    .param p2    # I
    .param p3    # I

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/contacts/common/ContactPresenceIconUtil;->getPresenceIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->setPresence(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    invoke-interface {p1, p3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_1
    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/contacts/common/ContactStatusUtil;->getStatusString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactListItemView;->setStatus(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showSnippet(Landroid/database/Cursor;I)V
    .locals 16
    .param p1    # Landroid/database/Cursor;
    .param p2    # I

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v15

    move/from16 v0, p2

    if-gt v15, v0, :cond_0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/contacts/common/list/ContactListItemView;->setSnippet(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface/range {p1 .. p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v15, "deferred_snippeting"

    invoke-virtual {v5, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    const-string v15, "deferred_snippeting_query"

    invoke-virtual {v5, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v2, 0x0

    const-string v15, "display_name"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_1

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v10, v2}, Lcom/android/contacts/common/list/ContactListItemView;->updateSnippet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/contacts/common/list/ContactListItemView;->setSnippet(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eqz v12, :cond_2

    const/4 v7, 0x0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0x5b

    invoke-virtual {v12, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    const/4 v15, -0x1

    if-ne v13, v15, :cond_4

    const/4 v12, 0x0

    goto :goto_1

    :cond_4
    const/16 v15, 0xa

    invoke-virtual {v12, v15, v13}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v6

    const/4 v15, -0x1

    if-eq v6, v15, :cond_5

    add-int/lit8 v7, v6, 0x1

    :cond_5
    const/16 v15, 0x5d

    invoke-virtual {v12, v15}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    const/4 v15, -0x1

    if-eq v4, v15, :cond_6

    const/16 v15, 0xa

    invoke-virtual {v12, v15, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    const/4 v15, -0x1

    if-eq v9, v15, :cond_6

    move v14, v9

    :cond_6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move v8, v7

    :goto_2
    if-ge v8, v14, :cond_8

    invoke-virtual {v12, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v15, 0x5b

    if-eq v1, v15, :cond_7

    const/16 v15, 0x5d

    if-eq v1, v15, :cond_7

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_8
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_1
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
