.class public Lcom/android/systemui/qs/QSFooter;
.super Ljava/lang/Object;
.source "QSFooter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSFooter$H;,
        Lcom/android/systemui/qs/QSFooter$Callback;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z


# instance fields
.field private final mCallback:Lcom/android/systemui/qs/QSFooter$Callback;

.field private final mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private final mFooterIcon:Landroid/widget/ImageView;

.field private final mFooterText:Landroid/widget/TextView;

.field private mFooterTextId:I

.field private mHandler:Landroid/os/Handler;

.field private mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

.field private mIsIconVisible:Z

.field private mIsVisible:Z

.field private final mMainHandler:Landroid/os/Handler;

.field private final mRootView:Landroid/view/View;

.field private mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

.field private final mUpdateDisplayState:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "QSFooter"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/qs/QSFooter;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSPanel;Landroid/content/Context;)V
    .locals 3
    .param p1    # Lcom/android/systemui/qs/QSPanel;
    .param p2    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/qs/QSFooter$Callback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSFooter$Callback;-><init>(Lcom/android/systemui/qs/QSFooter;Lcom/android/systemui/qs/QSFooter$1;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mCallback:Lcom/android/systemui/qs/QSFooter$Callback;

    new-instance v0, Lcom/android/systemui/qs/QSFooter$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSFooter$1;-><init>(Lcom/android/systemui/qs/QSFooter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mUpdateDisplayState:Ljava/lang/Runnable;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040038

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mRootView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mRootView:Landroid/view/View;

    const v1, 0x7f0e00f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mFooterText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mRootView:Landroid/view/View;

    const v1, 0x7f0e00fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mFooterIcon:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/QSFooter;)Lcom/android/systemui/statusbar/phone/QSTileHost;
    .locals 1
    .param p0    # Lcom/android/systemui/qs/QSFooter;

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/QSFooter;)I
    .locals 1
    .param p0    # Lcom/android/systemui/qs/QSFooter;

    iget v0, p0, Lcom/android/systemui/qs/QSFooter;->mFooterTextId:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/QSFooter;)Landroid/widget/TextView;
    .locals 1
    .param p0    # Lcom/android/systemui/qs/QSFooter;

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mFooterText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/QSFooter;)Z
    .locals 1
    .param p0    # Lcom/android/systemui/qs/QSFooter;

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFooter;->mIsVisible:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/QSFooter;)Landroid/view/View;
    .locals 1
    .param p0    # Lcom/android/systemui/qs/QSFooter;

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/QSFooter;)Z
    .locals 1
    .param p0    # Lcom/android/systemui/qs/QSFooter;

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFooter;->mIsIconVisible:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/QSFooter;)Landroid/widget/ImageView;
    .locals 1
    .param p0    # Lcom/android/systemui/qs/QSFooter;

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mFooterIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/QSFooter;)V
    .locals 0
    .param p0    # Lcom/android/systemui/qs/QSFooter;

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->handleRefreshState()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/QSFooter;)V
    .locals 0
    .param p0    # Lcom/android/systemui/qs/QSFooter;

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->handleClick()V

    return-void
.end method

.method private createDialog()V
    .locals 3

    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->getTitle()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->getPositiveButton()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isVpnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->getNegativeButton()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private getMessage()Ljava/lang/String;
    .locals 7

    const/4 v2, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasDeviceOwner()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasProfileOwner()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isVpnEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isLegacyVpn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f0b015e

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/SecurityController;->getDeviceOwnerName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/SecurityController;->getProfileOwnerName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/SecurityController;->getLegacyVpnName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f0b015d

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/SecurityController;->getDeviceOwnerName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/SecurityController;->getProfileOwnerName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/SecurityController;->getVpnApp()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f0b015a

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/SecurityController;->getDeviceOwnerName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/SecurityController;->getProfileOwnerName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isVpnEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isLegacyVpn()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0158

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/SecurityController;->getDeviceOwnerName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/SecurityController;->getLegacyVpnName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0157

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/SecurityController;->getDeviceOwnerName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/SecurityController;->getVpnApp()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0154

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/SecurityController;->getDeviceOwnerName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasProfileOwner()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isVpnEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isLegacyVpn()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f0b015c

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/SecurityController;->getProfileOwnerName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/SecurityController;->getLegacyVpnName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f0b015b

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/SecurityController;->getProfileOwnerName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/SecurityController;->getVpnApp()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0159

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/SecurityController;->getProfileOwnerName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isLegacyVpn()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0156

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/SecurityController;->getLegacyVpnName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0155

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/SecurityController;->getVpnApp()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private getNegativeButton()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isLegacyVpn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0153

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0152

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getPositiveButton()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f0b00fe

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTitle()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasDeviceOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b014f

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasProfileOwner()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b0150

    goto :goto_0

    :cond_1
    const v0, 0x7f0b0151

    goto :goto_0
.end method

.method private handleClick()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->collapsePanels()V

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->createDialog()V

    return-void
.end method

.method private handleRefreshState()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasDeviceOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b014c

    iput v0, p0, Lcom/android/systemui/qs/QSFooter;->mFooterTextId:I

    iput-boolean v2, p0, Lcom/android/systemui/qs/QSFooter;->mIsVisible:Z

    iput-boolean v1, p0, Lcom/android/systemui/qs/QSFooter;->mIsIconVisible:Z

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mUpdateDisplayState:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasProfileOwner()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b014d

    iput v0, p0, Lcom/android/systemui/qs/QSFooter;->mFooterTextId:I

    iput-boolean v2, p0, Lcom/android/systemui/qs/QSFooter;->mIsVisible:Z

    iput-boolean v1, p0, Lcom/android/systemui/qs/QSFooter;->mIsIconVisible:Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isVpnEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0b014e

    iput v0, p0, Lcom/android/systemui/qs/QSFooter;->mFooterTextId:I

    iput-boolean v2, p0, Lcom/android/systemui/qs/QSFooter;->mIsVisible:Z

    iput-boolean v2, p0, Lcom/android/systemui/qs/QSFooter;->mIsIconVisible:Z

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Lcom/android/systemui/qs/QSFooter;->mIsVisible:Z

    iput-boolean v1, p0, Lcom/android/systemui/qs/QSFooter;->mIsIconVisible:Z

    goto :goto_0
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public hasFooter()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->disconnectFromVpn()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mFooterText:Landroid/widget/TextView;

    const v1, 0x7f0c0037

    invoke-static {v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    return-void
.end method

.method public refreshState()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V
    .locals 3
    .param p1    # Lcom/android/systemui/statusbar/phone/QSTileHost;

    iput-object p1, p0, Lcom/android/systemui/qs/QSFooter;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getSecurityController()Lcom/android/systemui/statusbar/policy/SecurityController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    new-instance v0, Lcom/android/systemui/qs/QSFooter$H;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/qs/QSFooter$H;-><init>(Lcom/android/systemui/qs/QSFooter;Landroid/os/Looper;Lcom/android/systemui/qs/QSFooter$1;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public setListening(Z)V
    .locals 2
    .param p1    # Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mCallback:Lcom/android/systemui/qs/QSFooter$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/SecurityController;->addCallback(Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mCallback:Lcom/android/systemui/qs/QSFooter$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/SecurityController;->removeCallback(Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;)V

    goto :goto_0
.end method
