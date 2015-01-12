.class Lcom/google/android/dialer/calllog/GoogleCallLogAdapter$1;
.super Ljava/lang/Object;
.source "GoogleCallLogAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;->newChildView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
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

    iput-object p1, p0, Lcom/google/android/dialer/calllog/GoogleCallLogAdapter$1;->this$0:Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/dialer/calllog/GoogleCallLogAdapter$1;->this$0:Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;

    # getter for: Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;->mBadgeContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;->access$000(Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/dialer/calllog/GoogleCallLogAdapter$1;->this$0:Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;

    # getter for: Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;->access$100(Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "google_caller_id_show_enabled_msg"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/google/android/dialer/calllog/GoogleCallLogAdapter$1;->this$0:Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;

    invoke-virtual {v0}, Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;->notifyDataSetChanged()V

    return-void
.end method
