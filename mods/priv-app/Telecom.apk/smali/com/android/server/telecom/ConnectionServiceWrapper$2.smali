.class final Lcom/android/server/telecom/ConnectionServiceWrapper$2;
.super Lcom/android/server/telecom/PhoneAccountRegistrar$Listener;
.source "ConnectionServiceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/ConnectionServiceWrapper;-><init>(Landroid/content/ComponentName;Lcom/android/server/telecom/ServiceBinder$Listener;Lcom/android/server/telecom/PhoneAccountRegistrar;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/android/server/telecom/ConnectionServiceWrapper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/telecom/PhoneAccountRegistrar$Listener;-><init>()V

    return-void
.end method
