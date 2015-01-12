.class Lcom/android/dialer/settings/GeneralSettingsFragment$2;
.super Ljava/lang/Object;
.source "GeneralSettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/settings/GeneralSettingsFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/settings/GeneralSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/dialer/settings/GeneralSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/settings/GeneralSettingsFragment$2;->this$0:Lcom/android/dialer/settings/GeneralSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/dialer/settings/GeneralSettingsFragment$2;->this$0:Lcom/android/dialer/settings/GeneralSettingsFragment;

    # getter for: Lcom/android/dialer/settings/GeneralSettingsFragment;->mRingtonePreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/dialer/settings/GeneralSettingsFragment;->access$000(Lcom/android/dialer/settings/GeneralSettingsFragment;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/settings/GeneralSettingsFragment$2;->this$0:Lcom/android/dialer/settings/GeneralSettingsFragment;

    # getter for: Lcom/android/dialer/settings/GeneralSettingsFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/dialer/settings/GeneralSettingsFragment;->access$100(Lcom/android/dialer/settings/GeneralSettingsFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/settings/GeneralSettingsFragment$2;->this$0:Lcom/android/dialer/settings/GeneralSettingsFragment;

    # getter for: Lcom/android/dialer/settings/GeneralSettingsFragment;->mRingtoneLookupComplete:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/dialer/settings/GeneralSettingsFragment;->access$200(Lcom/android/dialer/settings/GeneralSettingsFragment;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/settings/GeneralSettingsFragment$2;->this$0:Lcom/android/dialer/settings/GeneralSettingsFragment;

    # getter for: Lcom/android/dialer/settings/GeneralSettingsFragment;->mRingtonePreference:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/android/dialer/settings/GeneralSettingsFragment;->access$000(Lcom/android/dialer/settings/GeneralSettingsFragment;)Landroid/preference/Preference;

    move-result-object v2

    invoke-static {v0, v1, v3, v2, v3}, Lcom/android/phone/common/util/SettingsUtil;->updateRingtoneName(Landroid/content/Context;Landroid/os/Handler;ILandroid/preference/Preference;I)V

    :cond_0
    return-void
.end method
