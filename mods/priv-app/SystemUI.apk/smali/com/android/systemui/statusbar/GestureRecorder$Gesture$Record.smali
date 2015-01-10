.class public abstract Lcom/android/systemui/statusbar/GestureRecorder$Gesture$Record;
.super Ljava/lang/Object;
.source "GestureRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/GestureRecorder$Gesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "Record"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/GestureRecorder$Gesture;

.field time:J


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/GestureRecorder$Gesture;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/GestureRecorder$Gesture$Record;->this$1:Lcom/android/systemui/statusbar/GestureRecorder$Gesture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
