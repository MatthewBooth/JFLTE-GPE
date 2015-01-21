.class public Lcom/android/contacts/common/widget/LayoutSuppressingImageView;
.super Landroid/widget/ImageView;
.source "LayoutSuppressingImageView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public requestLayout()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/contacts/common/widget/LayoutSuppressingImageView;->forceLayout()V

    return-void
.end method
