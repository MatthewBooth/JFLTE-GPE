.class public interface abstract Lcom/android/contacts/group/GroupDetailFragment$Listener;
.super Ljava/lang/Object;
.source "GroupDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/group/GroupDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onAccountTypeUpdated(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onContactSelected(Landroid/net/Uri;)V
.end method

.method public abstract onEditRequested(Landroid/net/Uri;)V
.end method

.method public abstract onGroupSizeUpdated(Ljava/lang/String;)V
.end method

.method public abstract onGroupTitleUpdated(Ljava/lang/String;)V
.end method
