.class public Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;
.super Ljava/lang/Object;
.source "AppearAnimationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/AppearAnimationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppearAnimationProperties"
.end annotation


# instance fields
.field public delays:[[J

.field public maxDelayColIndex:I

.field public maxDelayRowIndex:I

.field final synthetic this$0:Lcom/android/keyguard/AppearAnimationUtils;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/AppearAnimationUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->this$0:Lcom/android/keyguard/AppearAnimationUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
