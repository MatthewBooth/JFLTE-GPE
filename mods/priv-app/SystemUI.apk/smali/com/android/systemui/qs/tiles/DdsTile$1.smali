.class Lcom/android/systemui/qs/tiles/DdsTile$1;
.super Landroid/os/AsyncTask;
.source "DdsTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/DdsTile;->switchDdsToNext()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/DdsTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/DdsTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DdsTile$1;->this$0:Lcom/android/systemui/qs/tiles/DdsTile;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/DdsTile$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1    # [Ljava/lang/Void;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DdsTile$1;->this$0:Lcom/android/systemui/qs/tiles/DdsTile;

    # getter for: Lcom/android/systemui/qs/tiles/DdsTile;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/DdsTile;->access$100(Lcom/android/systemui/qs/tiles/DdsTile;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()J

    move-result-wide v4

    long-to-int v0, v4

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    add-int/lit8 v3, v0, 0x1

    rem-int/2addr v3, v1

    int-to-long v4, v3

    invoke-static {v4, v5}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(J)V

    const/4 v3, 0x0

    return-object v3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/DdsTile$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1    # Ljava/lang/Void;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DdsTile$1;->this$0:Lcom/android/systemui/qs/tiles/DdsTile;

    # getter for: Lcom/android/systemui/qs/tiles/DdsTile;->mQSTileView:Lcom/android/systemui/qs/QSTileView;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DdsTile;->access$000(Lcom/android/systemui/qs/tiles/DdsTile;)Lcom/android/systemui/qs/QSTileView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DdsTile$1;->this$0:Lcom/android/systemui/qs/tiles/DdsTile;

    # getter for: Lcom/android/systemui/qs/tiles/DdsTile;->mQSTileView:Lcom/android/systemui/qs/QSTileView;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DdsTile;->access$000(Lcom/android/systemui/qs/tiles/DdsTile;)Lcom/android/systemui/qs/QSTileView;

    move-result-object v0

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSTileView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DdsTile$1;->this$0:Lcom/android/systemui/qs/tiles/DdsTile;

    # getter for: Lcom/android/systemui/qs/tiles/DdsTile;->mQSTileView:Lcom/android/systemui/qs/QSTileView;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DdsTile;->access$000(Lcom/android/systemui/qs/tiles/DdsTile;)Lcom/android/systemui/qs/QSTileView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSTileView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DdsTile$1;->this$0:Lcom/android/systemui/qs/tiles/DdsTile;

    # getter for: Lcom/android/systemui/qs/tiles/DdsTile;->mQSTileView:Lcom/android/systemui/qs/QSTileView;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DdsTile;->access$000(Lcom/android/systemui/qs/tiles/DdsTile;)Lcom/android/systemui/qs/QSTileView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DdsTile$1;->this$0:Lcom/android/systemui/qs/tiles/DdsTile;

    # getter for: Lcom/android/systemui/qs/tiles/DdsTile;->mQSTileView:Lcom/android/systemui/qs/QSTileView;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DdsTile;->access$000(Lcom/android/systemui/qs/tiles/DdsTile;)Lcom/android/systemui/qs/QSTileView;

    move-result-object v0

    const/high16 v1, 0x3f000000

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSTileView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DdsTile$1;->this$0:Lcom/android/systemui/qs/tiles/DdsTile;

    # getter for: Lcom/android/systemui/qs/tiles/DdsTile;->mQSTileView:Lcom/android/systemui/qs/QSTileView;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DdsTile;->access$000(Lcom/android/systemui/qs/tiles/DdsTile;)Lcom/android/systemui/qs/QSTileView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSTileView;->setEnabled(Z)V

    :cond_0
    return-void
.end method
