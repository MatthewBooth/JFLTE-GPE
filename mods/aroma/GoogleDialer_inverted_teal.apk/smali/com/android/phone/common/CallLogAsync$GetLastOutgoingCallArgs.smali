.class public Lcom/android/phone/common/CallLogAsync$GetLastOutgoingCallArgs;
.super Ljava/lang/Object;
.source "CallLogAsync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/common/CallLogAsync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetLastOutgoingCallArgs"
.end annotation


# instance fields
.field public final callback:Lcom/android/phone/common/CallLogAsync$OnLastOutgoingCallComplete;

.field public final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/phone/common/CallLogAsync$OnLastOutgoingCallComplete;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/phone/common/CallLogAsync$OnLastOutgoingCallComplete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/phone/common/CallLogAsync$GetLastOutgoingCallArgs;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/phone/common/CallLogAsync$GetLastOutgoingCallArgs;->callback:Lcom/android/phone/common/CallLogAsync$OnLastOutgoingCallComplete;

    return-void
.end method
