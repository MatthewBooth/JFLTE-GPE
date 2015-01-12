.class public Lcom/android/dialer/list/ShortcutCardsAdapter;
.super Landroid/widget/BaseAdapter;
.source "ShortcutCardsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/list/ShortcutCardsAdapter$SwipeableShortcutCard;,
        Lcom/android/dialer/list/ShortcutCardsAdapter$CustomDataSetObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCallLogAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

.field private final mCallLogMarginBottom:I

.field private final mCallLogMarginHorizontal:I

.field private final mCallLogMarginTop:I

.field private final mCallLogOnItemSwipeListener:Lcom/android/dialer/list/SwipeHelper$OnItemGestureListener;

.field private final mCallLogPaddingBottom:I

.field private final mCallLogPaddingStart:I

.field private final mCallLogPaddingTop:I

.field private final mCallLogQueryHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

.field private final mCallLogQueryHandlerListener:Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;

.field private final mCardMaxHorizontalClip:I

.field private final mContext:Landroid/content/Context;

.field private final mFragment:Lcom/android/dialer/list/ListsFragment;

.field private final mObserver:Landroid/database/DataSetObserver;

.field private final mShortCardBackgroundColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/dialer/list/ShortcutCardsAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/list/ShortcutCardsAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/dialer/list/ListsFragment;Lcom/android/dialer/calllog/CallLogAdapter;)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/dialer/list/ListsFragment;
    .param p3    # Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v1, Lcom/android/dialer/list/ShortcutCardsAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/dialer/list/ShortcutCardsAdapter$1;-><init>(Lcom/android/dialer/list/ShortcutCardsAdapter;)V

    iput-object v1, p0, Lcom/android/dialer/list/ShortcutCardsAdapter;->mCallLogOnItemSwipeListener:Lcom/android/dialer/list/SwipeHelper$OnItemGestureListener;

    new-instance v1, Lcom/android/dialer/list/ShortcutCardsAdapter$2;

    invoke-direct {v1, p0}, Lcom/android/dialer/list/ShortcutCardsAdapter$2;-><init>(Lcom/android/dialer/list/ShortcutCardsAdapter;)V

    iput-object v1, p0, Lcom/android/dialer/list/ShortcutCardsAdapter;->mCallLogQueryHandlerListener:Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object p1, p0, Lcom/android/dialer/list/ShortcutCardsAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/dialer/list/ShortcutCardsAdapter;->mFragment:Lcom/android/dialer/list/ListsFragment;

    const v1, 0x7f0b00a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/dialer/list/ShortcutCardsAdapter;->mCardMaxHorizontalClip:I

    const v1, 0x7f0b00a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/dialer/list/ShortcutCardsAdapter;->mCallLogMarginHorizontal:I

    const v1, 0x7f0b00a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/dialer/list/ShortcutCardsAdapter;->mCallLogMarginTop:I

    const v1, 0x7f0b00a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/dialer/list/ShortcutCardsAdapter;->mCallLogMarginBottom:I

    const v1, 0x7f0b00a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/dialer/list/ShortcutCardsAdapter;->mCallLogPaddingStart:I

    const v1, 0x7f0b00a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/dialer/list/ShortcutCardsAdapter;->mCallLogPaddingTop:I

    const v1, 0x7f0b00a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/dialer/list/ShortcutCardsAdapter;->mCallLogPaddingBottom:I

    const v1, 0x7f090082

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/dialer/list/ShortcutCardsAdapter;->mShortCardBackgroundColor:I

    iput-object p3, p0, Lcom/android/dialer/list/ShortcutCardsAdapter;->mCallLogAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    new-instance v1, Lcom/android/dialer/list/ShortcutCardsAdapter$CustomDataSetObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/dialer/list/ShortcutCardsAdapter$CustomDataSetObserver;-><init>(Lcom/android/dialer/list/ShortcutCardsAdapter;Lcom/android/dialer/list/ShortcutCardsAdapter$1;)V

    iput-object v1, p0, Lcom/android/dialer/list/ShortcutCardsAdapter;->mObserver:Landroid/database/DataSetObserver;

    iget-object v1, p0, Lcom/android/dialer/list/ShortcutCardsAdapter;->mCallLogAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    iget-object v2, p0, Lcom/android/dialer/list/ShortcutCardsAdapter;->mObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v1, v2}, Lcom/android/dialer/calllog/CallLogAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    new-instance v1, Lcom/android/dialer/calllog/CallLogQueryHandler;

    iget-object v2, p0, Lcom/android/dialer/list/ShortcutCardsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dialer/list/ShortcutCardsAdapter;->mCallLogQueryHandlerListener:Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;

    invoke-direct {v1, v2, v3}, Lcom/android/dialer/calllog/CallLogQueryHandler;-><init>(Landroid/content/ContentResolver;Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;)V

    iput-object v1, p0, Lcom/android/dialer/list/ShortcutCardsAdapter;->mCallLogQueryHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/list/ShortcutCardsAdapter;)Lcom/android/dialer/calllog/CallLogQueryHandler;
    .locals 1
    .param p0    # Lcom/android/dialer/list/ShortcutCardsAdapter;

    iget-object v0, p0, Lcom/android/dialer/list/ShortcutCardsAdapter;->mCallLogQueryHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/dialer/list/ShortcutCardsAdapter;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/dialer/list/ShortcutCardsAdapter;

    iget-object v0, p0, Lcom/android/dialer/list/ShortcutCardsAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/dialer/list/ShortcutCardsAdapter;)I
    .locals 1
    .param p0    # Lcom/android/dialer/list/ShortcutCardsAdapter;

    iget v0, p0, Lcom/android/dialer/list/ShortcutCardsAdapter;->mCallLogPaddingTop:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/dialer/list/ShortcutCardsAdapter;)I
    .locals 1
    .param p0    # Lcom/android/dialer/list/ShortcutCardsAdapter;

    iget v0, p0, Lcom/android/dialer/list/ShortcutCardsAdapter;->mCallLogPaddingBottom:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/dialer/list/ShortcutCardsAdapter;)I
    .locals 1
    .param p0    # Lcom/android/dialer/list/ShortcutCardsAdapter;

    iget v0, p0, Lcom/android/dialer/list/ShortcutCardsAdapter;->mShortCardBackgroundColor:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/dialer/list/ShortcutCardsAdapter;)Lcom/android/dialer/list/ListsFragment;
    .locals 1
    .param p0    # Lcom/android/dialer/list/ShortcutCardsAdapter;

    iget-object v0, p0, Lcom/android/dialer/list/ShortcutCardsAdapter;->mFragment:Lcom/android/dialer/list/ListsFragment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/dialer/list/ShortcutCardsAdapter;)Lcom/android/dialer/calllog/CallLogAdapter;
    .locals 1
    .param p0    # Lcom/android/dialer/list/ShortcutCardsAdapter;

    iget-object v0, p0, Lcom/android/dialer/list/ShortcutCardsAdapter;->mCallLogAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/dialer/list/ShortcutCardsAdapter;)I
    .locals 1
    .param p0    # Lcom/android/dialer/list/ShortcutCardsAdapter;

    iget v0, p0, Lcom/android/dialer/list/ShortcutCardsAdapter;->mCallLogMarginHorizontal:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/dialer/list/ShortcutCardsAdapter;)I
    .locals 1
    .param p0    # Lcom/android/dialer/list/ShortcutCardsAdapter;

    iget v0, p0, Lcom/android/dialer/list/ShortcutCardsAdapter;->mCallLogMarginTop:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/dialer/list/ShortcutCardsAdapter;)I
    .locals 1
    .param p0    # Lcom/android/dialer/list/ShortcutCardsAdapter;

    iget v0, p0, Lcom/android/dialer/list/ShortcutCardsAdapter;->mCallLogMarginBottom:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/dialer/list/ShortcutCardsAdapter;)I
    .locals 1
    .param p0    # Lcom/android/dialer/list/ShortcutCardsAdapter;

    iget v0, p0, Lcom/android/dialer/list/ShortcutCardsAdapter;->mCallLogPaddingStart:I

    return v0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/list/ShortcutCardsAdapter;->mCallLogAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/list/ShortcutCardsAdapter;->mCallLogAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/dialer/list/ShortcutCardsAdapter;->mCallLogAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v0, p1}, Lcom/android/dialer/calllog/CallLogAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1    # I

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/dialer/list/ShortcutCardsAdapter;->mCallLogAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v0, p1}, Lcom/android/dialer/calllog/CallLogAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    if-nez p2, :cond_0

    new-instance v1, Lcom/android/dialer/list/ShortcutCardsAdapter$SwipeableShortcutCard;

    iget-object v2, p0, Lcom/android/dialer/list/ShortcutCardsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/dialer/list/ShortcutCardsAdapter$SwipeableShortcutCard;-><init>(Lcom/android/dialer/list/ShortcutCardsAdapter;Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/dialer/list/ShortcutCardsAdapter;->mCallLogOnItemSwipeListener:Lcom/android/dialer/list/SwipeHelper$OnItemGestureListener;

    invoke-virtual {v1, v2}, Lcom/android/dialer/list/ShortcutCardsAdapter$SwipeableShortcutCard;->setOnItemSwipeListener(Lcom/android/dialer/list/SwipeHelper$OnItemGestureListener;)V

    :goto_0
    iget-object v3, p0, Lcom/android/dialer/list/ShortcutCardsAdapter;->mCallLogAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    if-nez p2, :cond_1

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3, p1, v2, p3}, Lcom/android/dialer/calllog/CallLogAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/dialer/list/ShortcutCardsAdapter$SwipeableShortcutCard;->removeAllViews()V

    # invokes: Lcom/android/dialer/list/ShortcutCardsAdapter$SwipeableShortcutCard;->prepareChildView(Landroid/view/View;)V
    invoke-static {v1, v0}, Lcom/android/dialer/list/ShortcutCardsAdapter$SwipeableShortcutCard;->access$500(Lcom/android/dialer/list/ShortcutCardsAdapter$SwipeableShortcutCard;Landroid/view/View;)V

    invoke-virtual {v1, v0}, Lcom/android/dialer/list/ShortcutCardsAdapter$SwipeableShortcutCard;->addView(Landroid/view/View;)V

    return-object v1

    :cond_0
    move-object v1, p2

    check-cast v1, Lcom/android/dialer/list/ShortcutCardsAdapter$SwipeableShortcutCard;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/dialer/list/ShortcutCardsAdapter$SwipeableShortcutCard;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/list/ShortcutCardsAdapter;->mCallLogAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/dialer/list/ShortcutCardsAdapter;->mCallLogAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v0, p1}, Lcom/android/dialer/calllog/CallLogAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method
