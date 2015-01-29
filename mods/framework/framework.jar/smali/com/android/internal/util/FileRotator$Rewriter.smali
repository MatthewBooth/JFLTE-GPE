.class public interface abstract Lcom/android/internal/util/FileRotator$Rewriter;
.super Ljava/lang/Object;
.source "FileRotator.java"

# interfaces
.implements Lcom/android/internal/util/FileRotator$Reader;
.implements Lcom/android/internal/util/FileRotator$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/FileRotator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Rewriter"
.end annotation


# virtual methods
.method public abstract reset()V
.end method

.method public abstract shouldWrite()Z
.end method
