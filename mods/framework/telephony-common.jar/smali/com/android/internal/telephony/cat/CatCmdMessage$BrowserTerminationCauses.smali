.class public final Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserTerminationCauses;
.super Ljava/lang/Object;
.source "CatCmdMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/CatCmdMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BrowserTerminationCauses"
.end annotation


# static fields
.field public static final ERROR_TERMINATION:I = 0x1

.field public static final USER_TERMINATION:I


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cat/CatCmdMessage;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserTerminationCauses;->this$0:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
