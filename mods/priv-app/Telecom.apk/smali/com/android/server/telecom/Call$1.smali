.class final Lcom/android/server/telecom/Call$1;
.super Ljava/lang/Object;
.source "Call.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 0

    if-eqz p2, :cond_0

    check-cast p2, Lcom/android/server/telecom/Call;

    invoke-static {p2, p3, p1}, Lcom/android/server/telecom/Call;->access$000(Lcom/android/server/telecom/Call;Lcom/android/internal/telephony/CallerInfo;I)V

    :cond_0
    return-void
.end method
