.class Landroid/app/ActivityView$ActivityContainerCallback$1;
.super Ljava/lang/Object;
.source "ActivityView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ActivityView$ActivityContainerCallback;->onAllActivitiesComplete(Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ActivityView$ActivityContainerCallback;

.field final synthetic val$activityView:Landroid/app/ActivityView;

.field final synthetic val$callback:Landroid/app/ActivityView$ActivityViewCallback;


# direct methods
.method constructor <init>(Landroid/app/ActivityView$ActivityContainerCallback;Landroid/app/ActivityView$ActivityViewCallback;Landroid/app/ActivityView;)V
    .locals 0

    iput-object p1, p0, Landroid/app/ActivityView$ActivityContainerCallback$1;->this$0:Landroid/app/ActivityView$ActivityContainerCallback;

    iput-object p2, p0, Landroid/app/ActivityView$ActivityContainerCallback$1;->val$callback:Landroid/app/ActivityView$ActivityViewCallback;

    iput-object p3, p0, Landroid/app/ActivityView$ActivityContainerCallback$1;->val$activityView:Landroid/app/ActivityView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/app/ActivityView$ActivityContainerCallback$1;->val$callback:Landroid/app/ActivityView$ActivityViewCallback;

    iget-object v1, p0, Landroid/app/ActivityView$ActivityContainerCallback$1;->val$activityView:Landroid/app/ActivityView;

    invoke-virtual {v0, v1}, Landroid/app/ActivityView$ActivityViewCallback;->onAllActivitiesComplete(Landroid/app/ActivityView;)V

    return-void
.end method
