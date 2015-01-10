.class Lcom/android/keyguard/KeyguardMultiUserSelectorView$2;
.super Ljava/lang/Object;
.source "KeyguardMultiUserSelectorView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardMultiUserSelectorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/UserInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardMultiUserSelectorView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardMultiUserSelectorView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView$2;->this$0:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)I
    .locals 2
    .param p1    # Landroid/content/pm/UserInfo;
    .param p2    # Landroid/content/pm/UserInfo;

    iget v0, p1, Landroid/content/pm/UserInfo;->serialNumber:I

    iget v1, p2, Landroid/content/pm/UserInfo;->serialNumber:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
    .param p2    # Ljava/lang/Object;

    check-cast p1, Landroid/content/pm/UserInfo;

    check-cast p2, Landroid/content/pm/UserInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/KeyguardMultiUserSelectorView$2;->compare(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)I

    move-result v0

    return v0
.end method
