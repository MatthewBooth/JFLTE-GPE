.class public Lcom/android/systemui/recents/misc/Console;
.super Ljava/lang/Object;
.source "Console.java"


# static fields
.field public static Enabled:Z

.field public static final mTimeLogs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/misc/Console;->mTimeLogs:Ljava/util/Map;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/recents/misc/Console;->Enabled:Z

    return-void
.end method

.method public static logError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0    # Landroid/content/Context;
    .param p1    # Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v0, "Recents"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static logRawError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/Exception;

    const-string v0, "Recents"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
