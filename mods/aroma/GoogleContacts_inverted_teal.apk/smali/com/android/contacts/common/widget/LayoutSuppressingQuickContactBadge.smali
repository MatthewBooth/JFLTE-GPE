.class public Lcom/android/contacts/common/widget/LayoutSuppressingQuickContactBadge;
.super Landroid/widget/QuickContactBadge;
.source "LayoutSuppressingQuickContactBadge.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public requestLayout()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/contacts/common/widget/LayoutSuppressingQuickContactBadge;->forceLayout()V

    return-void
.end method
