.class public Lcom/android/contacts/list/ProviderStatusWatcher$Status;
.super Ljava/lang/Object;
.source "ProviderStatusWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/ProviderStatusWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Status"
.end annotation


# instance fields
.field public final data:Ljava/lang/String;

.field public final status:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1    # I
    .param p2    # Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    iput-object p2, p0, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->data:Ljava/lang/String;

    return-void
.end method
