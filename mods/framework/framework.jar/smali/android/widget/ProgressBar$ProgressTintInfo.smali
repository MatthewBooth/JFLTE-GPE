.class Landroid/widget/ProgressBar$ProgressTintInfo;
.super Ljava/lang/Object;
.source "ProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProgressTintInfo"
.end annotation


# instance fields
.field mHasIndeterminateTint:Z

.field mHasIndeterminateTintMode:Z

.field mHasProgressBackgroundTint:Z

.field mHasProgressBackgroundTintMode:Z

.field mHasProgressTint:Z

.field mHasProgressTintMode:Z

.field mHasSecondaryProgressTint:Z

.field mHasSecondaryProgressTintMode:Z

.field mIndeterminateTintList:Landroid/content/res/ColorStateList;

.field mIndeterminateTintMode:Landroid/graphics/PorterDuff$Mode;

.field mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

.field mProgressBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

.field mProgressTintList:Landroid/content/res/ColorStateList;

.field mProgressTintMode:Landroid/graphics/PorterDuff$Mode;

.field mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

.field mSecondaryProgressTintMode:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ProgressBar$1;)V
    .locals 0
    .param p1    # Landroid/widget/ProgressBar$1;

    invoke-direct {p0}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>()V

    return-void
.end method
