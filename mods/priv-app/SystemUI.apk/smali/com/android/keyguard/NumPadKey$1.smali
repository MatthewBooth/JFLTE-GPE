.class Lcom/android/keyguard/NumPadKey$1;
.super Ljava/lang/Object;
.source "NumPadKey.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/NumPadKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/NumPadKey;


# direct methods
.method constructor <init>(Lcom/android/keyguard/NumPadKey;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/NumPadKey$1;->this$0:Lcom/android/keyguard/NumPadKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    iget-object v1, p0, Lcom/android/keyguard/NumPadKey$1;->this$0:Lcom/android/keyguard/NumPadKey;

    # getter for: Lcom/android/keyguard/NumPadKey;->mTextView:Lcom/android/keyguard/PasswordTextView;
    invoke-static {v1}, Lcom/android/keyguard/NumPadKey;->access$000(Lcom/android/keyguard/NumPadKey;)Lcom/android/keyguard/PasswordTextView;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/NumPadKey$1;->this$0:Lcom/android/keyguard/NumPadKey;

    # getter for: Lcom/android/keyguard/NumPadKey;->mTextViewResId:I
    invoke-static {v1}, Lcom/android/keyguard/NumPadKey;->access$100(Lcom/android/keyguard/NumPadKey;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/NumPadKey$1;->this$0:Lcom/android/keyguard/NumPadKey;

    invoke-virtual {v1}, Lcom/android/keyguard/NumPadKey;->getRootView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/NumPadKey$1;->this$0:Lcom/android/keyguard/NumPadKey;

    # getter for: Lcom/android/keyguard/NumPadKey;->mTextViewResId:I
    invoke-static {v2}, Lcom/android/keyguard/NumPadKey;->access$100(Lcom/android/keyguard/NumPadKey;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/keyguard/PasswordTextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/NumPadKey$1;->this$0:Lcom/android/keyguard/NumPadKey;

    check-cast v0, Lcom/android/keyguard/PasswordTextView;

    # setter for: Lcom/android/keyguard/NumPadKey;->mTextView:Lcom/android/keyguard/PasswordTextView;
    invoke-static {v1, v0}, Lcom/android/keyguard/NumPadKey;->access$002(Lcom/android/keyguard/NumPadKey;Lcom/android/keyguard/PasswordTextView;)Lcom/android/keyguard/PasswordTextView;

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/NumPadKey$1;->this$0:Lcom/android/keyguard/NumPadKey;

    # getter for: Lcom/android/keyguard/NumPadKey;->mTextView:Lcom/android/keyguard/PasswordTextView;
    invoke-static {v1}, Lcom/android/keyguard/NumPadKey;->access$000(Lcom/android/keyguard/NumPadKey;)Lcom/android/keyguard/PasswordTextView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/NumPadKey$1;->this$0:Lcom/android/keyguard/NumPadKey;

    # getter for: Lcom/android/keyguard/NumPadKey;->mTextView:Lcom/android/keyguard/PasswordTextView;
    invoke-static {v1}, Lcom/android/keyguard/NumPadKey;->access$000(Lcom/android/keyguard/NumPadKey;)Lcom/android/keyguard/PasswordTextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/PasswordTextView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/NumPadKey$1;->this$0:Lcom/android/keyguard/NumPadKey;

    # getter for: Lcom/android/keyguard/NumPadKey;->mTextView:Lcom/android/keyguard/PasswordTextView;
    invoke-static {v1}, Lcom/android/keyguard/NumPadKey;->access$000(Lcom/android/keyguard/NumPadKey;)Lcom/android/keyguard/PasswordTextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/NumPadKey$1;->this$0:Lcom/android/keyguard/NumPadKey;

    # getter for: Lcom/android/keyguard/NumPadKey;->mDigit:I
    invoke-static {v2}, Lcom/android/keyguard/NumPadKey;->access$200(Lcom/android/keyguard/NumPadKey;)I

    move-result v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/PasswordTextView;->append(C)V

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/NumPadKey$1;->this$0:Lcom/android/keyguard/NumPadKey;

    invoke-virtual {v1}, Lcom/android/keyguard/NumPadKey;->userActivity()V

    iget-object v1, p0, Lcom/android/keyguard/NumPadKey$1;->this$0:Lcom/android/keyguard/NumPadKey;

    invoke-virtual {v1}, Lcom/android/keyguard/NumPadKey;->doHapticKeyClick()V

    return-void
.end method
