.class public Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;
.super Ljava/lang/Object;
.source "MaterialColorMapUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/util/MaterialColorMapUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MaterialPalette"
.end annotation


# instance fields
.field public final mPrimaryColor:I

.field public final mSecondaryColor:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1    # I
    .param p2    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;->mPrimaryColor:I

    iput p2, p0, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;->mSecondaryColor:I

    return-void
.end method
