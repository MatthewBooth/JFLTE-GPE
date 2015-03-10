.class public Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;
.super Ljava/lang/Object;
.source "CatCmdMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/CatCmdMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CallSettings"
.end annotation


# instance fields
.field public callMsg:Lcom/android/internal/telephony/cat/TextMessage;

.field public confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

.field final synthetic this$0:Lcom/android/internal/telephony/cat/CatCmdMessage;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->this$0:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
