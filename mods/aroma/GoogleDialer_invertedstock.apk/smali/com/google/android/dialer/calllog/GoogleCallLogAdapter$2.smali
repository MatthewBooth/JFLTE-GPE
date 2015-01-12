.class Lcom/google/android/dialer/calllog/GoogleCallLogAdapter$2;
.super Ljava/lang/Object;
.source "GoogleCallLogAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;->bindBadge(Landroid/view/View;Lcom/android/dialer/calllog/ContactInfo;Lcom/android/dialer/PhoneCallDetails;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/dialer/calllog/GoogleCallLogAdapter$2;->this$0:Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/dialer/calllog/GoogleCallLogAdapter$2;->this$0:Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;

    # getter for: Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;->access$200(Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/google/android/dialer/settings/GoogleDialerSettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, ":android:show_fragment"

    const-class v2, Lcom/google/android/dialer/settings/GoogleCallerIdSettingsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, ":android:show_fragment_title"

    const v2, 0x7f080295

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/dialer/calllog/GoogleCallLogAdapter$2;->this$0:Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;

    # getter for: Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;->access$300(Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
