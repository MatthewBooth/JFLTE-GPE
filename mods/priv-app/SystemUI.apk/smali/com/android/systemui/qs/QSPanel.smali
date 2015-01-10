.class public Lcom/android/systemui/qs/QSPanel;
.super Landroid/view/ViewGroup;
.source "QSPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSPanel$Callback;,
        Lcom/android/systemui/qs/QSPanel$TileRecord;,
        Lcom/android/systemui/qs/QSPanel$Record;,
        Lcom/android/systemui/qs/QSPanel$H;
    }
.end annotation


# instance fields
.field private mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

.field private mBrightnessPaddingTop:I

.field private final mBrightnessView:Landroid/view/View;

.field private mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

.field private mCellHeight:I

.field private mCellWidth:I

.field private final mClipper:Lcom/android/systemui/qs/QSDetailClipper;

.field private mColumns:I

.field private final mContext:Landroid/content/Context;

.field private final mDetail:Landroid/view/View;

.field private final mDetailContent:Landroid/view/ViewGroup;

.field private final mDetailDoneButton:Landroid/widget/TextView;

.field private mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

.field private final mDetailSettingsButton:Landroid/widget/TextView;

.field private mDualTileUnderlap:I

.field private mExpanded:Z

.field private mFooter:Lcom/android/systemui/qs/QSFooter;

.field private mGridContentVisible:Z

.field private final mHandler:Lcom/android/systemui/qs/QSPanel$H;

.field private final mHideGridContentWhenDone:Landroid/animation/AnimatorListenerAdapter;

.field private mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

.field private mLargeCellHeight:I

.field private mLargeCellWidth:I

.field private mListening:Z

.field private mPanelPaddingBottom:I

.field private final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/qs/QSPanel$TileRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTeardownDetailWhenDone:Landroid/animation/AnimatorListenerAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/QSPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/qs/QSPanel$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSPanel$H;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$1;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHandler:Lcom/android/systemui/qs/QSPanel$H;

    iput-boolean v3, p0, Lcom/android/systemui/qs/QSPanel;->mGridContentVisible:Z

    new-instance v0, Lcom/android/systemui/qs/QSPanel$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSPanel$6;-><init>(Lcom/android/systemui/qs/QSPanel;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTeardownDetailWhenDone:Landroid/animation/AnimatorListenerAdapter;

    new-instance v0, Lcom/android/systemui/qs/QSPanel$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSPanel$7;-><init>(Lcom/android/systemui/qs/QSPanel;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHideGridContentWhenDone:Landroid/animation/AnimatorListenerAdapter;

    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040030

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailContent:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    const v1, 0x102001a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailSettingsButton:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    const v1, 0x1020019

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailDoneButton:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updateDetailText()V

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040037

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    new-instance v0, Lcom/android/systemui/qs/QSFooter;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/QSFooter;-><init>(Lcom/android/systemui/qs/QSPanel;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Lcom/android/systemui/qs/QSFooter;

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSPanel;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSPanel;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Lcom/android/systemui/qs/QSFooter;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSFooter;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSPanel;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/android/systemui/qs/QSDetailClipper;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/QSDetailClipper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->updateResources()V

    new-instance v2, Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    const v0, 0x7f0e00f7

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0e00f8

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/settings/ToggleSlider;

    invoke-direct {v2, v3, v0, v1}, Lcom/android/systemui/settings/BrightnessController;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/android/systemui/settings/ToggleSlider;)V

    iput-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailDoneButton:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/qs/QSPanel$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSPanel$1;-><init>(Lcom/android/systemui/qs/QSPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$Record;Z)V
    .locals 0
    .param p0    # Lcom/android/systemui/qs/QSPanel;
    .param p1    # Lcom/android/systemui/qs/QSPanel$Record;
    .param p2    # Z

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->handleShowDetail(Lcom/android/systemui/qs/QSPanel$Record;Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/QSPanel;Landroid/view/View;I)V
    .locals 0
    .param p0    # Lcom/android/systemui/qs/QSPanel;
    .param p1    # Landroid/view/View;
    .param p2    # I

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->handleSetTileVisibility(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/QSPanel;)Landroid/view/ViewGroup;
    .locals 1
    .param p0    # Lcom/android/systemui/qs/QSPanel;

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailContent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$Record;)V
    .locals 0
    .param p0    # Lcom/android/systemui/qs/QSPanel;
    .param p1    # Lcom/android/systemui/qs/QSPanel$Record;

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->setDetailRecord(Lcom/android/systemui/qs/QSPanel$Record;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/qs/QSPanel;Z)V
    .locals 0
    .param p0    # Lcom/android/systemui/qs/QSPanel;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->setGridContentVisibility(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/QSPanel;)Z
    .locals 1
    .param p0    # Lcom/android/systemui/qs/QSPanel;

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mGridContentVisible:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/QSPanel;Landroid/view/View;I)V
    .locals 0
    .param p0    # Lcom/android/systemui/qs/QSPanel;
    .param p1    # Landroid/view/View;
    .param p2    # I

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->setTileVisibility(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/QSPanel;ZLcom/android/systemui/qs/QSPanel$Record;)V
    .locals 0
    .param p0    # Lcom/android/systemui/qs/QSPanel;
    .param p1    # Z
    .param p2    # Lcom/android/systemui/qs/QSPanel$Record;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->showDetail(ZLcom/android/systemui/qs/QSPanel$Record;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/QSPanel$Record;
    .locals 1
    .param p0    # Lcom/android/systemui/qs/QSPanel;

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/QSPanel;Z)V
    .locals 0
    .param p0    # Lcom/android/systemui/qs/QSPanel;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->fireToggleStateChanged(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/QSPanel;Z)V
    .locals 0
    .param p0    # Lcom/android/systemui/qs/QSPanel;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->fireScanStateChanged(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/statusbar/phone/QSTileHost;
    .locals 1
    .param p0    # Lcom/android/systemui/qs/QSPanel;

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    return-object v0
.end method

.method private addTile(Lcom/android/systemui/qs/QSTile;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;)V"
        }
    .end annotation

    new-instance v3, Lcom/android/systemui/qs/QSPanel$TileRecord;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/systemui/qs/QSPanel$TileRecord;-><init>(Lcom/android/systemui/qs/QSPanel$1;)V

    iput-object p1, v3, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    iget-object v4, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v4}, Lcom/android/systemui/qs/QSTile;->createTileView(Landroid/content/Context;)Lcom/android/systemui/qs/QSTileView;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    iget-object v4, v3, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/QSTileView;->setVisibility(I)V

    new-instance v0, Lcom/android/systemui/qs/QSPanel$2;

    invoke-direct {v0, p0, v3}, Lcom/android/systemui/qs/QSPanel$2;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    iget-object v4, v3, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v4, v0}, Lcom/android/systemui/qs/QSTile;->setCallback(Lcom/android/systemui/qs/QSTile$Callback;)V

    new-instance v1, Lcom/android/systemui/qs/QSPanel$3;

    invoke-direct {v1, p0, v3}, Lcom/android/systemui/qs/QSPanel$3;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    new-instance v2, Lcom/android/systemui/qs/QSPanel$4;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/qs/QSPanel$4;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    iget-object v4, v3, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v4, v1, v2}, Lcom/android/systemui/qs/QSTileView;->init(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iget-object v4, v3, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/QSTile;->setListening(Z)V

    iget-object v4, v3, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSTile;->getState()Lcom/android/systemui/qs/QSTile$State;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/android/systemui/qs/QSTile$Callback;->onStateChanged(Lcom/android/systemui/qs/QSTile$State;)V

    iget-object v4, v3, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSTile;->refreshState()V

    iget-object v4, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v3, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/QSPanel;->addView(Landroid/view/View;)V

    return-void
.end method

.method private static exactly(I)I
    .locals 1
    .param p0    # I

    const/high16 v0, 0x40000000

    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method private fireScanStateChanged(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSPanel$Callback;->onScanStateChanged(Z)V

    :cond_0
    return-void
.end method

.method private fireShowingDetail(Lcom/android/systemui/qs/QSTile$DetailAdapter;)V
    .locals 1
    .param p1    # Lcom/android/systemui/qs/QSTile$DetailAdapter;

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSPanel$Callback;->onShowingDetail(Lcom/android/systemui/qs/QSTile$DetailAdapter;)V

    :cond_0
    return-void
.end method

.method private fireToggleStateChanged(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSPanel$Callback;->onToggleStateChanged(Z)V

    :cond_0
    return-void
.end method

.method private getColumnCount(I)I
    .locals 5
    .param p1    # I

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v3, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSTileView;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    iget v3, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->row:I

    if-ne v3, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private getRowTop(I)I
    .locals 3
    .param p1    # I

    if-gtz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessPaddingTop:I

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessPaddingTop:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mLargeCellHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mDualTileUnderlap:I

    sub-int/2addr v0, v1

    add-int/lit8 v1, p1, -0x1

    iget v2, p0, Lcom/android/systemui/qs/QSPanel;->mCellHeight:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private handleSetTileVisibility(Landroid/view/View;I)V
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # I

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne p2, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private handleShowDetail(Lcom/android/systemui/qs/QSPanel$Record;Z)V
    .locals 2
    .param p1    # Lcom/android/systemui/qs/QSPanel$Record;
    .param p2    # Z

    instance-of v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->handleShowDetailTile(Lcom/android/systemui/qs/QSPanel$TileRecord;Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/systemui/qs/QSPanel;->handleShowDetailImpl(Lcom/android/systemui/qs/QSPanel$Record;ZII)V

    goto :goto_0
.end method

.method private handleShowDetailImpl(Lcom/android/systemui/qs/QSPanel$Record;ZII)V
    .locals 7
    .param p1    # Lcom/android/systemui/qs/QSPanel$Record;
    .param p2    # Z
    .param p3    # I
    .param p4    # I

    const/4 v5, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    if-ne v4, p2, :cond_1

    :goto_1
    return-void

    :cond_0
    move v4, v3

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_4

    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$Record;->detailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    iget-object v4, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    iget-object v5, p1, Lcom/android/systemui/qs/QSPanel$Record;->detailView:Landroid/view/View;

    iget-object v6, p0, Lcom/android/systemui/qs/QSPanel;->mDetailContent:Landroid/view/ViewGroup;

    invoke-interface {v0, v4, v5, v6}, Lcom/android/systemui/qs/QSTile$DetailAdapter;->createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/qs/QSPanel$Record;->detailView:Landroid/view/View;

    iget-object v4, p1, Lcom/android/systemui/qs/QSPanel$Record;->detailView:Landroid/view/View;

    if-nez v4, :cond_2

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Must return detail view"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    invoke-interface {v0}, Lcom/android/systemui/qs/QSTile$DetailAdapter;->getSettingsIntent()Landroid/content/Intent;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/qs/QSPanel;->mDetailSettingsButton:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mDetailSettingsButton:Landroid/widget/TextView;

    new-instance v4, Lcom/android/systemui/qs/QSPanel$5;

    invoke-direct {v4, p0, v2}, Lcom/android/systemui/qs/QSPanel$5;-><init>(Lcom/android/systemui/qs/QSPanel;Landroid/content/Intent;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mDetailContent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->bringToFront()V

    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mDetailContent:Landroid/view/ViewGroup;

    iget-object v4, p1, Lcom/android/systemui/qs/QSPanel$Record;->detailView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->setDetailRecord(Lcom/android/systemui/qs/QSPanel$Record;)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mHideGridContentWhenDone:Landroid/animation/AnimatorListenerAdapter;

    :goto_3
    const/16 v3, 0x20

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QSPanel;->sendAccessibilityEvent(I)V

    if-eqz p2, :cond_5

    :goto_4
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSPanel;->fireShowingDetail(Lcom/android/systemui/qs/QSTile$DetailAdapter;)V

    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    invoke-virtual {v3, p3, p4, p2, v1}, Lcom/android/systemui/qs/QSDetailClipper;->animateCircularClip(IIZLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_1

    :cond_3
    const/16 v3, 0x8

    goto :goto_2

    :cond_4
    invoke-direct {p0, v5}, Lcom/android/systemui/qs/QSPanel;->setGridContentVisibility(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mTeardownDetailWhenDone:Landroid/animation/AnimatorListenerAdapter;

    invoke-direct {p0, v3}, Lcom/android/systemui/qs/QSPanel;->fireScanStateChanged(Z)V

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private handleShowDetailTile(Lcom/android/systemui/qs/QSPanel$TileRecord;Z)V
    .locals 4
    .param p1    # Lcom/android/systemui/qs/QSPanel$TileRecord;
    .param p2    # Z

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    if-ne v2, p2, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    iget-object v2, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSTile;->getDetailAdapter()Lcom/android/systemui/qs/QSTile$DetailAdapter;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->detailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    iget-object v2, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->detailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    if-eqz v2, :cond_0

    :cond_3
    iget-object v2, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSTileView;->getLeft()I

    move-result v2

    iget-object v3, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSTileView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    iget-object v2, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSTileView;->getTop()I

    move-result v2

    iget-object v3, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSTileView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/systemui/qs/QSPanel;->handleShowDetailImpl(Lcom/android/systemui/qs/QSPanel$Record;ZII)V

    goto :goto_1
.end method

.method private refreshAllTiles()V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v2, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSTile;->refreshState()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Lcom/android/systemui/qs/QSFooter;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSFooter;->refreshState()V

    return-void
.end method

.method private setDetailRecord(Lcom/android/systemui/qs/QSPanel$Record;)V
    .locals 2
    .param p1    # Lcom/android/systemui/qs/QSPanel$Record;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    if-ne p1, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    instance-of v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-boolean v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->scanState:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSPanel;->fireScanStateChanged(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setGridContentVisibility(Z)V
    .locals 5
    .param p1    # Z

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v3, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSTileView;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    iget-object v3, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v3, v1}, Lcom/android/systemui/qs/QSTileView;->setVisibility(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mGridContentVisible:Z

    return-void
.end method

.method private setTileVisibility(Landroid/view/View;I)V
    .locals 3
    .param p1    # Landroid/view/View;
    .param p2    # I

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHandler:Lcom/android/systemui/qs/QSPanel$H;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/systemui/qs/QSPanel$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private showDetail(ZLcom/android/systemui/qs/QSPanel$Record;)V
    .locals 4
    .param p1    # Z
    .param p2    # Lcom/android/systemui/qs/QSPanel$Record;

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mHandler:Lcom/android/systemui/qs/QSPanel$H;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v1, v0, v2, p2}, Lcom/android/systemui/qs/QSPanel$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private updateDetailText()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailDoneButton:Landroid/widget/TextView;

    const v1, 0x7f0b00fe

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailSettingsButton:Landroid/widget/TextView;

    const v1, 0x7f0b00fd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method


# virtual methods
.method public closeDetail()V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/QSPanel;->showDetail(ZLcom/android/systemui/qs/QSPanel$Record;)V

    return-void
.end method

.method public getHost()Lcom/android/systemui/statusbar/phone/QSTileHost;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    return-object v0
.end method

.method public isShowingDetail()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1    # Landroid/content/res/Configuration;

    const v4, 0x7f0c0047

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mDetailDoneButton:Landroid/widget/TextView;

    invoke-static {v3, v4}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mDetailSettingsButton:Landroid/widget/TextView;

    invoke-static {v3, v4}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v1, v3, Lcom/android/systemui/qs/QSPanel$TileRecord;->detailView:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Lcom/android/systemui/qs/QSFooter;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSFooter;->onConfigurationChanged()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 23
    .param p1    # Z
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/QSPanel;->getWidth()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSPanel;->mBrightnessPaddingTop:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSPanel;->mBrightnessPaddingTop:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    add-int v21, v21, v22

    invoke-virtual/range {v17 .. v21}, Landroid/view/View;->layout(IIII)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/QSPanel;->getLayoutDirection()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    const/4 v10, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v0, v12, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/qs/QSTileView;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    iget v0, v12, Lcom/android/systemui/qs/QSPanel$TileRecord;->row:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/QSPanel;->getColumnCount(I)I

    move-result v4

    iget v0, v12, Lcom/android/systemui/qs/QSPanel$TileRecord;->row:I

    move/from16 v17, v0

    if-nez v17, :cond_2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/qs/QSPanel;->mLargeCellWidth:I

    :goto_2
    mul-int v17, v5, v4

    sub-int v17, v16, v17

    add-int/lit8 v18, v4, 0x1

    div-int v7, v17, v18

    iget v0, v12, Lcom/android/systemui/qs/QSPanel$TileRecord;->col:I

    move/from16 v17, v0

    mul-int v17, v17, v5

    iget v0, v12, Lcom/android/systemui/qs/QSPanel$TileRecord;->col:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    mul-int v18, v18, v7

    add-int v11, v17, v18

    iget v0, v12, Lcom/android/systemui/qs/QSPanel$TileRecord;->row:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/QSPanel;->getRowTop(I)I

    move-result v15

    iget-object v0, v12, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/qs/QSTileView;->getMeasuredWidth()I

    move-result v14

    if-eqz v10, :cond_3

    sub-int v13, v16, v11

    sub-int v11, v13, v14

    :goto_3
    iget-object v0, v12, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    move-object/from16 v17, v0

    iget-object v0, v12, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/qs/QSTileView;->getMeasuredHeight()I

    move-result v18

    add-int v18, v18, v15

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v11, v15, v13, v1}, Lcom/android/systemui/qs/QSTileView;->layout(IIII)V

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/qs/QSPanel;->mCellWidth:I

    goto :goto_2

    :cond_3
    add-int v13, v11, v14

    goto :goto_3

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/QSPanel;->getMeasuredHeight()I

    move-result v18

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/view/View;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSPanel;->mFooter:Lcom/android/systemui/qs/QSFooter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/qs/QSFooter;->hasFooter()Z

    move-result v17

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSPanel;->mFooter:Lcom/android/systemui/qs/QSFooter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/qs/QSFooter;->getView()Landroid/view/View;

    move-result-object v8

    const/16 v17, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/QSPanel;->getMeasuredHeight()I

    move-result v18

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    sub-int v18, v18, v19

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/QSPanel;->getMeasuredHeight()I

    move-result v20

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 14
    .param p1    # I
    .param p2    # I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    iget-object v11, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    invoke-static {v10}, Lcom/android/systemui/qs/QSPanel;->exactly(I)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/View;->measure(II)V

    iget-object v11, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    iget v12, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessPaddingTop:I

    add-int v0, v11, v12

    iget-object v11, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Lcom/android/systemui/qs/QSFooter;

    invoke-virtual {v11}, Lcom/android/systemui/qs/QSFooter;->getView()Landroid/view/View;

    move-result-object v11

    invoke-static {v10}, Lcom/android/systemui/qs/QSPanel;->exactly(I)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/View;->measure(II)V

    const/4 v6, -0x1

    const/4 v1, -0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    iget-object v11, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v11, v7, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v11}, Lcom/android/systemui/qs/QSTileView;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_0

    const/4 v11, -0x1

    if-eq v6, v11, :cond_1

    iget v11, p0, Lcom/android/systemui/qs/QSPanel;->mColumns:I

    add-int/lit8 v11, v11, -0x1

    if-eq v1, v11, :cond_1

    iget-object v11, v7, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v11}, Lcom/android/systemui/qs/QSTile;->supportsDualTargets()Z

    move-result v11

    if-eq v8, v11, :cond_2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    const/4 v1, 0x0

    iget-object v11, v7, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v11}, Lcom/android/systemui/qs/QSTile;->supportsDualTargets()Z

    move-result v8

    :goto_1
    iput v6, v7, Lcom/android/systemui/qs/QSPanel$TileRecord;->row:I

    iput v1, v7, Lcom/android/systemui/qs/QSPanel$TileRecord;->col:I

    add-int/lit8 v9, v6, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v11, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v11, v7, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    iget-object v12, v7, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v12}, Lcom/android/systemui/qs/QSTile;->supportsDualTargets()Z

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/systemui/qs/QSTileView;->setDual(Z)V

    iget-object v11, v7, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v11}, Lcom/android/systemui/qs/QSTileView;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_4

    iget v11, v7, Lcom/android/systemui/qs/QSPanel$TileRecord;->row:I

    if-nez v11, :cond_5

    iget v3, p0, Lcom/android/systemui/qs/QSPanel;->mLargeCellWidth:I

    :goto_3
    iget v11, v7, Lcom/android/systemui/qs/QSPanel$TileRecord;->row:I

    if-nez v11, :cond_6

    iget v2, p0, Lcom/android/systemui/qs/QSPanel;->mLargeCellHeight:I

    :goto_4
    iget-object v11, v7, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-static {v3}, Lcom/android/systemui/qs/QSPanel;->exactly(I)I

    move-result v12

    invoke-static {v2}, Lcom/android/systemui/qs/QSPanel;->exactly(I)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Lcom/android/systemui/qs/QSTileView;->measure(II)V

    goto :goto_2

    :cond_5
    iget v3, p0, Lcom/android/systemui/qs/QSPanel;->mCellWidth:I

    goto :goto_3

    :cond_6
    iget v2, p0, Lcom/android/systemui/qs/QSPanel;->mCellHeight:I

    goto :goto_4

    :cond_7
    if-nez v9, :cond_a

    move v4, v0

    :goto_5
    iget-object v11, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Lcom/android/systemui/qs/QSFooter;

    invoke-virtual {v11}, Lcom/android/systemui/qs/QSFooter;->hasFooter()Z

    move-result v11

    if-eqz v11, :cond_8

    iget-object v11, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Lcom/android/systemui/qs/QSFooter;

    invoke-virtual {v11}, Lcom/android/systemui/qs/QSFooter;->getView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v4, v11

    :cond_8
    iget-object v11, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    invoke-static {v10}, Lcom/android/systemui/qs/QSPanel;->exactly(I)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/View;->measure(II)V

    iget-object v11, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    if-ge v11, v4, :cond_9

    iget-object v11, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    invoke-static {v10}, Lcom/android/systemui/qs/QSPanel;->exactly(I)I

    move-result v12

    invoke-static {v4}, Lcom/android/systemui/qs/QSPanel;->exactly(I)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Landroid/view/View;->measure(II)V

    :cond_9
    iget-object v11, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-static {v4, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-virtual {p0, v10, v11}, Lcom/android/systemui/qs/QSPanel;->setMeasuredDimension(II)V

    return-void

    :cond_a
    invoke-direct {p0, v9}, Lcom/android/systemui/qs/QSPanel;->getRowTop(I)I

    move-result v11

    iget v12, p0, Lcom/android/systemui/qs/QSPanel;->mPanelPaddingBottom:I

    add-int v4, v11, v12

    goto :goto_5
.end method

.method public setBrightnessMirror(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V
    .locals 4
    .param p1    # Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    const v3, 0x7f0e00f8

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QSPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/settings/ToggleSlider;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->getMirror()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/settings/ToggleSlider;

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSlider;->setMirror(Lcom/android/systemui/settings/ToggleSlider;)V

    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/ToggleSlider;->setMirrorController(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    return-void
.end method

.method public setCallback(Lcom/android/systemui/qs/QSPanel$Callback;)V
    .locals 0
    .param p1    # Lcom/android/systemui/qs/QSPanel$Callback;

    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    return-void
.end method

.method public setExpanded(Z)V
    .locals 1
    .param p1    # Z

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->closeDetail()V

    goto :goto_0
.end method

.method public setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V
    .locals 1
    .param p1    # Lcom/android/systemui/statusbar/phone/QSTileHost;

    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Lcom/android/systemui/qs/QSFooter;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSFooter;->setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    return-void
.end method

.method public setListening(Z)V
    .locals 4
    .param p1    # Z

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    if-ne v2, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v2, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/QSTile;->setListening(Z)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Lcom/android/systemui/qs/QSFooter;

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/QSFooter;->setListening(Z)V

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->refreshAllTiles()V

    :cond_2
    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {v2}, Lcom/android/systemui/settings/BrightnessController;->registerCallbacks()V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {v2}, Lcom/android/systemui/settings/BrightnessController;->unregisterCallbacks()V

    goto :goto_0
.end method

.method public setTiles(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;>;)V"
        }
    .end annotation

    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v3, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QSPanel;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSTile;

    invoke-direct {p0, v2}, Lcom/android/systemui/qs/QSPanel;->addTile(Lcom/android/systemui/qs/QSTile;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->isShowingDetail()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->bringToFront()V

    :cond_2
    return-void
.end method

.method public showDetailAdapter(ZLcom/android/systemui/qs/QSTile$DetailAdapter;)V
    .locals 2
    .param p1    # Z
    .param p2    # Lcom/android/systemui/qs/QSTile$DetailAdapter;

    new-instance v0, Lcom/android/systemui/qs/QSPanel$Record;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/QSPanel$Record;-><init>(Lcom/android/systemui/qs/QSPanel$1;)V

    iput-object p2, v0, Lcom/android/systemui/qs/QSPanel$Record;->detailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/QSPanel;->showDetail(ZLcom/android/systemui/qs/QSPanel$Record;)V

    return-void
.end method

.method public updateResources()V
    .locals 5

    const v4, 0x3f99999a

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    const v3, 0x7f09000b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    const v2, 0x7f0c0035

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mCellHeight:I

    iget v2, p0, Lcom/android/systemui/qs/QSPanel;->mCellHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mCellWidth:I

    const v2, 0x7f0c003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mLargeCellHeight:I

    iget v2, p0, Lcom/android/systemui/qs/QSPanel;->mLargeCellHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mLargeCellWidth:I

    const v2, 0x7f0c0042

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mPanelPaddingBottom:I

    const v2, 0x7f0c003b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mDualTileUnderlap:I

    const v2, 0x7f0c0045

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessPaddingTop:I

    iget v2, p0, Lcom/android/systemui/qs/QSPanel;->mColumns:I

    if-eq v2, v0, :cond_0

    iput v0, p0, Lcom/android/systemui/qs/QSPanel;->mColumns:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->postInvalidate()V

    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->refreshAllTiles()V

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updateDetailText()V

    return-void
.end method
