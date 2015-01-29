.class public Landroid/print/pdf/PrintedPdfDocument;
.super Landroid/graphics/pdf/PdfDocument;
.source "PrintedPdfDocument.java"


# static fields
.field private static final MILS_PER_INCH:I = 0x3e8

.field private static final POINTS_IN_INCH:I = 0x48


# instance fields
.field private final mContentRect:Landroid/graphics/Rect;

.field private final mPageHeight:I

.field private final mPageWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/print/PrintAttributes;)V
    .locals 9
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/print/PrintAttributes;

    const/high16 v8, 0x447a0000

    const/high16 v7, 0x42900000

    invoke-direct {p0}, Landroid/graphics/pdf/PdfDocument;-><init>()V

    invoke-virtual {p2}, Landroid/print/PrintAttributes;->getMediaSize()Landroid/print/PrintAttributes$MediaSize;

    move-result-object v4

    invoke-virtual {v4}, Landroid/print/PrintAttributes$MediaSize;->getWidthMils()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v8

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Landroid/print/pdf/PrintedPdfDocument;->mPageWidth:I

    invoke-virtual {v4}, Landroid/print/PrintAttributes$MediaSize;->getHeightMils()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v8

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Landroid/print/pdf/PrintedPdfDocument;->mPageHeight:I

    invoke-virtual {p2}, Landroid/print/PrintAttributes;->getMinMargins()Landroid/print/PrintAttributes$Margins;

    move-result-object v5

    invoke-virtual {v5}, Landroid/print/PrintAttributes$Margins;->getLeftMils()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v8

    mul-float/2addr v6, v7

    float-to-int v1, v6

    invoke-virtual {v5}, Landroid/print/PrintAttributes$Margins;->getTopMils()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v8

    mul-float/2addr v6, v7

    float-to-int v3, v6

    invoke-virtual {v5}, Landroid/print/PrintAttributes$Margins;->getRightMils()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v8

    mul-float/2addr v6, v7

    float-to-int v2, v6

    invoke-virtual {v5}, Landroid/print/PrintAttributes$Margins;->getBottomMils()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v8

    mul-float/2addr v6, v7

    float-to-int v0, v6

    new-instance v6, Landroid/graphics/Rect;

    iget v7, p0, Landroid/print/pdf/PrintedPdfDocument;->mPageWidth:I

    sub-int/2addr v7, v2

    iget v8, p0, Landroid/print/pdf/PrintedPdfDocument;->mPageHeight:I

    sub-int/2addr v8, v0

    invoke-direct {v6, v1, v3, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v6, p0, Landroid/print/pdf/PrintedPdfDocument;->mContentRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getPageContentRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/print/pdf/PrintedPdfDocument;->mContentRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getPageHeight()I
    .locals 1

    iget v0, p0, Landroid/print/pdf/PrintedPdfDocument;->mPageHeight:I

    return v0
.end method

.method public getPageWidth()I
    .locals 1

    iget v0, p0, Landroid/print/pdf/PrintedPdfDocument;->mPageWidth:I

    return v0
.end method

.method public startPage(I)Landroid/graphics/pdf/PdfDocument$Page;
    .locals 4
    .param p1    # I

    new-instance v1, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;

    iget v2, p0, Landroid/print/pdf/PrintedPdfDocument;->mPageWidth:I

    iget v3, p0, Landroid/print/pdf/PrintedPdfDocument;->mPageHeight:I

    invoke-direct {v1, v2, v3, p1}, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;-><init>(III)V

    iget-object v2, p0, Landroid/print/pdf/PrintedPdfDocument;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->setContentRect(Landroid/graphics/Rect;)Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->create()Landroid/graphics/pdf/PdfDocument$PageInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/print/pdf/PrintedPdfDocument;->startPage(Landroid/graphics/pdf/PdfDocument$PageInfo;)Landroid/graphics/pdf/PdfDocument$Page;

    move-result-object v1

    return-object v1
.end method
