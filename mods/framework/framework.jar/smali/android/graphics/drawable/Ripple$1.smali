.class Landroid/graphics/drawable/Ripple$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Ripple.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/Ripple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/graphics/drawable/Ripple;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Ripple;)V
    .locals 0

    iput-object p1, p0, Landroid/graphics/drawable/Ripple$1;->this$0:Landroid/graphics/drawable/Ripple;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1    # Landroid/animation/Animator;

    iget-object v0, p0, Landroid/graphics/drawable/Ripple$1;->this$0:Landroid/graphics/drawable/Ripple;

    # invokes: Landroid/graphics/drawable/Ripple;->removeSelf()V
    invoke-static {v0}, Landroid/graphics/drawable/Ripple;->access$100(Landroid/graphics/drawable/Ripple;)V

    return-void
.end method
