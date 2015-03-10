.class Lcom/android/phone/PrimarySubSetting$3;
.super Ljava/lang/Object;
.source "PrimarySubSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PrimarySubSetting;->showFailedDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PrimarySubSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/PrimarySubSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/PrimarySubSetting$3;->this$0:Lcom/android/phone/PrimarySubSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const-string v0, "com.android.settings.sim.SIM_SUB_INFO_SETTINGS"

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/PrimarySubSetting$3;->this$0:Lcom/android/phone/PrimarySubSetting;

    invoke-virtual {v2, v1}, Lcom/android/phone/PrimarySubSetting;->startActivity(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/android/phone/PrimarySubSetting$3;->this$0:Lcom/android/phone/PrimarySubSetting;

    invoke-virtual {v2}, Lcom/android/phone/PrimarySubSetting;->finish()V

    return-void
.end method
