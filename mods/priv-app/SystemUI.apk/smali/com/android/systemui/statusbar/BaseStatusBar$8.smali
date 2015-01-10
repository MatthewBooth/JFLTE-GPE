.class Lcom/android/systemui/statusbar/BaseStatusBar$8;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar;->inflateGuts(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

.field final synthetic val$appUidF:I

.field final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$8;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$8;->val$pkg:Ljava/lang/String;

    iput p3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$8;->val$appUidF:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$8;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$8;->val$pkg:Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$8;->val$appUidF:I

    # invokes: Lcom/android/systemui/statusbar/BaseStatusBar;->startAppNotificationSettingsActivity(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$500(Lcom/android/systemui/statusbar/BaseStatusBar;Ljava/lang/String;I)V

    return-void
.end method
