.class Landroid/widget/YearPickerView$1;
.super Ljava/lang/Object;
.source "YearPickerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/YearPickerView;->postSetSelectionFromTop(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/YearPickerView;

.field final synthetic val$offset:I

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Landroid/widget/YearPickerView;II)V
    .locals 0

    iput-object p1, p0, Landroid/widget/YearPickerView$1;->this$0:Landroid/widget/YearPickerView;

    iput p2, p0, Landroid/widget/YearPickerView$1;->val$position:I

    iput p3, p0, Landroid/widget/YearPickerView$1;->val$offset:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Landroid/widget/YearPickerView$1;->this$0:Landroid/widget/YearPickerView;

    iget v1, p0, Landroid/widget/YearPickerView$1;->val$position:I

    iget v2, p0, Landroid/widget/YearPickerView$1;->val$offset:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/YearPickerView;->setSelectionFromTop(II)V

    iget-object v0, p0, Landroid/widget/YearPickerView$1;->this$0:Landroid/widget/YearPickerView;

    invoke-virtual {v0}, Landroid/widget/YearPickerView;->requestLayout()V

    return-void
.end method
