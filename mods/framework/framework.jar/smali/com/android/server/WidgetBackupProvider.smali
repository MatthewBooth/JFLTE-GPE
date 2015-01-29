.class public interface abstract Lcom/android/server/WidgetBackupProvider;
.super Ljava/lang/Object;
.source "WidgetBackupProvider.java"


# virtual methods
.method public abstract getWidgetParticipants(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWidgetState(Ljava/lang/String;I)[B
.end method

.method public abstract restoreFinished(I)V
.end method

.method public abstract restoreStarting(I)V
.end method

.method public abstract restoreWidgetState(Ljava/lang/String;[BI)V
.end method
