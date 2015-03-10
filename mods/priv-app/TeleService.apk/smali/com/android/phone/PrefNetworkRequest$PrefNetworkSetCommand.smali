.class Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;
.super Ljava/lang/Object;
.source "PrefNetworkRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PrefNetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrefNetworkSetCommand"
.end annotation


# instance fields
.field private final mPrefNetwork:I

.field private final mSlot:I

.field final synthetic this$0:Lcom/android/phone/PrefNetworkRequest;


# direct methods
.method private constructor <init>(Lcom/android/phone/PrefNetworkRequest;II)V
    .locals 0
    .param p2    # I
    .param p3    # I

    iput-object p1, p0, Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;->this$0:Lcom/android/phone/PrefNetworkRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;->mSlot:I

    iput p3, p0, Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;->mPrefNetwork:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PrefNetworkRequest;IILcom/android/phone/PrefNetworkRequest$1;)V
    .locals 0
    .param p1    # Lcom/android/phone/PrefNetworkRequest;
    .param p2    # I
    .param p3    # I
    .param p4    # Lcom/android/phone/PrefNetworkRequest$1;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;-><init>(Lcom/android/phone/PrefNetworkRequest;II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;)I
    .locals 1
    .param p0    # Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;

    iget v0, p0, Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;->mPrefNetwork:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;)I
    .locals 1
    .param p0    # Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;

    iget v0, p0, Lcom/android/phone/PrefNetworkRequest$PrefNetworkSetCommand;->mSlot:I

    return v0
.end method
