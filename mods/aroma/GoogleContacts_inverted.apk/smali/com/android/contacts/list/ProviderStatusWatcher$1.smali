.class Lcom/android/contacts/list/ProviderStatusWatcher$1;
.super Ljava/lang/Object;
.source "ProviderStatusWatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/ProviderStatusWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/ProviderStatusWatcher;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/ProviderStatusWatcher;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/list/ProviderStatusWatcher$1;->this$0:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ProviderStatusWatcher$1;->this$0:Lcom/android/contacts/list/ProviderStatusWatcher;

    # invokes: Lcom/android/contacts/list/ProviderStatusWatcher;->startLoading()V
    invoke-static {v0}, Lcom/android/contacts/list/ProviderStatusWatcher;->access$000(Lcom/android/contacts/list/ProviderStatusWatcher;)V

    return-void
.end method
