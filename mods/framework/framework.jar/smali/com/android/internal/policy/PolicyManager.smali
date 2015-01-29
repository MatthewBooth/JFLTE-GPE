.class public final Lcom/android/internal/policy/PolicyManager;
.super Ljava/lang/Object;
.source "PolicyManager.java"


# static fields
.field private static final POLICY_IMPL_CLASS_NAME:Ljava/lang/String; = "com.android.internal.policy.impl.Policy"

.field private static final sPolicy:Lcom/android/internal/policy/IPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    :try_start_0
    const-string v2, "com.android.internal.policy.impl.Policy"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/IPolicy;

    sput-object v2, Lcom/android/internal/policy/PolicyManager;->sPolicy:Lcom/android/internal/policy/IPolicy;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "com.android.internal.policy.impl.Policy could not be loaded"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "com.android.internal.policy.impl.Policy could not be instantiated"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_2
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "com.android.internal.policy.impl.Policy could not be instantiated"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeNewFallbackEventHandler(Landroid/content/Context;)Landroid/view/FallbackEventHandler;
    .locals 1
    .param p0    # Landroid/content/Context;

    sget-object v0, Lcom/android/internal/policy/PolicyManager;->sPolicy:Lcom/android/internal/policy/IPolicy;

    invoke-interface {v0, p0}, Lcom/android/internal/policy/IPolicy;->makeNewFallbackEventHandler(Landroid/content/Context;)Landroid/view/FallbackEventHandler;

    move-result-object v0

    return-object v0
.end method

.method public static makeNewLayoutInflater(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0    # Landroid/content/Context;

    sget-object v0, Lcom/android/internal/policy/PolicyManager;->sPolicy:Lcom/android/internal/policy/IPolicy;

    invoke-interface {v0, p0}, Lcom/android/internal/policy/IPolicy;->makeNewLayoutInflater(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public static makeNewWindow(Landroid/content/Context;)Landroid/view/Window;
    .locals 1
    .param p0    # Landroid/content/Context;

    sget-object v0, Lcom/android/internal/policy/PolicyManager;->sPolicy:Lcom/android/internal/policy/IPolicy;

    invoke-interface {v0, p0}, Lcom/android/internal/policy/IPolicy;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v0

    return-object v0
.end method

.method public static makeNewWindowManager()Landroid/view/WindowManagerPolicy;
    .locals 1

    sget-object v0, Lcom/android/internal/policy/PolicyManager;->sPolicy:Lcom/android/internal/policy/IPolicy;

    invoke-interface {v0}, Lcom/android/internal/policy/IPolicy;->makeNewWindowManager()Landroid/view/WindowManagerPolicy;

    move-result-object v0

    return-object v0
.end method
