.class public Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;
.super Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;
.source "UserDetailView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/UserDetailView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Adapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->getItem(I)Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mContext:Landroid/content/Context;

    invoke-static {v3, p2, p3}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->convertOrInflate(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/tiles/UserDetailItemView;

    move-result-object v2

    if-eq v2, p2, :cond_0

    invoke-virtual {v2, p0}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3, v0}, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->getName(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->picture:Landroid/graphics/Bitmap;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3, v0}, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->getDrawable(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->bind(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isCurrent:Z

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->setActivated(Z)V

    invoke-virtual {v2, v0}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->setTag(Ljava/lang/Object;)V

    return-object v2

    :cond_1
    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->picture:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->bind(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->switchTo(Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)V

    return-void
.end method
