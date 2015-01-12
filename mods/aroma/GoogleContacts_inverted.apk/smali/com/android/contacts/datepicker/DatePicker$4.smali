.class Lcom/android/contacts/datepicker/DatePicker$4;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/datepicker/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/datepicker/DatePicker;


# direct methods
.method constructor <init>(Lcom/android/contacts/datepicker/DatePicker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/datepicker/DatePicker$4;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1    # Landroid/widget/CompoundButton;
    .param p2    # Z

    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker$4;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    # setter for: Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z
    invoke-static {v0, p2}, Lcom/android/contacts/datepicker/DatePicker;->access$602(Lcom/android/contacts/datepicker/DatePicker;Z)Z

    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker$4;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    # invokes: Lcom/android/contacts/datepicker/DatePicker;->adjustMaxDay()V
    invoke-static {v0}, Lcom/android/contacts/datepicker/DatePicker;->access$300(Lcom/android/contacts/datepicker/DatePicker;)V

    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker$4;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    # invokes: Lcom/android/contacts/datepicker/DatePicker;->notifyDateChanged()V
    invoke-static {v0}, Lcom/android/contacts/datepicker/DatePicker;->access$100(Lcom/android/contacts/datepicker/DatePicker;)V

    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker$4;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    # invokes: Lcom/android/contacts/datepicker/DatePicker;->updateSpinners()V
    invoke-static {v0}, Lcom/android/contacts/datepicker/DatePicker;->access$700(Lcom/android/contacts/datepicker/DatePicker;)V

    return-void
.end method
