.class Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4$2;
.super Ljava/lang/Object;
.source "StatusBarHeaderView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4;->onShowingDetail(Lcom/android/systemui/qs/QSTile$DetailAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4;

.field final synthetic val$detail:Lcom/android/systemui/qs/QSTile$DetailAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4;Lcom/android/systemui/qs/QSTile$DetailAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4$2;->val$detail:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4$2;->val$detail:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    # invokes: Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4;->handleShowingDetail(Lcom/android/systemui/qs/QSTile$DetailAdapter;)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4;->access$700(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4;Lcom/android/systemui/qs/QSTile$DetailAdapter;)V

    return-void
.end method
