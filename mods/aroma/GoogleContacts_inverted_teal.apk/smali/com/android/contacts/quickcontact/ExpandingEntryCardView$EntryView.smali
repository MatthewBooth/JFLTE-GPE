.class public final Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryView;
.super Landroid/widget/RelativeLayout;
.source "ExpandingEntryCardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/quickcontact/ExpandingEntryCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EntryView"
.end annotation


# instance fields
.field private mEntryContextMenuInfo:Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryView;->mEntryContextMenuInfo:Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

    return-object v0
.end method

.method public setContextMenuInfo(Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;)V
    .locals 0
    .param p1    # Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

    iput-object p1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryView;->mEntryContextMenuInfo:Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

    return-void
.end method
