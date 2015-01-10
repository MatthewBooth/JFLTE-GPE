.class public Lcom/android/systemui/DessertCase;
.super Landroid/app/Activity;
.source "DessertCase.java"


# instance fields
.field mView:Lcom/android/systemui/DessertCaseView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/android/systemui/DessertCase;->mView:Lcom/android/systemui/DessertCaseView;

    invoke-virtual {v0}, Lcom/android/systemui/DessertCaseView;->stop()V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/android/systemui/DessertCase;->mView:Lcom/android/systemui/DessertCaseView;

    new-instance v1, Lcom/android/systemui/DessertCase$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/DessertCase$1;-><init>(Lcom/android/systemui/DessertCase;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/DessertCaseView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onStart()V
    .locals 6

    const/4 v5, 0x1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-virtual {p0}, Lcom/android/systemui/DessertCase;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v0, Landroid/content/ComponentName;

    const-class v3, Lcom/android/systemui/DessertCaseDream;

    invoke-direct {v0, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v3

    if-eq v3, v5, :cond_0

    const-string v3, "DessertCase"

    const-string v4, "ACHIEVEMENT UNLOCKED"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v0, v5, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    :cond_0
    new-instance v3, Lcom/android/systemui/DessertCaseView;

    invoke-direct {v3, p0}, Lcom/android/systemui/DessertCaseView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/DessertCase;->mView:Lcom/android/systemui/DessertCaseView;

    new-instance v1, Lcom/android/systemui/DessertCaseView$RescalingContainer;

    invoke-direct {v1, p0}, Lcom/android/systemui/DessertCaseView$RescalingContainer;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/systemui/DessertCase;->mView:Lcom/android/systemui/DessertCaseView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/DessertCaseView$RescalingContainer;->setView(Lcom/android/systemui/DessertCaseView;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/DessertCase;->setContentView(Landroid/view/View;)V

    return-void
.end method
