.class final Lcom/android/systemui/volume/Interaction$1;
.super Ljava/lang/Object;
.source "Interaction.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/Interaction;->register(Landroid/view/View;Lcom/android/systemui/volume/Interaction$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/android/systemui/volume/Interaction$Callback;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/Interaction$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/Interaction$1;->val$callback:Lcom/android/systemui/volume/Interaction$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/android/systemui/volume/Interaction$1;->val$callback:Lcom/android/systemui/volume/Interaction$Callback;

    invoke-interface {v0}, Lcom/android/systemui/volume/Interaction$Callback;->onInteraction()V

    const/4 v0, 0x0

    return v0
.end method
