.class Lcom/android/systemui/net/NetworkOverLimitActivity$1;
.super Ljava/lang/Object;
.source "NetworkOverLimitActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/net/NetworkOverLimitActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/net/NetworkOverLimitActivity;

.field final synthetic val$template:Landroid/net/NetworkTemplate;


# direct methods
.method constructor <init>(Lcom/android/systemui/net/NetworkOverLimitActivity;Landroid/net/NetworkTemplate;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/net/NetworkOverLimitActivity$1;->this$0:Lcom/android/systemui/net/NetworkOverLimitActivity;

    iput-object p2, p0, Lcom/android/systemui/net/NetworkOverLimitActivity$1;->val$template:Landroid/net/NetworkTemplate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/android/systemui/net/NetworkOverLimitActivity$1;->this$0:Lcom/android/systemui/net/NetworkOverLimitActivity;

    iget-object v1, p0, Lcom/android/systemui/net/NetworkOverLimitActivity$1;->val$template:Landroid/net/NetworkTemplate;

    # invokes: Lcom/android/systemui/net/NetworkOverLimitActivity;->snoozePolicy(Landroid/net/NetworkTemplate;)V
    invoke-static {v0, v1}, Lcom/android/systemui/net/NetworkOverLimitActivity;->access$000(Lcom/android/systemui/net/NetworkOverLimitActivity;Landroid/net/NetworkTemplate;)V

    return-void
.end method
