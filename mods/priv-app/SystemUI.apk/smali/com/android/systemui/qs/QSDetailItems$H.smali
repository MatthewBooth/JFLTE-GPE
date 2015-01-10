.class Lcom/android/systemui/qs/QSDetailItems$H;
.super Landroid/os/Handler;
.source "QSDetailItems.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSDetailItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSDetailItems;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSDetailItems;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/qs/QSDetailItems$H;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1    # Landroid/os/Message;

    const/4 v0, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetailItems$H;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Lcom/android/systemui/qs/QSDetailItems$Item;

    check-cast v0, [Lcom/android/systemui/qs/QSDetailItems$Item;

    # invokes: Lcom/android/systemui/qs/QSDetailItems;->handleSetItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V
    invoke-static {v1, v0}, Lcom/android/systemui/qs/QSDetailItems;->access$100(Lcom/android/systemui/qs/QSDetailItems;[Lcom/android/systemui/qs/QSDetailItems$Item;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetailItems$H;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/qs/QSDetailItems$Callback;

    # invokes: Lcom/android/systemui/qs/QSDetailItems;->handleSetCallback(Lcom/android/systemui/qs/QSDetailItems$Callback;)V
    invoke-static {v1, v0}, Lcom/android/systemui/qs/QSDetailItems;->access$200(Lcom/android/systemui/qs/QSDetailItems;Lcom/android/systemui/qs/QSDetailItems$Callback;)V

    goto :goto_0

    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetailItems$H;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_3

    :goto_1
    # invokes: Lcom/android/systemui/qs/QSDetailItems;->handleSetItemsVisible(Z)V
    invoke-static {v1, v0}, Lcom/android/systemui/qs/QSDetailItems;->access$300(Lcom/android/systemui/qs/QSDetailItems;Z)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
