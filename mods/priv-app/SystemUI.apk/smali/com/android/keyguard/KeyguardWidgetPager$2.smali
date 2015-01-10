.class Lcom/android/keyguard/KeyguardWidgetPager$2;
.super Ljava/lang/Object;
.source "KeyguardWidgetPager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardWidgetPager;->onAddView(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardWidgetPager;

.field final synthetic val$appWidgetId:I

.field final synthetic val$index:I

.field final synthetic val$pagesRange:[I


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardWidgetPager;II[I)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardWidgetPager$2;->this$0:Lcom/android/keyguard/KeyguardWidgetPager;

    iput p2, p0, Lcom/android/keyguard/KeyguardWidgetPager$2;->val$appWidgetId:I

    iput p3, p0, Lcom/android/keyguard/KeyguardWidgetPager$2;->val$index:I

    iput-object p4, p0, Lcom/android/keyguard/KeyguardWidgetPager$2;->val$pagesRange:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager$2;->this$0:Lcom/android/keyguard/KeyguardWidgetPager;

    # getter for: Lcom/android/keyguard/KeyguardWidgetPager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardWidgetPager;->access$000(Lcom/android/keyguard/KeyguardWidgetPager;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    iget v1, p0, Lcom/android/keyguard/KeyguardWidgetPager$2;->val$appWidgetId:I

    iget v2, p0, Lcom/android/keyguard/KeyguardWidgetPager$2;->val$index:I

    iget-object v3, p0, Lcom/android/keyguard/KeyguardWidgetPager$2;->val$pagesRange:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->addAppWidget(II)Z

    return-void
.end method
