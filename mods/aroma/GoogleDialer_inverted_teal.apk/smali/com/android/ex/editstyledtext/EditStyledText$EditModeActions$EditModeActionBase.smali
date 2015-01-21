.class public Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;
.super Ljava/lang/Object;
.source "EditStyledText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EditModeActionBase"
.end annotation


# instance fields
.field private mParams:[Ljava/lang/Object;


# virtual methods
.method protected addParams([Ljava/lang/Object;)V
    .locals 0
    .param p1    # [Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;->mParams:[Ljava/lang/Object;

    return-void
.end method

.method protected doEndPosIsSelected()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;->doStartPosIsSelected()Z

    move-result v0

    return v0
.end method

.method protected doNotSelected()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected doSelectionIsFixed()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;->doEndPosIsSelected()Z

    move-result v0

    return v0
.end method

.method protected doSelectionIsFixedAndWaitingInput()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;->doEndPosIsSelected()Z

    move-result v0

    return v0
.end method

.method protected doStartPosIsSelected()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;->doNotSelected()Z

    move-result v0

    return v0
.end method
