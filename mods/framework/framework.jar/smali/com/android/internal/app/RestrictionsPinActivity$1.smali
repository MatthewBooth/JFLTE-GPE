.class Lcom/android/internal/app/RestrictionsPinActivity$1;
.super Ljava/lang/Object;
.source "RestrictionsPinActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/RestrictionsPinActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/RestrictionsPinActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/RestrictionsPinActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/RestrictionsPinActivity$1;->this$0:Lcom/android/internal/app/RestrictionsPinActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/RestrictionsPinActivity$1;->this$0:Lcom/android/internal/app/RestrictionsPinActivity;

    const/4 v1, -0x1

    # invokes: Lcom/android/internal/app/RestrictionsPinActivity;->updatePinTimer(I)Z
    invoke-static {v0, v1}, Lcom/android/internal/app/RestrictionsPinActivity;->access$000(Lcom/android/internal/app/RestrictionsPinActivity;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/RestrictionsPinActivity$1;->this$0:Lcom/android/internal/app/RestrictionsPinActivity;

    iget-object v0, v0, Lcom/android/internal/app/RestrictionsPinActivity;->mPinErrorMessage:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method
