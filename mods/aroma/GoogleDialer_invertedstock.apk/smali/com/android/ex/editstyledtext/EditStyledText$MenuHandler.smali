.class Lcom/android/ex/editstyledtext/EditStyledText$MenuHandler;
.super Ljava/lang/Object;
.source "EditStyledText.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/editstyledtext/EditStyledText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/editstyledtext/EditStyledText;


# direct methods
.method private constructor <init>(Lcom/android/ex/editstyledtext/EditStyledText;)V
    .locals 0

    iput-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$MenuHandler;->this$0:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ex/editstyledtext/EditStyledText;Lcom/android/ex/editstyledtext/EditStyledText$1;)V
    .locals 0
    .param p1    # Lcom/android/ex/editstyledtext/EditStyledText;
    .param p2    # Lcom/android/ex/editstyledtext/EditStyledText$1;

    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$MenuHandler;-><init>(Lcom/android/ex/editstyledtext/EditStyledText;)V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1    # Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$MenuHandler;->this$0:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText;->onTextContextMenuItem(I)Z

    move-result v0

    return v0
.end method
