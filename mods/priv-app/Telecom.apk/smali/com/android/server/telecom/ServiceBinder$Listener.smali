.class Lcom/android/server/telecom/ServiceBinder$Listener;
.super Ljava/lang/Object;
.source "ServiceBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/ServiceBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Listener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/server/telecom/ServiceBinder$Listener",
        "<",
        "Lcom/android/server/telecom/ConnectionServiceWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

.field private final mServiceCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/telecom/ConnectionServiceWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/telecom/PhoneAccountRegistrar;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/telecom/ServiceBinder$Listener;->mServiceCache:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/server/telecom/ServiceBinder$Listener;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    iput-object p2, p0, Lcom/android/server/telecom/ServiceBinder$Listener;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method getService(Landroid/content/ComponentName;)Lcom/android/server/telecom/ConnectionServiceWrapper;
    .locals 3

    iget-object v0, p0, Lcom/android/server/telecom/ServiceBinder$Listener;->mServiceCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/ConnectionServiceWrapper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/telecom/ConnectionServiceWrapper;

    iget-object v1, p0, Lcom/android/server/telecom/ServiceBinder$Listener;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    iget-object v2, p0, Lcom/android/server/telecom/ServiceBinder$Listener;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1, p0, v1, v2}, Lcom/android/server/telecom/ConnectionServiceWrapper;-><init>(Landroid/content/ComponentName;Lcom/android/server/telecom/ServiceBinder$Listener;Lcom/android/server/telecom/PhoneAccountRegistrar;Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->addListener(Lcom/android/server/telecom/ServiceBinder$Listener;)V

    iget-object v1, p0, Lcom/android/server/telecom/ServiceBinder$Listener;->mServiceCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public onUnbind(Lcom/android/server/telecom/ConnectionServiceWrapper;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/ServiceBinder$Listener;->mServiceCache:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/server/telecom/ConnectionServiceWrapper;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic onUnbind(Lcom/android/server/telecom/ServiceBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TServiceBinderClass;)V"
        }
    .end annotation

    check-cast p1, Lcom/android/server/telecom/ConnectionServiceWrapper;

    invoke-virtual {p0, p1}, Lcom/android/server/telecom/ServiceBinder$Listener;->onUnbind(Lcom/android/server/telecom/ConnectionServiceWrapper;)V

    return-void
.end method
