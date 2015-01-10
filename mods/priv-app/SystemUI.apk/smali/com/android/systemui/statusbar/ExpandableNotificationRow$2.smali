.class Lcom/android/systemui/statusbar/ExpandableNotificationRow$2;
.super Ljava/lang/Object;
.source "ExpandableNotificationRow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/ExpandableNotificationRow;->animateShowingPublic(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field final synthetic val$source:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$2;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iput-object p2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$2;->val$source:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$2;->val$source:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
