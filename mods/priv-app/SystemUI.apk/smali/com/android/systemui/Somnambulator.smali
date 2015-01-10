.class public Lcom/android/systemui/Somnambulator;
.super Landroid/app/Activity;
.source "Somnambulator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 7

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-virtual {p0}, Lcom/android/systemui/Somnambulator;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v5, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/android/systemui/Somnambulator;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v5, 0x10800000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v5, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v6, 0x7f030001

    invoke-static {p0, v6}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v5, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v5, "android.intent.extra.shortcut.NAME"

    const v6, 0x7f0b00d3

    invoke-virtual {p0, v6}, Lcom/android/systemui/Somnambulator;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v5, -0x1

    invoke-virtual {p0, v5, v3}, Lcom/android/systemui/Somnambulator;->setResult(ILandroid/content/Intent;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/Somnambulator;->finish()V

    return-void

    :cond_0
    const-string v5, "android.intent.category.DESK_DOCK"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Landroid/service/dreams/Sandman;->startDreamWhenDockedIfAppropriate(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Landroid/service/dreams/Sandman;->startDreamByUserRequest(Landroid/content/Context;)V

    goto :goto_0
.end method
