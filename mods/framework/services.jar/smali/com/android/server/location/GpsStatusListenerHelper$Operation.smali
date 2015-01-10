.class abstract Lcom/android/server/location/GpsStatusListenerHelper$Operation;
.super Ljava/lang/Object;
.source "GpsStatusListenerHelper.java"

# interfaces
.implements Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsStatusListenerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation",
        "<",
        "Landroid/location/IGpsStatusListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsStatusListenerHelper;


# direct methods
.method private constructor <init>(Lcom/android/server/location/GpsStatusListenerHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/GpsStatusListenerHelper$Operation;->this$0:Lcom/android/server/location/GpsStatusListenerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/GpsStatusListenerHelper;Lcom/android/server/location/GpsStatusListenerHelper$1;)V
    .locals 0
    .param p1    # Lcom/android/server/location/GpsStatusListenerHelper;
    .param p2    # Lcom/android/server/location/GpsStatusListenerHelper$1;

    invoke-direct {p0, p1}, Lcom/android/server/location/GpsStatusListenerHelper$Operation;-><init>(Lcom/android/server/location/GpsStatusListenerHelper;)V

    return-void
.end method
