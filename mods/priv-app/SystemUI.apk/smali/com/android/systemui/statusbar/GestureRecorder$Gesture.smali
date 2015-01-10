.class public Lcom/android/systemui/statusbar/GestureRecorder$Gesture;
.super Ljava/lang/Object;
.source "GestureRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/GestureRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Gesture"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/GestureRecorder$Gesture$TagRecord;,
        Lcom/android/systemui/statusbar/GestureRecorder$Gesture$Record;
    }
.end annotation


# instance fields
.field mComplete:Z

.field mDownTime:J

.field private mRecords:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/systemui/statusbar/GestureRecorder$Gesture$Record;",
            ">;"
        }
    .end annotation
.end field

.field private mTags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/statusbar/GestureRecorder;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/GestureRecorder;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/GestureRecorder$Gesture;->this$0:Lcom/android/systemui/statusbar/GestureRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/GestureRecorder$Gesture;->mRecords:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/GestureRecorder$Gesture;->mTags:Ljava/util/HashSet;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/systemui/statusbar/GestureRecorder$Gesture;->mDownTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/GestureRecorder$Gesture;->mComplete:Z

    return-void
.end method


# virtual methods
.method public tag(JLjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1    # J
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/statusbar/GestureRecorder$Gesture;->mRecords:Ljava/util/LinkedList;

    new-instance v0, Lcom/android/systemui/statusbar/GestureRecorder$Gesture$TagRecord;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/GestureRecorder$Gesture$TagRecord;-><init>(Lcom/android/systemui/statusbar/GestureRecorder$Gesture;JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/GestureRecorder$Gesture;->mTags:Ljava/util/HashSet;

    invoke-virtual {v0, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method
