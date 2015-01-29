.class public abstract Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;
.super Ljava/lang/Object;
.source "CaptioningManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/CaptioningManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CaptioningChangeListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnabledChanged(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public onFontScaleChanged(F)V
    .locals 0
    .param p1    # F

    return-void
.end method

.method public onLocaleChanged(Ljava/util/Locale;)V
    .locals 0
    .param p1    # Ljava/util/Locale;

    return-void
.end method

.method public onUserStyleChanged(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .locals 0
    .param p1    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    return-void
.end method
