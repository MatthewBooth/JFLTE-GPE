.class Lcom/android/phone/settings/PhoneAccountSettingsFragment$1;
.super Ljava/lang/Object;
.source "PhoneAccountSettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/settings/PhoneAccountSettingsFragment;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/PhoneAccountSettingsFragment;

.field final synthetic val$isEnabled:Z


# direct methods
.method constructor <init>(Lcom/android/phone/settings/PhoneAccountSettingsFragment;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment$1;->this$0:Lcom/android/phone/settings/PhoneAccountSettingsFragment;

    iput-boolean p2, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment$1;->val$isEnabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment$1;->this$0:Lcom/android/phone/settings/PhoneAccountSettingsFragment;

    iget-boolean v1, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment$1;->val$isEnabled:Z

    # invokes: Lcom/android/phone/settings/PhoneAccountSettingsFragment;->handleSipReceiveCallsOption(Z)V
    invoke-static {v0, v1}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->access$000(Lcom/android/phone/settings/PhoneAccountSettingsFragment;Z)V

    return-void
.end method
