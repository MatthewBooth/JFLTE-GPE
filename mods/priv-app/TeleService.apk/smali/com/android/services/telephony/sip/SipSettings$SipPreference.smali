.class Lcom/android/services/telephony/sip/SipSettings$SipPreference;
.super Landroid/preference/Preference;
.source "SipSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/sip/SipSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SipPreference"
.end annotation


# instance fields
.field mProfile:Landroid/net/sip/SipProfile;

.field final synthetic this$0:Lcom/android/services/telephony/sip/SipSettings;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/sip/SipSettings;Landroid/content/Context;Landroid/net/sip/SipProfile;)V
    .locals 0
    .param p2    # Landroid/content/Context;
    .param p3    # Landroid/net/sip/SipProfile;

    iput-object p1, p0, Lcom/android/services/telephony/sip/SipSettings$SipPreference;->this$0:Lcom/android/services/telephony/sip/SipSettings;

    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p3}, Lcom/android/services/telephony/sip/SipSettings$SipPreference;->setProfile(Landroid/net/sip/SipProfile;)V

    return-void
.end method


# virtual methods
.method setProfile(Landroid/net/sip/SipProfile;)V
    .locals 2
    .param p1    # Landroid/net/sip/SipProfile;

    iput-object p1, p0, Lcom/android/services/telephony/sip/SipSettings$SipPreference;->mProfile:Landroid/net/sip/SipProfile;

    iget-object v0, p0, Lcom/android/services/telephony/sip/SipSettings$SipPreference;->this$0:Lcom/android/services/telephony/sip/SipSettings;

    # invokes: Lcom/android/services/telephony/sip/SipSettings;->getProfileName(Landroid/net/sip/SipProfile;)Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/services/telephony/sip/SipSettings;->access$000(Lcom/android/services/telephony/sip/SipSettings;Landroid/net/sip/SipProfile;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/sip/SipSettings$SipPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/services/telephony/sip/SipSettings$SipPreference;->this$0:Lcom/android/services/telephony/sip/SipSettings;

    # getter for: Lcom/android/services/telephony/sip/SipSettings;->mSipSharedPreferences:Lcom/android/services/telephony/sip/SipSharedPreferences;
    invoke-static {v0}, Lcom/android/services/telephony/sip/SipSettings;->access$100(Lcom/android/services/telephony/sip/SipSettings;)Lcom/android/services/telephony/sip/SipSharedPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/services/telephony/sip/SipSharedPreferences;->isReceivingCallsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/sip/SipSettings$SipPreference;->this$0:Lcom/android/services/telephony/sip/SipSettings;

    const v1, 0x7f080014

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/sip/SipSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/sip/SipSettings$SipPreference;->updateSummary(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/sip/SipSettings$SipPreference;->this$0:Lcom/android/services/telephony/sip/SipSettings;

    const v1, 0x7f080017

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/sip/SipSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method updateSummary(Ljava/lang/String;)V
    .locals 7
    .param p1    # Ljava/lang/String;

    iget-object v2, p0, Lcom/android/services/telephony/sip/SipSettings$SipPreference;->mProfile:Landroid/net/sip/SipProfile;

    invoke-virtual {v2}, Landroid/net/sip/SipProfile;->getCallingUid()I

    move-result v0

    const-string v1, ""

    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/android/services/telephony/sip/SipSettings$SipPreference;->this$0:Lcom/android/services/telephony/sip/SipSettings;

    # getter for: Lcom/android/services/telephony/sip/SipSettings;->mUid:I
    invoke-static {v2}, Lcom/android/services/telephony/sip/SipSettings;->access$200(Lcom/android/services/telephony/sip/SipSettings;)I

    move-result v2

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/services/telephony/sip/SipSettings$SipPreference;->this$0:Lcom/android/services/telephony/sip/SipSettings;

    const v3, 0x7f08001f

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/services/telephony/sip/SipSettings$SipPreference;->this$0:Lcom/android/services/telephony/sip/SipSettings;

    # invokes: Lcom/android/services/telephony/sip/SipSettings;->getPackageNameFromUid(I)Ljava/lang/String;
    invoke-static {v6, v0}, Lcom/android/services/telephony/sip/SipSettings;->access$300(Lcom/android/services/telephony/sip/SipSettings;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/services/telephony/sip/SipSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/services/telephony/sip/SipSettings$SipPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    move-object v1, p1

    goto :goto_0
.end method
