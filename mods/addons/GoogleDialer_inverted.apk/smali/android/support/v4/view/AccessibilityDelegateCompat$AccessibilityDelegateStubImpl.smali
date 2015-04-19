.class Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateStubImpl;
.super Ljava/lang/Object;
.source "AccessibilityDelegateCompat.java"

# interfaces
.implements Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/AccessibilityDelegateCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityDelegateStubImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/accessibility/AccessibilityEvent;

    const/4 v0, 0x0

    return v0
.end method

.method public getAccessibilityNodeProvider(Ljava/lang/Object;Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
    .locals 1
    .param p1    # Ljava/lang/Object;
    .param p2    # Landroid/view/View;

    const/4 v0, 0x0

    return-object v0
.end method

.method public newAccessiblityDelegateBridge(Landroid/support/v4/view/AccessibilityDelegateCompat;)Ljava/lang/Object;
    .locals 1
    .param p1    # Landroid/support/v4/view/AccessibilityDelegateCompat;

    const/4 v0, 0x0

    return-object v0
.end method

.method public newAccessiblityDelegateDefaultImpl()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/accessibility/AccessibilityEvent;

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Ljava/lang/Object;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    return-void
.end method

.method public onPopulateAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/accessibility/AccessibilityEvent;

    return-void
.end method

.method public onRequestSendAccessibilityEvent(Ljava/lang/Object;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/view/View;
    .param p4    # Landroid/view/accessibility/AccessibilityEvent;

    const/4 v0, 0x1

    return v0
.end method

.method public performAccessibilityAction(Ljava/lang/Object;Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
    .param p2    # Landroid/view/View;
    .param p3    # I
    .param p4    # Landroid/os/Bundle;

    const/4 v0, 0x0

    return v0
.end method

.method public sendAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0
    .param p1    # Ljava/lang/Object;
    .param p2    # Landroid/view/View;
    .param p3    # I

    return-void
.end method

.method public sendAccessibilityEventUnchecked(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/accessibility/AccessibilityEvent;

    return-void
.end method
