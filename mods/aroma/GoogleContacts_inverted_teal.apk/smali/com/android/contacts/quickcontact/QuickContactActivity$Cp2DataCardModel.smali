.class Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cp2DataCardModel"
.end annotation


# instance fields
.field public aboutCardEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;",
            ">;>;"
        }
    .end annotation
.end field

.field public contactCardEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;",
            ">;>;"
        }
    .end annotation
.end field

.field public customAboutCardName:Ljava/lang/String;

.field public dataItemsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/dataitem/DataItem;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity$1;)V
    .locals 0
    .param p1    # Lcom/android/contacts/quickcontact/QuickContactActivity$1;

    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;-><init>()V

    return-void
.end method
