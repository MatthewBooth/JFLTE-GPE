.class Lcom/android/systemui/statusbar/policy/WifiAccessPointController$1;
.super Ljava/lang/Object;
.source "WifiAccessPointController.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->connect(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPoint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/WifiAccessPointController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/WifiAccessPointController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/WifiAccessPointController$1;->this$0:Lcom/android/systemui/statusbar/policy/WifiAccessPointController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 0
    .param p1    # I

    return-void
.end method

.method public onSuccess()V
    .locals 0

    return-void
.end method
