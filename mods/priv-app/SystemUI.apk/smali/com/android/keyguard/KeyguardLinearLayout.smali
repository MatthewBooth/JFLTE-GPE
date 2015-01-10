.class public Lcom/android/keyguard/KeyguardLinearLayout;
.super Landroid/widget/LinearLayout;
.source "KeyguardLinearLayout.java"


# instance fields
.field mTopChild:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/KeyguardLinearLayout;->mTopChild:I

    return-void
.end method


# virtual methods
.method public setTopChild(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardLinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardLinearLayout;->mTopChild:I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardLinearLayout;->invalidate()V

    return-void
.end method
