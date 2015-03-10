.class Lcom/android/phone/TimeConsumingPreferenceActivity$DismissAndFinishOnClickListener;
.super Ljava/lang/Object;
.source "TimeConsumingPreferenceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/TimeConsumingPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DismissAndFinishOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/TimeConsumingPreferenceActivity;


# direct methods
.method private constructor <init>(Lcom/android/phone/TimeConsumingPreferenceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/TimeConsumingPreferenceActivity$DismissAndFinishOnClickListener;->this$0:Lcom/android/phone/TimeConsumingPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/TimeConsumingPreferenceActivity;Lcom/android/phone/TimeConsumingPreferenceActivity$1;)V
    .locals 0
    .param p1    # Lcom/android/phone/TimeConsumingPreferenceActivity;
    .param p2    # Lcom/android/phone/TimeConsumingPreferenceActivity$1;

    invoke-direct {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity$DismissAndFinishOnClickListener;-><init>(Lcom/android/phone/TimeConsumingPreferenceActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity$DismissAndFinishOnClickListener;->this$0:Lcom/android/phone/TimeConsumingPreferenceActivity;

    invoke-virtual {v0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->finish()V

    return-void
.end method
