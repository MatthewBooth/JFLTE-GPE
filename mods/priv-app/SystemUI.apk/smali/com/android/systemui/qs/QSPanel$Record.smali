.class Lcom/android/systemui/qs/QSPanel$Record;
.super Ljava/lang/Object;
.source "QSPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Record"
.end annotation


# instance fields
.field detailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

.field detailView:Landroid/view/View;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/QSPanel$1;)V
    .locals 0
    .param p1    # Lcom/android/systemui/qs/QSPanel$1;

    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel$Record;-><init>()V

    return-void
.end method
