.class Lcom/android/services/telephony/sip/SipSettings$4;
.super Ljava/lang/Object;
.source "SipSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/services/telephony/sip/SipSettings;->addPreferenceFor(Landroid/net/sip/SipProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/sip/SipSettings;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/sip/SipSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/sip/SipSettings$4;->this$0:Lcom/android/services/telephony/sip/SipSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1    # Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/services/telephony/sip/SipSettings$4;->this$0:Lcom/android/services/telephony/sip/SipSettings;

    check-cast p1, Lcom/android/services/telephony/sip/SipSettings$SipPreference;

    iget-object v1, p1, Lcom/android/services/telephony/sip/SipSettings$SipPreference;->mProfile:Landroid/net/sip/SipProfile;

    # invokes: Lcom/android/services/telephony/sip/SipSettings;->handleProfileClick(Landroid/net/sip/SipProfile;)V
    invoke-static {v0, v1}, Lcom/android/services/telephony/sip/SipSettings;->access$900(Lcom/android/services/telephony/sip/SipSettings;Landroid/net/sip/SipProfile;)V

    const/4 v0, 0x1

    return v0
.end method
