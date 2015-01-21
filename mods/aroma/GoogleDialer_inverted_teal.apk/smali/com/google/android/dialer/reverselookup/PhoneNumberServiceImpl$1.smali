.class Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl$1;
.super Landroid/os/Handler;
.source "PhoneNumberServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;


# direct methods
.method constructor <init>(Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;Landroid/os/Looper;)V
    .locals 0
    .param p2    # Landroid/os/Looper;

    iput-object p1, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl$1;->this$0:Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1    # Landroid/os/Message;

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/incallui/service/PhoneNumberService$NumberLookupListener;

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/android/incallui/service/PhoneNumberService$PhoneNumberInfo;

    invoke-interface {v2, v3}, Lcom/android/incallui/service/PhoneNumberService$NumberLookupListener;->onPhoneNumberInfoComplete(Lcom/android/incallui/service/PhoneNumberService$PhoneNumberInfo;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/incallui/service/PhoneNumberService$ImageLookupListener;

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-interface {v2, v3}, Lcom/android/incallui/service/PhoneNumberService$ImageLookupListener;->onImageFetchComplete(Landroid/graphics/Bitmap;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
