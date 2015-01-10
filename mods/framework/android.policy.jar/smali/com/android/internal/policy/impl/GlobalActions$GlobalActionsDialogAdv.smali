.class Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialogAdv;
.super Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GlobalActionsDialogAdv"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;)V
    .locals 2

    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialogAdv;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    const v0, 0x1080771

    const v1, 0x10403d1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;-><init>(II)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialogAdv;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    return-void
.end method


# virtual methods
.method public onPress()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialogAdv;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlobalActions;->showDialogAdv()V

    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
