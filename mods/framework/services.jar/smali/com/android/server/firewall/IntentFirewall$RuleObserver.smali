.class Lcom/android/server/firewall/IntentFirewall$RuleObserver;
.super Landroid/os/FileObserver;
.source "IntentFirewall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/firewall/IntentFirewall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RuleObserver"
.end annotation


# static fields
.field private static final MONITORED_EVENTS:I = 0x3c8


# instance fields
.field final synthetic this$0:Lcom/android/server/firewall/IntentFirewall;


# direct methods
.method public constructor <init>(Lcom/android/server/firewall/IntentFirewall;Ljava/io/File;)V
    .locals 2
    .param p2    # Ljava/io/File;

    iput-object p1, p0, Lcom/android/server/firewall/IntentFirewall$RuleObserver;->this$0:Lcom/android/server/firewall/IntentFirewall;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3c8

    invoke-direct {p0, v0, v1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 4
    .param p1    # I
    .param p2    # Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, ".xml"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/firewall/IntentFirewall$RuleObserver;->this$0:Lcom/android/server/firewall/IntentFirewall;

    iget-object v0, v0, Lcom/android/server/firewall/IntentFirewall;->mHandler:Lcom/android/server/firewall/IntentFirewall$FirewallHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/firewall/IntentFirewall$FirewallHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/firewall/IntentFirewall$RuleObserver;->this$0:Lcom/android/server/firewall/IntentFirewall;

    iget-object v0, v0, Lcom/android/server/firewall/IntentFirewall;->mHandler:Lcom/android/server/firewall/IntentFirewall$FirewallHandler;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/firewall/IntentFirewall$FirewallHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method
