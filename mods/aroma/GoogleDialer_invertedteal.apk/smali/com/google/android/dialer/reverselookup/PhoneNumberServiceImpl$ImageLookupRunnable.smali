.class Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl$ImageLookupRunnable;
.super Ljava/lang/Object;
.source "PhoneNumberServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageLookupRunnable"
.end annotation


# instance fields
.field private mAccount:Ljava/lang/String;

.field private mListener:Lcom/android/incallui/service/PhoneNumberService$ImageLookupListener;

.field private mNumber:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;


# direct methods
.method private constructor <init>(Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/incallui/service/PhoneNumberService$ImageLookupListener;)V
    .locals 0
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # Lcom/android/incallui/service/PhoneNumberService$ImageLookupListener;

    iput-object p1, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl$ImageLookupRunnable;->this$0:Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl$ImageLookupRunnable;->mNumber:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl$ImageLookupRunnable;->mUrl:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl$ImageLookupRunnable;->mListener:Lcom/android/incallui/service/PhoneNumberService$ImageLookupListener;

    iput-object p2, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl$ImageLookupRunnable;->mAccount:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/incallui/service/PhoneNumberService$ImageLookupListener;Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl$1;)V
    .locals 0
    .param p1    # Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # Lcom/android/incallui/service/PhoneNumberService$ImageLookupListener;
    .param p6    # Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl$1;

    invoke-direct/range {p0 .. p5}, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl$ImageLookupRunnable;-><init>(Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/incallui/service/PhoneNumberService$ImageLookupListener;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const/4 v13, 0x2

    const/4 v0, 0x0

    :try_start_0
    iget-object v10, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl$ImageLookupRunnable;->mUrl:Ljava/lang/String;

    invoke-static {v10}, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->httpToHttps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v10, "https"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl$ImageLookupRunnable;->this$0:Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;

    # getter for: Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->mPeopleClient:Lcom/google/android/dialer/reverselookup/PeopleApiClient;
    invoke-static {v10}, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->access$100(Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;)Lcom/google/android/dialer/reverselookup/PeopleApiClient;

    move-result-object v10

    iget-object v11, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl$ImageLookupRunnable;->this$0:Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;

    # getter for: Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->access$000(Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;)Landroid/content/Context;

    move-result-object v11

    iget-object v12, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl$ImageLookupRunnable;->mAccount:Ljava/lang/String;

    invoke-virtual {v10, v11, v12, v9}, Lcom/google/android/dialer/reverselookup/PeopleApiClient;->imageLookup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    const/4 v4, 0x1

    :goto_0
    if-eqz v1, :cond_2

    # getter for: Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->mCachedNumberLookupService:Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl;
    invoke-static {}, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->access$400()Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl;

    move-result-object v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl$ImageLookupRunnable;->mNumber:Ljava/lang/String;

    if-eqz v10, :cond_1

    if-nez v3, :cond_1

    if-nez v4, :cond_0

    # getter for: Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->mCachedNumberLookupService:Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl;
    invoke-static {}, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->access$400()Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl;->isCacheUri(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    :cond_0
    # getter for: Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->mCachedNumberLookupService:Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl;
    invoke-static {}, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->access$400()Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl;

    move-result-object v10

    iget-object v11, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl$ImageLookupRunnable;->this$0:Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;

    # getter for: Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->access$000(Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;)Landroid/content/Context;

    move-result-object v11

    iget-object v12, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl$ImageLookupRunnable;->mNumber:Ljava/lang/String;

    invoke-virtual {v10, v11, v12, v1}, Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl;->addPhoto(Landroid/content/Context;Ljava/lang/String;[B)Z

    :cond_1
    const/4 v10, 0x0

    array-length v11, v1

    invoke-static {v1, v10, v11}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :cond_2
    iget-object v10, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl$ImageLookupRunnable;->mListener:Lcom/android/incallui/service/PhoneNumberService$ImageLookupListener;

    invoke-static {v10, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    iget-object v10, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl$ImageLookupRunnable;->this$0:Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;

    # getter for: Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->access$500(Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;)Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {v10, v13, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    :goto_1
    return-void

    :cond_3
    :try_start_1
    const-string v10, "content"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "android.resource"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    :cond_4
    iget-object v10, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl$ImageLookupRunnable;->this$0:Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;

    # getter for: Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->access$000(Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;)Landroid/content/Context;

    move-result-object v10

    # invokes: Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->loadPhotoFromContentUri(Landroid/content/Context;Landroid/net/Uri;)[B
    invoke-static {v10, v8}, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->access$200(Landroid/content/Context;Landroid/net/Uri;)[B

    move-result-object v1

    const/4 v3, 0x1

    goto :goto_0

    :cond_5
    # getter for: Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->access$300()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " scheme not supported for image lookups."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    # getter for: Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->access$300()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Error fetching image."

    invoke-static {v10, v11, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v10, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl$ImageLookupRunnable;->mListener:Lcom/android/incallui/service/PhoneNumberService$ImageLookupListener;

    invoke-static {v10, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    iget-object v10, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl$ImageLookupRunnable;->this$0:Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;

    # getter for: Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->access$500(Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;)Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {v10, v13, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    :catchall_0
    move-exception v10

    iget-object v11, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl$ImageLookupRunnable;->mListener:Lcom/android/incallui/service/PhoneNumberService$ImageLookupListener;

    invoke-static {v11, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    iget-object v11, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl$ImageLookupRunnable;->this$0:Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;

    # getter for: Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->access$500(Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;)Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v11, v13, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    throw v10
.end method
