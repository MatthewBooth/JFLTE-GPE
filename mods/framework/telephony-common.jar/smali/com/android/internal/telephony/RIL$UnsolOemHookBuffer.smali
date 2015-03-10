.class public final Lcom/android/internal/telephony/RIL$UnsolOemHookBuffer;
.super Ljava/lang/Object;
.source "RIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UnsolOemHookBuffer"
.end annotation


# instance fields
.field private mData:[B

.field private mRilInstance:I

.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/RIL;I[B)V
    .locals 0
    .param p2    # I
    .param p3    # [B

    iput-object p1, p0, Lcom/android/internal/telephony/RIL$UnsolOemHookBuffer;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/internal/telephony/RIL$UnsolOemHookBuffer;->mRilInstance:I

    iput-object p3, p0, Lcom/android/internal/telephony/RIL$UnsolOemHookBuffer;->mData:[B

    return-void
.end method


# virtual methods
.method public getRilInstance()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/RIL$UnsolOemHookBuffer;->mRilInstance:I

    return v0
.end method

.method public getUnsolOemHookBuffer()[B
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/RIL$UnsolOemHookBuffer;->mData:[B

    return-object v0
.end method
