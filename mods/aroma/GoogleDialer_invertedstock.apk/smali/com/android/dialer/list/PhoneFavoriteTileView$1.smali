.class Lcom/android/dialer/list/PhoneFavoriteTileView$1;
.super Ljava/lang/Object;
.source "PhoneFavoriteTileView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/list/PhoneFavoriteTileView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/list/PhoneFavoriteTileView;


# direct methods
.method constructor <init>(Lcom/android/dialer/list/PhoneFavoriteTileView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/list/PhoneFavoriteTileView$1;->this$0:Lcom/android/dialer/list/PhoneFavoriteTileView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .param p1    # Landroid/view/View;

    move-object v0, p1

    check-cast v0, Lcom/android/dialer/list/PhoneFavoriteTileView;

    # getter for: Lcom/android/dialer/list/PhoneFavoriteTileView;->EMPTY_CLIP_DATA:Landroid/content/ClipData;
    invoke-static {}, Lcom/android/dialer/list/PhoneFavoriteTileView;->access$000()Landroid/content/ClipData;

    move-result-object v1

    new-instance v2, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v2}, Landroid/view/View$DragShadowBuilder;-><init>()V

    const-string v3, "PHONE_FAVORITE_TILE"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/dialer/list/PhoneFavoriteTileView;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    const/4 v1, 0x1

    return v1
.end method
