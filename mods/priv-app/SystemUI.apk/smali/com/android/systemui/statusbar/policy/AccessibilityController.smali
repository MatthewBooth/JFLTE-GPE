.class public Lcom/android/systemui/statusbar/policy/AccessibilityController;
.super Ljava/lang/Object;
.source "AccessibilityController.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/AccessibilityController$AccessibilityStateChangedCallback;
    }
.end annotation


# instance fields
.field private mAccessibilityEnabled:Z

.field private final mChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/AccessibilityController$AccessibilityStateChangedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchExplorationEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/AccessibilityController;->mChangeCallbacks:Ljava/util/ArrayList;

    const-string v1, "accessibility"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/AccessibilityController;->mAccessibilityEnabled:Z

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/AccessibilityController;->mTouchExplorationEnabled:Z

    return-void
.end method

.method private fireChanged()V
    .locals 5

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AccessibilityController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AccessibilityController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/AccessibilityController$AccessibilityStateChangedCallback;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/AccessibilityController;->mAccessibilityEnabled:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/AccessibilityController;->mTouchExplorationEnabled:Z

    invoke-interface {v2, v3, v4}, Lcom/android/systemui/statusbar/policy/AccessibilityController$AccessibilityStateChangedCallback;->onStateChanged(ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addStateChangedCallback(Lcom/android/systemui/statusbar/policy/AccessibilityController$AccessibilityStateChangedCallback;)V
    .locals 2
    .param p1    # Lcom/android/systemui/statusbar/policy/AccessibilityController$AccessibilityStateChangedCallback;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessibilityController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AccessibilityController;->mAccessibilityEnabled:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/AccessibilityController;->mTouchExplorationEnabled:Z

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/statusbar/policy/AccessibilityController$AccessibilityStateChangedCallback;->onStateChanged(ZZ)V

    return-void
.end method

.method public isAccessibilityEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AccessibilityController;->mAccessibilityEnabled:Z

    return v0
.end method

.method public isTouchExplorationEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AccessibilityController;->mTouchExplorationEnabled:Z

    return v0
.end method

.method public onAccessibilityStateChanged(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/AccessibilityController;->mAccessibilityEnabled:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->fireChanged()V

    return-void
.end method

.method public onTouchExplorationStateChanged(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/AccessibilityController;->mTouchExplorationEnabled:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->fireChanged()V

    return-void
.end method
