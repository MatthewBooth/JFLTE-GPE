.class Lcom/google/android/dialer/provider/DialerProvider$1;
.super Ljava/lang/Object;
.source "DialerProvider.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/dialer/provider/DialerProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/dialer/provider/DialerProvider;

.field final synthetic val$filter:Ljava/lang/String;

.field final synthetic val$finalMaxResults:I

.field final synthetic val$location:Landroid/location/Location;

.field final synthetic val$projection:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/dialer/provider/DialerProvider;[Ljava/lang/String;Ljava/lang/String;ILandroid/location/Location;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/dialer/provider/DialerProvider$1;->this$0:Lcom/google/android/dialer/provider/DialerProvider;

    iput-object p2, p0, Lcom/google/android/dialer/provider/DialerProvider$1;->val$projection:[Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/dialer/provider/DialerProvider$1;->val$filter:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/dialer/provider/DialerProvider$1;->val$finalMaxResults:I

    iput-object p5, p0, Lcom/google/android/dialer/provider/DialerProvider$1;->val$location:Landroid/location/Location;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Landroid/database/Cursor;
    .locals 5

    iget-object v0, p0, Lcom/google/android/dialer/provider/DialerProvider$1;->this$0:Lcom/google/android/dialer/provider/DialerProvider;

    iget-object v1, p0, Lcom/google/android/dialer/provider/DialerProvider$1;->val$projection:[Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/dialer/provider/DialerProvider$1;->val$filter:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/dialer/provider/DialerProvider$1;->val$finalMaxResults:I

    iget-object v4, p0, Lcom/google/android/dialer/provider/DialerProvider$1;->val$location:Landroid/location/Location;

    # invokes: Lcom/google/android/dialer/provider/DialerProvider;->handleFilter([Ljava/lang/String;Ljava/lang/String;ILandroid/location/Location;)Landroid/database/Cursor;
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/dialer/provider/DialerProvider;->access$000(Lcom/google/android/dialer/provider/DialerProvider;[Ljava/lang/String;Ljava/lang/String;ILandroid/location/Location;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/dialer/provider/DialerProvider$1;->call()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
