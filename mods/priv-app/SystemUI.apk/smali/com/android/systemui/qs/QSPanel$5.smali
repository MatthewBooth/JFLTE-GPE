.class Lcom/android/systemui/qs/QSPanel$5;
.super Ljava/lang/Object;
.source "QSPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSPanel;->handleShowDetailImpl(Lcom/android/systemui/qs/QSPanel$Record;ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSPanel;

.field final synthetic val$settingsIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSPanel;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel$5;->this$0:Lcom/android/systemui/qs/QSPanel;

    iput-object p2, p0, Lcom/android/systemui/qs/QSPanel$5;->val$settingsIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$5;->this$0:Lcom/android/systemui/qs/QSPanel;

    # getter for: Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;
    invoke-static {v0}, Lcom/android/systemui/qs/QSPanel;->access$900(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/statusbar/phone/QSTileHost;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel$5;->val$settingsIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->startSettingsActivity(Landroid/content/Intent;)V

    return-void
.end method
