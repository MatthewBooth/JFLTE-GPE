.class Lcom/android/systemui/DessertCaseDream$1;
.super Ljava/lang/Object;
.source "DessertCaseDream.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/DessertCaseDream;->onDreamingStarted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/DessertCaseDream;


# direct methods
.method constructor <init>(Lcom/android/systemui/DessertCaseDream;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/DessertCaseDream$1;->this$0:Lcom/android/systemui/DessertCaseDream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/DessertCaseDream$1;->this$0:Lcom/android/systemui/DessertCaseDream;

    # getter for: Lcom/android/systemui/DessertCaseDream;->mView:Lcom/android/systemui/DessertCaseView;
    invoke-static {v0}, Lcom/android/systemui/DessertCaseDream;->access$000(Lcom/android/systemui/DessertCaseDream;)Lcom/android/systemui/DessertCaseView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/DessertCaseView;->start()V

    return-void
.end method
