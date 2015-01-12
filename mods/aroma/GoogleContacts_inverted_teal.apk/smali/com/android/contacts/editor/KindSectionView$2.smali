.class Lcom/android/contacts/editor/KindSectionView$2;
.super Ljava/lang/Object;
.source "KindSectionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/KindSectionView;->postWhenWindowFocused(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/KindSectionView;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/KindSectionView;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/editor/KindSectionView$2;->this$0:Lcom/android/contacts/editor/KindSectionView;

    iput-object p2, p0, Lcom/android/contacts/editor/KindSectionView$2;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView$2;->this$0:Lcom/android/contacts/editor/KindSectionView;

    iget-object v1, p0, Lcom/android/contacts/editor/KindSectionView$2;->val$r:Ljava/lang/Runnable;

    # invokes: Lcom/android/contacts/editor/KindSectionView;->runWhenWindowFocused(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/android/contacts/editor/KindSectionView;->access$100(Lcom/android/contacts/editor/KindSectionView;Ljava/lang/Runnable;)V

    return-void
.end method
