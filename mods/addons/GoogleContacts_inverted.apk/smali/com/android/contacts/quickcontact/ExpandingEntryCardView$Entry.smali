.class public final Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;
.super Ljava/lang/Object;
.source "ExpandingEntryCardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/quickcontact/ExpandingEntryCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field private final mAlternateContentDescription:Ljava/lang/String;

.field private final mAlternateIcon:Landroid/graphics/drawable/Drawable;

.field private final mAlternateIntent:Landroid/content/Intent;

.field private final mEntryContextMenuInfo:Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

.field private final mHeader:Ljava/lang/String;

.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mIconResourceId:I

.field private final mId:I

.field private final mIntent:Landroid/content/Intent;

.field private final mIsEditable:Z

.field private final mPrimaryContentDescription:Ljava/lang/String;

.field private final mShouldApplyColor:Z

.field private final mSubHeader:Ljava/lang/String;

.field private final mSubHeaderIcon:Landroid/graphics/drawable/Drawable;

.field private final mText:Ljava/lang/String;

.field private final mTextIcon:Landroid/graphics/drawable/Drawable;

.field private final mThirdContentDescription:Ljava/lang/String;

.field private final mThirdIcon:Landroid/graphics/drawable/Drawable;

.field private final mThirdIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/Intent;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;Ljava/lang/String;ZZLcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 1
    .param p1    # I
    .param p2    # Landroid/graphics/drawable/Drawable;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # Landroid/graphics/drawable/Drawable;
    .param p6    # Ljava/lang/String;
    .param p7    # Landroid/graphics/drawable/Drawable;
    .param p8    # Ljava/lang/String;
    .param p9    # Landroid/content/Intent;
    .param p10    # Landroid/graphics/drawable/Drawable;
    .param p11    # Landroid/content/Intent;
    .param p12    # Ljava/lang/String;
    .param p13    # Z
    .param p14    # Z
    .param p15    # Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;
    .param p16    # Landroid/graphics/drawable/Drawable;
    .param p17    # Landroid/content/Intent;
    .param p18    # Ljava/lang/String;
    .param p19    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mId:I

    iput-object p2, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mHeader:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mSubHeader:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mSubHeaderIcon:Landroid/graphics/drawable/Drawable;

    iput-object p6, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mText:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mTextIcon:Landroid/graphics/drawable/Drawable;

    iput-object p8, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mPrimaryContentDescription:Ljava/lang/String;

    iput-object p9, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mIntent:Landroid/content/Intent;

    iput-object p10, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mAlternateIcon:Landroid/graphics/drawable/Drawable;

    iput-object p11, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mAlternateIntent:Landroid/content/Intent;

    iput-object p12, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mAlternateContentDescription:Ljava/lang/String;

    iput-boolean p13, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mShouldApplyColor:Z

    iput-boolean p14, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mIsEditable:Z

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mEntryContextMenuInfo:Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mThirdIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mThirdIntent:Landroid/content/Intent;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mThirdContentDescription:Ljava/lang/String;

    move/from16 v0, p19

    iput v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mIconResourceId:I

    return-void
.end method

.method public constructor <init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;Ljava/lang/String;ZZLcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 20
    .param p1    # I
    .param p2    # Landroid/graphics/drawable/Drawable;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # Ljava/lang/String;
    .param p6    # Ljava/lang/String;
    .param p7    # Landroid/content/Intent;
    .param p8    # Landroid/graphics/drawable/Drawable;
    .param p9    # Landroid/content/Intent;
    .param p10    # Ljava/lang/String;
    .param p11    # Z
    .param p12    # Z
    .param p13    # Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;
    .param p14    # Landroid/graphics/drawable/Drawable;
    .param p15    # Landroid/content/Intent;
    .param p16    # Ljava/lang/String;
    .param p17    # I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    move-object/from16 v18, p16

    move/from16 v19, p17

    invoke-direct/range {v0 .. v19}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;-><init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/Intent;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;Ljava/lang/String;ZZLcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method getAlternateContentDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mAlternateContentDescription:Ljava/lang/String;

    return-object v0
.end method

.method getAlternateIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mAlternateIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getAlternateIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mAlternateIntent:Landroid/content/Intent;

    return-object v0
.end method

.method getEntryContextMenuInfo()Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mEntryContextMenuInfo:Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

    return-object v0
.end method

.method getHeader()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mHeader:Ljava/lang/String;

    return-object v0
.end method

.method getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getIconResourceId()I
    .locals 1

    iget v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mIconResourceId:I

    return v0
.end method

.method getId()I
    .locals 1

    iget v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mId:I

    return v0
.end method

.method getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method getPrimaryContentDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mPrimaryContentDescription:Ljava/lang/String;

    return-object v0
.end method

.method getSubHeader()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mSubHeader:Ljava/lang/String;

    return-object v0
.end method

.method getSubHeaderIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mSubHeaderIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mText:Ljava/lang/String;

    return-object v0
.end method

.method getTextIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mTextIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getThirdContentDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mThirdContentDescription:Ljava/lang/String;

    return-object v0
.end method

.method getThirdIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mThirdIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getThirdIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mThirdIntent:Landroid/content/Intent;

    return-object v0
.end method

.method shouldApplyColor()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mShouldApplyColor:Z

    return v0
.end method
