.class Landroid/os/DVFSHelper$ModelJF;
.super Landroid/os/DVFSHelper$ModelJBP;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelJF"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .locals 2

    const v1, 0x155cc0

    iput-object p1, p0, Landroid/os/DVFSHelper$ModelJF;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelJBP;-><init>(Landroid/os/DVFSHelper;)V

    const/16 v0, 0xc8

    iput v0, p0, Landroid/os/DVFSHelper$ModelJF;->LAUNCHER_TOUCH_BOOST_TIMEOUT:I

    iput v1, p0, Landroid/os/DVFSHelper$ModelJF;->GALLERY_TOUCH_ARM_FREQ:I

    iput v1, p0, Landroid/os/DVFSHelper$ModelJF;->LAUNCHER_TOUCH_ARM_FREQ:I

    const v0, 0x124f80

    iput v0, p0, Landroid/os/DVFSHelper$ModelJF;->GROUP_PLAY_ARM_FREQ:I

    const v0, 0x16e360

    iput v0, p0, Landroid/os/DVFSHelper$ModelJF;->LIST_SCROLL_ARM_FREQ:I

    const/4 v0, 0x2

    sput v0, Landroid/os/DVFSHelper;->LIST_SCROLL_BOOSTER_CORE_NUM:I

    return-void
.end method
