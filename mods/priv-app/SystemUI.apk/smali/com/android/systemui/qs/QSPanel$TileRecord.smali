.class final Lcom/android/systemui/qs/QSPanel$TileRecord;
.super Lcom/android/systemui/qs/QSPanel$Record;
.source "QSPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TileRecord"
.end annotation


# instance fields
.field col:I

.field row:I

.field scanState:Z

.field tile:Lcom/android/systemui/qs/QSTile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/QSTile",
            "<*>;"
        }
    .end annotation
.end field

.field tileView:Lcom/android/systemui/qs/QSTileView;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSPanel$Record;-><init>(Lcom/android/systemui/qs/QSPanel$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/QSPanel$1;)V
    .locals 0
    .param p1    # Lcom/android/systemui/qs/QSPanel$1;

    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel$TileRecord;-><init>()V

    return-void
.end method
