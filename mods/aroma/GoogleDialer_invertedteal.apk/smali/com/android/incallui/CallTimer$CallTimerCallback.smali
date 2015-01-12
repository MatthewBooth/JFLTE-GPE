.class Lcom/android/incallui/CallTimer$CallTimerCallback;
.super Ljava/lang/Object;
.source "CallTimer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CallTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallTimerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallTimer;


# direct methods
.method private constructor <init>(Lcom/android/incallui/CallTimer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/CallTimer$CallTimerCallback;->this$0:Lcom/android/incallui/CallTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/CallTimer;Lcom/android/incallui/CallTimer$1;)V
    .locals 0
    .param p1    # Lcom/android/incallui/CallTimer;
    .param p2    # Lcom/android/incallui/CallTimer$1;

    invoke-direct {p0, p1}, Lcom/android/incallui/CallTimer$CallTimerCallback;-><init>(Lcom/android/incallui/CallTimer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallTimer$CallTimerCallback;->this$0:Lcom/android/incallui/CallTimer;

    # invokes: Lcom/android/incallui/CallTimer;->periodicUpdateTimer()V
    invoke-static {v0}, Lcom/android/incallui/CallTimer;->access$100(Lcom/android/incallui/CallTimer;)V

    return-void
.end method
