.class Lcom/android/dialer/list/SpeedDialFragment$ContactTileAdapterListener;
.super Ljava/lang/Object;
.source "SpeedDialFragment.java"

# interfaces
.implements Lcom/android/contacts/common/list/ContactTileView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/list/SpeedDialFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactTileAdapterListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/list/SpeedDialFragment;


# direct methods
.method private constructor <init>(Lcom/android/dialer/list/SpeedDialFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/list/SpeedDialFragment$ContactTileAdapterListener;->this$0:Lcom/android/dialer/list/SpeedDialFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/list/SpeedDialFragment;Lcom/android/dialer/list/SpeedDialFragment$1;)V
    .locals 0
    .param p1    # Lcom/android/dialer/list/SpeedDialFragment;
    .param p2    # Lcom/android/dialer/list/SpeedDialFragment$1;

    invoke-direct {p0, p1}, Lcom/android/dialer/list/SpeedDialFragment$ContactTileAdapterListener;-><init>(Lcom/android/dialer/list/SpeedDialFragment;)V

    return-void
.end method


# virtual methods
.method public getApproximateTileWidth()I
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/list/SpeedDialFragment$ContactTileAdapterListener;->this$0:Lcom/android/dialer/list/SpeedDialFragment;

    invoke-virtual {v0}, Lcom/android/dialer/list/SpeedDialFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public onCallNumberDirectly(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/dialer/list/SpeedDialFragment$ContactTileAdapterListener;->this$0:Lcom/android/dialer/list/SpeedDialFragment;

    # getter for: Lcom/android/dialer/list/SpeedDialFragment;->mPhoneNumberPickerActionListener:Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;
    invoke-static {v0}, Lcom/android/dialer/list/SpeedDialFragment;->access$100(Lcom/android/dialer/list/SpeedDialFragment;)Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/list/SpeedDialFragment$ContactTileAdapterListener;->this$0:Lcom/android/dialer/list/SpeedDialFragment;

    # getter for: Lcom/android/dialer/list/SpeedDialFragment;->mPhoneNumberPickerActionListener:Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;
    invoke-static {v0}, Lcom/android/dialer/list/SpeedDialFragment;->access$100(Lcom/android/dialer/list/SpeedDialFragment;)Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;->onCallNumberDirectly(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onContactSelected(Landroid/net/Uri;Landroid/graphics/Rect;)V
    .locals 1
    .param p1    # Landroid/net/Uri;
    .param p2    # Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/dialer/list/SpeedDialFragment$ContactTileAdapterListener;->this$0:Lcom/android/dialer/list/SpeedDialFragment;

    # getter for: Lcom/android/dialer/list/SpeedDialFragment;->mPhoneNumberPickerActionListener:Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;
    invoke-static {v0}, Lcom/android/dialer/list/SpeedDialFragment;->access$100(Lcom/android/dialer/list/SpeedDialFragment;)Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/list/SpeedDialFragment$ContactTileAdapterListener;->this$0:Lcom/android/dialer/list/SpeedDialFragment;

    # getter for: Lcom/android/dialer/list/SpeedDialFragment;->mPhoneNumberPickerActionListener:Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;
    invoke-static {v0}, Lcom/android/dialer/list/SpeedDialFragment;->access$100(Lcom/android/dialer/list/SpeedDialFragment;)Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;->onPickPhoneNumberAction(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method
