.class Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin$2;
.super Ljava/lang/Object;
.source "KeyguardSimPinView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin$2;->this$1:Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin$2;->this$1:Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;->onSimCheckResponse(II)V

    return-void
.end method
