.class public Lcom/android/contacts/common/lettertiles/LetterTileDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "LetterTileDrawable.java"


# static fields
.field private static DEFAULT_BUSINESS_AVATAR:Landroid/graphics/Bitmap;

.field private static DEFAULT_PERSON_AVATAR:Landroid/graphics/Bitmap;

.field private static DEFAULT_VOICEMAIL_AVATAR:Landroid/graphics/Bitmap;

.field private static sColors:Landroid/content/res/TypedArray;

.field private static sDefaultColor:I

.field private static final sFirstChar:[C

.field private static sLetterToTileRatio:F

.field private static final sPaint:Landroid/graphics/Paint;

.field private static final sRect:Landroid/graphics/Rect;

.field private static sTileFontColor:I


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContactType:I

.field private mDisplayName:Ljava/lang/String;

.field private mIdentifier:Ljava/lang/String;

.field private mIsCircle:Z

.field private mOffset:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sRect:Landroid/graphics/Rect;

    const/4 v0, 0x1

    new-array v0, v0, [C

    sput-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sFirstChar:[C

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 4
    .param p1    # Landroid/content/res/Resources;

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const-class v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->TAG:Ljava/lang/String;

    iput v2, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mContactType:I

    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mScale:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mOffset:F

    iput-boolean v3, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mIsCircle:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    sget-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sColors:Landroid/content/res/TypedArray;

    if-nez v0, :cond_0

    const/high16 v0, 0x7f0c0000

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sColors:Landroid/content/res/TypedArray;

    const v0, 0x7f090034

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sDefaultColor:I

    const v0, 0x7f090035

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sTileFontColor:I

    const v0, 0x7f0b0043

    invoke-virtual {p1, v0, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    sput v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sLetterToTileRatio:F

    const v0, 0x7f020090

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->DEFAULT_PERSON_AVATAR:Landroid/graphics/Bitmap;

    const v0, 0x7f02004b

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->DEFAULT_BUSINESS_AVATAR:Landroid/graphics/Bitmap;

    const v0, 0x7f0200d0

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->DEFAULT_VOICEMAIL_AVATAR:Landroid/graphics/Bitmap;

    sget-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    const v1, 0x7f080138

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    sget-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    sget-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    :cond_0
    return-void
.end method

.method private drawBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Canvas;)V
    .locals 9
    .param p1    # Landroid/graphics/Bitmap;
    .param p2    # I
    .param p3    # I
    .param p4    # Landroid/graphics/Canvas;

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v2, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mScale:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x40000000

    div-float/2addr v2, v3

    float-to-int v1, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    sub-int/2addr v3, v1

    int-to-float v3, v3

    iget v4, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mOffset:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    add-int/2addr v5, v1

    int-to-float v5, v5

    iget v6, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mOffset:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v2, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v8, v8, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v2, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p4, p1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawLetterTile(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1    # Landroid/graphics/Canvas;

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mIdentifier:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->pickColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    iget-boolean v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mIsCircle:Z

    if-eqz v0, :cond_0

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    div-int/lit8 v4, v9, 0x2

    int-to-float v4, v4

    sget-object v5, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_0
    iget-object v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mDisplayName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->isEnglishLetter(C)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sFirstChar:[C

    iget-object v1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    aput-char v1, v0, v2

    sget-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mScale:F

    sget v4, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sLetterToTileRatio:F

    mul-float/2addr v1, v4

    int-to-float v4, v9

    mul-float/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    sget-object v1, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sFirstChar:[C

    sget-object v4, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds([CIILandroid/graphics/Rect;)V

    sget-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sTileFontColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sFirstChar:[C

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    iget v5, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mOffset:F

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v0, v5

    sget-object v5, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v5, v0

    sget-object v6, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    :goto_1
    return-void

    :cond_0
    sget-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mContactType:I

    invoke-static {v0}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->getBitmapForContactType(I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {p0, v7, v0, v1, p1}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->drawBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method private static getBitmapForContactType(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0    # I

    packed-switch p0, :pswitch_data_0

    sget-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->DEFAULT_PERSON_AVATAR:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->DEFAULT_PERSON_AVATAR:Landroid/graphics/Bitmap;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->DEFAULT_BUSINESS_AVATAR:Landroid/graphics/Bitmap;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->DEFAULT_VOICEMAIL_AVATAR:Landroid/graphics/Bitmap;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static isEnglishLetter(C)Z
    .locals 1
    .param p0    # C

    const/16 v0, 0x41

    if-gt v0, p0, :cond_0

    const/16 v0, 0x5a

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_2

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pickColor(Ljava/lang/String;)I
    .locals 3
    .param p1    # Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mContactType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    sget v1, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sDefaultColor:I

    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sget-object v2, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sColors:Landroid/content/res/TypedArray;

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    rem-int v0, v1, v2

    sget-object v1, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sColors:Landroid/content/res/TypedArray;

    sget v2, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sDefaultColor:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1    # Landroid/graphics/Canvas;

    invoke-virtual {p0}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->drawLetterTile(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1    # Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setContactDetails(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mDisplayName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mIdentifier:Ljava/lang/String;

    return-void
.end method

.method public setContactType(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mContactType:I

    return-void
.end method

.method public setIsCircular(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mIsCircle:Z

    return-void
.end method

.method public setOffset(F)V
    .locals 1
    .param p1    # F

    const/high16 v0, -0x41000000

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f000000

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    iput p1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mOffset:F

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setScale(F)V
    .locals 0
    .param p1    # F

    iput p1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mScale:F

    return-void
.end method
