.class Lcom/android/dialer/list/ShortcutCardsAdapter$1;
.super Ljava/lang/Object;
.source "ShortcutCardsAdapter.java"

# interfaces
.implements Lcom/android/dialer/list/SwipeHelper$OnItemGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/list/ShortcutCardsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/list/ShortcutCardsAdapter;


# direct methods
.method constructor <init>(Lcom/android/dialer/list/ShortcutCardsAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/list/ShortcutCardsAdapter$1;->this$0:Lcom/android/dialer/list/ShortcutCardsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwipe(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/dialer/list/ShortcutCardsAdapter$1;->this$0:Lcom/android/dialer/list/ShortcutCardsAdapter;

    # getter for: Lcom/android/dialer/list/ShortcutCardsAdapter;->mCallLogQueryHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;
    invoke-static {v0}, Lcom/android/dialer/list/ShortcutCardsAdapter;->access$000(Lcom/android/dialer/list/ShortcutCardsAdapter;)Lcom/android/dialer/calllog/CallLogQueryHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogQueryHandler;->markNewCallsAsOld()V

    iget-object v0, p0, Lcom/android/dialer/list/ShortcutCardsAdapter$1;->this$0:Lcom/android/dialer/list/ShortcutCardsAdapter;

    # getter for: Lcom/android/dialer/list/ShortcutCardsAdapter;->mCallLogQueryHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;
    invoke-static {v0}, Lcom/android/dialer/list/ShortcutCardsAdapter;->access$000(Lcom/android/dialer/list/ShortcutCardsAdapter;)Lcom/android/dialer/calllog/CallLogQueryHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogQueryHandler;->markNewVoicemailsAsOld()V

    iget-object v0, p0, Lcom/android/dialer/list/ShortcutCardsAdapter$1;->this$0:Lcom/android/dialer/list/ShortcutCardsAdapter;

    # getter for: Lcom/android/dialer/list/ShortcutCardsAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/dialer/list/ShortcutCardsAdapter;->access$100(Lcom/android/dialer/list/ShortcutCardsAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogNotificationsHelper;->removeMissedCallNotifications(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/dialer/list/ShortcutCardsAdapter$1;->this$0:Lcom/android/dialer/list/ShortcutCardsAdapter;

    # getter for: Lcom/android/dialer/list/ShortcutCardsAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/dialer/list/ShortcutCardsAdapter;->access$100(Lcom/android/dialer/list/ShortcutCardsAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogNotificationsHelper;->updateVoicemailNotifications(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/dialer/list/ShortcutCardsAdapter$1;->this$0:Lcom/android/dialer/list/ShortcutCardsAdapter;

    # getter for: Lcom/android/dialer/list/ShortcutCardsAdapter;->mFragment:Lcom/android/dialer/list/ListsFragment;
    invoke-static {v0}, Lcom/android/dialer/list/ShortcutCardsAdapter;->access$200(Lcom/android/dialer/list/ShortcutCardsAdapter;)Lcom/android/dialer/list/ListsFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/dialer/list/ListsFragment;->dismissShortcut(Landroid/view/View;)V

    return-void
.end method
