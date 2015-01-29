.class Landroid/widget/TimePickerSpinnerDelegate$Node;
.super Ljava/lang/Object;
.source "TimePickerSpinnerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TimePickerSpinnerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Node"
.end annotation


# instance fields
.field private mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TimePickerSpinnerDelegate$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mLegalKeys:[I

.field final synthetic this$0:Landroid/widget/TimePickerSpinnerDelegate;


# direct methods
.method public varargs constructor <init>(Landroid/widget/TimePickerSpinnerDelegate;[I)V
    .locals 1
    .param p2    # [I

    iput-object p1, p0, Landroid/widget/TimePickerSpinnerDelegate$Node;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/widget/TimePickerSpinnerDelegate$Node;->mLegalKeys:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate$Node;->mChildren:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addChild(Landroid/widget/TimePickerSpinnerDelegate$Node;)V
    .locals 1
    .param p1    # Landroid/widget/TimePickerSpinnerDelegate$Node;

    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate$Node;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public canReach(I)Landroid/widget/TimePickerSpinnerDelegate$Node;
    .locals 4
    .param p1    # I

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate$Node;->mChildren:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate$Node;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TimePickerSpinnerDelegate$Node;

    invoke-virtual {v0, p1}, Landroid/widget/TimePickerSpinnerDelegate$Node;->containsKey(I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method

.method public containsKey(I)Z
    .locals 2
    .param p1    # I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate$Node;->mLegalKeys:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate$Node;->mLegalKeys:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
