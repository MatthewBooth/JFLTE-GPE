.class Lcom/android/systemui/statusbar/phone/QSTileHost$Observer;
.super Landroid/database/ContentObserver;
.source "QSTileHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/QSTileHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Observer"
.end annotation


# instance fields
.field private mRegistered:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QSTileHost;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/QSTileHost;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost$Observer;->this$0:Lcom/android/systemui/statusbar/phone/QSTileHost;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1    # Z
    .param p2    # Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost$Observer;->this$0:Lcom/android/systemui/statusbar/phone/QSTileHost;

    # invokes: Lcom/android/systemui/statusbar/phone/QSTileHost;->recreateTiles()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->access$000(Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    return-void
.end method

.method public register()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost$Observer;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost$Observer;->this$0:Lcom/android/systemui/statusbar/phone/QSTileHost;

    # getter for: Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->access$400(Lcom/android/systemui/statusbar/phone/QSTileHost;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost$Observer;->this$0:Lcom/android/systemui/statusbar/phone/QSTileHost;

    # getter for: Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->access$400(Lcom/android/systemui/statusbar/phone/QSTileHost;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sysui_qs_tiles"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QSTileHost$Observer;->this$0:Lcom/android/systemui/statusbar/phone/QSTileHost;

    # getter for: Lcom/android/systemui/statusbar/phone/QSTileHost;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/QSTileHost;->access$500(Lcom/android/systemui/statusbar/phone/QSTileHost;)Lcom/android/systemui/settings/CurrentUserTracker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/settings/CurrentUserTracker;->getCurrentUserId()I

    move-result v3

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost$Observer;->mRegistered:Z

    return-void
.end method
