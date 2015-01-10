.class public Lcom/android/systemui/egg/LLandActivity;
.super Landroid/app/Activity;
.source "LLandActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f040023

    invoke-virtual {p0, v1}, Lcom/android/systemui/egg/LLandActivity;->setContentView(I)V

    const v1, 0x7f0e00a7

    invoke-virtual {p0, v1}, Lcom/android/systemui/egg/LLandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/egg/LLand;

    const v1, 0x7f0e00a8

    invoke-virtual {p0, v1}, Lcom/android/systemui/egg/LLandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/egg/LLand;->setScoreField(Landroid/widget/TextView;)V

    const v1, 0x7f0e00a9

    invoke-virtual {p0, v1}, Lcom/android/systemui/egg/LLandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/egg/LLand;->setSplash(Landroid/view/View;)V

    const-string v1, "LLand"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "focus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/systemui/egg/LLand;->requestFocus()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
