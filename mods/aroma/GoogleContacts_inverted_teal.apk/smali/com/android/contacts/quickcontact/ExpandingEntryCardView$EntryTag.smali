.class final Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTag;
.super Ljava/lang/Object;
.source "ExpandingEntryCardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/quickcontact/ExpandingEntryCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EntryTag"
.end annotation


# instance fields
.field private final mId:I

.field private final mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(ILandroid/content/Intent;)V
    .locals 0
    .param p1    # I
    .param p2    # Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTag;->mId:I

    iput-object p2, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTag;->mIntent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    iget v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTag;->mId:I

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTag;->mIntent:Landroid/content/Intent;

    return-object v0
.end method
