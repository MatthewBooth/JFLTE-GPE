.class Lcom/android/dialer/list/ShortcutCardsAdapter$CustomDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "ShortcutCardsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/list/ShortcutCardsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/list/ShortcutCardsAdapter;


# direct methods
.method private constructor <init>(Lcom/android/dialer/list/ShortcutCardsAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/list/ShortcutCardsAdapter$CustomDataSetObserver;->this$0:Lcom/android/dialer/list/ShortcutCardsAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/list/ShortcutCardsAdapter;Lcom/android/dialer/list/ShortcutCardsAdapter$1;)V
    .locals 0
    .param p1    # Lcom/android/dialer/list/ShortcutCardsAdapter;
    .param p2    # Lcom/android/dialer/list/ShortcutCardsAdapter$1;

    invoke-direct {p0, p1}, Lcom/android/dialer/list/ShortcutCardsAdapter$CustomDataSetObserver;-><init>(Lcom/android/dialer/list/ShortcutCardsAdapter;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/list/ShortcutCardsAdapter$CustomDataSetObserver;->this$0:Lcom/android/dialer/list/ShortcutCardsAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/list/ShortcutCardsAdapter;->notifyDataSetChanged()V

    return-void
.end method
