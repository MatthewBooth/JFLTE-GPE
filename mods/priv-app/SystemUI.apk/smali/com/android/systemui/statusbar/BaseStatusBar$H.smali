.class public Lcom/android/systemui/statusbar/BaseStatusBar$H;
.super Landroid/os/Handler;
.source "BaseStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/BaseStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/BaseStatusBar;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$H;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1    # Landroid/os/Message;

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$H;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-lez v3, :cond_1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->showRecents(Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :pswitch_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$H;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-lez v2, :cond_2

    move v2, v0

    :goto_2
    iget v4, p1, Landroid/os/Message;->arg2:I

    if-lez v4, :cond_3

    :goto_3
    invoke-virtual {v3, v2, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->hideRecents(ZZ)V

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_3

    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$H;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->toggleRecents()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$H;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->preloadRecents()V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$H;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->cancelPreloadingRecents()V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$H;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->showRecentsNextAffiliatedTask()V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$H;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->showRecentsPreviousAffiliatedTask()V

    goto :goto_0

    :pswitch_8
    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "StatusBar"

    const-string v3, "closing search panel"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$H;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$H;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/SearchPanelView;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$H;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v2, v1, v0}, Lcom/android/systemui/SearchPanelView;->show(ZZ)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3fb
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method
