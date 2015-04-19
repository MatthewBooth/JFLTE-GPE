.class Lcom/android/dialer/list/PhoneFavoriteListView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhoneFavoriteListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/list/PhoneFavoriteListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/list/PhoneFavoriteListView;


# direct methods
.method constructor <init>(Lcom/android/dialer/list/PhoneFavoriteListView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/list/PhoneFavoriteListView$2;->this$0:Lcom/android/dialer/list/PhoneFavoriteListView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1    # Landroid/animation/Animator;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView$2;->this$0:Lcom/android/dialer/list/PhoneFavoriteListView;

    # getter for: Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/android/dialer/list/PhoneFavoriteListView;->access$400(Lcom/android/dialer/list/PhoneFavoriteListView;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView$2;->this$0:Lcom/android/dialer/list/PhoneFavoriteListView;

    # getter for: Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/android/dialer/list/PhoneFavoriteListView;->access$400(Lcom/android/dialer/list/PhoneFavoriteListView;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView$2;->this$0:Lcom/android/dialer/list/PhoneFavoriteListView;

    # setter for: Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v2}, Lcom/android/dialer/list/PhoneFavoriteListView;->access$402(Lcom/android/dialer/list/PhoneFavoriteListView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView$2;->this$0:Lcom/android/dialer/list/PhoneFavoriteListView;

    # getter for: Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowOverlay:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/dialer/list/PhoneFavoriteListView;->access$500(Lcom/android/dialer/list/PhoneFavoriteListView;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView$2;->this$0:Lcom/android/dialer/list/PhoneFavoriteListView;

    # getter for: Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowOverlay:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/dialer/list/PhoneFavoriteListView;->access$500(Lcom/android/dialer/list/PhoneFavoriteListView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
