.class public interface abstract Lcom/android/contacts/editor/Editor;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/Editor$EditorListener;
    }
.end annotation


# virtual methods
.method public abstract clearAllFields()V
.end method

.method public abstract deleteEditor()V
.end method

.method public abstract editNewlyAddedField()V
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract setDeletable(Z)V
.end method

.method public abstract setEditorListener(Lcom/android/contacts/editor/Editor$EditorListener;)V
.end method

.method public abstract setValues(Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V
.end method
