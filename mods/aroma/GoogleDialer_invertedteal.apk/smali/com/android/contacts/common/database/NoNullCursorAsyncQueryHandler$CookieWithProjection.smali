.class Lcom/android/contacts/common/database/NoNullCursorAsyncQueryHandler$CookieWithProjection;
.super Ljava/lang/Object;
.source "NoNullCursorAsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/database/NoNullCursorAsyncQueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CookieWithProjection"
.end annotation


# instance fields
.field public final originalCookie:Ljava/lang/Object;

.field public final projection:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
    .param p2    # [Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/contacts/common/database/NoNullCursorAsyncQueryHandler$CookieWithProjection;->originalCookie:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/contacts/common/database/NoNullCursorAsyncQueryHandler$CookieWithProjection;->projection:[Ljava/lang/String;

    return-void
.end method
