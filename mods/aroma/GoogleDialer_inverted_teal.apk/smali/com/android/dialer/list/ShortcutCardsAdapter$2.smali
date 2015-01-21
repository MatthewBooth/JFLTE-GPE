.class Lcom/android/dialer/list/ShortcutCardsAdapter$2;
.super Ljava/lang/Object;
.source "ShortcutCardsAdapter.java"

# interfaces
.implements Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;


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

    iput-object p1, p0, Lcom/android/dialer/list/ShortcutCardsAdapter$2;->this$0:Lcom/android/dialer/list/ShortcutCardsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallsFetched(Landroid/database/Cursor;)Z
    .locals 1
    .param p1    # Landroid/database/Cursor;

    iget-object v0, p0, Lcom/android/dialer/list/ShortcutCardsAdapter$2;->this$0:Lcom/android/dialer/list/ShortcutCardsAdapter;

    # getter for: Lcom/android/dialer/list/ShortcutCardsAdapter;->mCallLogAdapter:Lcom/android/dialer/calllog/CallLogAdapter;
    invoke-static {v0}, Lcom/android/dialer/list/ShortcutCardsAdapter;->access$300(Lcom/android/dialer/list/ShortcutCardsAdapter;)Lcom/android/dialer/calllog/CallLogAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogAdapter;->invalidateCache()V

    iget-object v0, p0, Lcom/android/dialer/list/ShortcutCardsAdapter$2;->this$0:Lcom/android/dialer/list/ShortcutCardsAdapter;

    # getter for: Lcom/android/dialer/list/ShortcutCardsAdapter;->mCallLogAdapter:Lcom/android/dialer/calllog/CallLogAdapter;
    invoke-static {v0}, Lcom/android/dialer/list/ShortcutCardsAdapter;->access$300(Lcom/android/dialer/list/ShortcutCardsAdapter;)Lcom/android/dialer/calllog/CallLogAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/dialer/calllog/CallLogAdapter;->changeCursor(Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/android/dialer/list/ShortcutCardsAdapter$2;->this$0:Lcom/android/dialer/list/ShortcutCardsAdapter;

    # getter for: Lcom/android/dialer/list/ShortcutCardsAdapter;->mCallLogAdapter:Lcom/android/dialer/calllog/CallLogAdapter;
    invoke-static {v0}, Lcom/android/dialer/list/ShortcutCardsAdapter;->access$300(Lcom/android/dialer/list/ShortcutCardsAdapter;)Lcom/android/dialer/calllog/CallLogAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogAdapter;->notifyDataSetChanged()V

    const/4 v0, 0x1

    return v0
.end method

.method public onVoicemailStatusFetched(Landroid/database/Cursor;)V
    .locals 0
    .param p1    # Landroid/database/Cursor;

    return-void
.end method
