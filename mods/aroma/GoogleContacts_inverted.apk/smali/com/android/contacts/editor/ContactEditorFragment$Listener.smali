.class public interface abstract Lcom/android/contacts/editor/ContactEditorFragment$Listener;
.super Ljava/lang/Object;
.source "ContactEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/ContactEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onContactNotFound()V
.end method

.method public abstract onContactSplit(Landroid/net/Uri;)V
.end method

.method public abstract onCustomCreateContactActivityRequested(Lcom/android/contacts/common/model/account/AccountWithDataSet;Landroid/os/Bundle;)V
.end method

.method public abstract onCustomEditContactActivityRequested(Lcom/android/contacts/common/model/account/AccountWithDataSet;Landroid/net/Uri;Landroid/os/Bundle;Z)V
.end method

.method public abstract onDeleteRequested(Landroid/net/Uri;)V
.end method

.method public abstract onEditOtherContactRequested(Landroid/net/Uri;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onReverted()V
.end method

.method public abstract onSaveFinished(Landroid/content/Intent;)V
.end method
