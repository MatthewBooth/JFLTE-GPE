.class Lcom/android/keyguard/KeyguardDisplayManager$2;
.super Ljava/lang/Object;
.source "KeyguardDisplayManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardDisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardDisplayManager;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardDisplayManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardDisplayManager$2;->this$0:Lcom/android/keyguard/KeyguardDisplayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager$2;->this$0:Lcom/android/keyguard/KeyguardDisplayManager;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentation:Landroid/app/Presentation;

    return-void
.end method
