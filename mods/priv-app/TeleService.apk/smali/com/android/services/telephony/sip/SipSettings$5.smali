.class Lcom/android/services/telephony/sip/SipSettings$5;
.super Ljava/lang/Object;
.source "SipSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/services/telephony/sip/SipSettings;->handleProfileClick(Landroid/net/sip/SipProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/sip/SipSettings;

.field final synthetic val$profile:Landroid/net/sip/SipProfile;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/sip/SipSettings;Landroid/net/sip/SipProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/sip/SipSettings$5;->this$0:Lcom/android/services/telephony/sip/SipSettings;

    iput-object p2, p0, Lcom/android/services/telephony/sip/SipSettings$5;->val$profile:Landroid/net/sip/SipProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/android/services/telephony/sip/SipSettings$5;->this$0:Lcom/android/services/telephony/sip/SipSettings;

    iget-object v1, p0, Lcom/android/services/telephony/sip/SipSettings$5;->val$profile:Landroid/net/sip/SipProfile;

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/sip/SipSettings;->deleteProfile(Landroid/net/sip/SipProfile;)V

    iget-object v0, p0, Lcom/android/services/telephony/sip/SipSettings$5;->this$0:Lcom/android/services/telephony/sip/SipSettings;

    iget-object v1, p0, Lcom/android/services/telephony/sip/SipSettings$5;->val$profile:Landroid/net/sip/SipProfile;

    # invokes: Lcom/android/services/telephony/sip/SipSettings;->unregisterProfile(Landroid/net/sip/SipProfile;)V
    invoke-static {v0, v1}, Lcom/android/services/telephony/sip/SipSettings;->access$1000(Lcom/android/services/telephony/sip/SipSettings;Landroid/net/sip/SipProfile;)V

    return-void
.end method
