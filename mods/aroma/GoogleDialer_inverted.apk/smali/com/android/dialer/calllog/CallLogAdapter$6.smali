.class Lcom/android/dialer/calllog/CallLogAdapter$6;
.super Ljava/lang/Object;
.source "CallLogAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/calllog/CallLogAdapter;->bindBadge(Landroid/view/View;Lcom/android/dialer/calllog/ContactInfo;Lcom/android/dialer/PhoneCallDetails;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/calllog/CallLogAdapter;

.field final synthetic val$details:Lcom/android/dialer/PhoneCallDetails;


# direct methods
.method constructor <init>(Lcom/android/dialer/calllog/CallLogAdapter;Lcom/android/dialer/PhoneCallDetails;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogAdapter$6;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    iput-object p2, p0, Lcom/android/dialer/calllog/CallLogAdapter$6;->val$details:Lcom/android/dialer/PhoneCallDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter$6;->val$details:Lcom/android/dialer/PhoneCallDetails;

    iget-object v1, v1, Lcom/android/dialer/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-static {v1}, Lcom/android/dialer/DialtactsActivity;->getAddNumberToContactIntent(Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter$6;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    iget-object v1, v1, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
