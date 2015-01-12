.class public final Lcom/android/contacts/common/database/EmptyCursor;
.super Landroid/database/AbstractCursor;
.source "EmptyCursor.java"


# instance fields
.field private mColumns:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 0
    .param p1    # [Ljava/lang/String;

    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    iput-object p1, p0, Lcom/android/contacts/common/database/EmptyCursor;->mColumns:[Ljava/lang/String;

    return-void
.end method

.method private cursorException()Landroid/database/CursorIndexOutOfBoundsException;
    .locals 2

    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v1, "Operation not permitted on an empty cursor."

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/database/EmptyCursor;->mColumns:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDouble(I)D
    .locals 1
    .param p1    # I

    invoke-direct {p0}, Lcom/android/contacts/common/database/EmptyCursor;->cursorException()Landroid/database/CursorIndexOutOfBoundsException;

    move-result-object v0

    throw v0
.end method

.method public getFloat(I)F
    .locals 1
    .param p1    # I

    invoke-direct {p0}, Lcom/android/contacts/common/database/EmptyCursor;->cursorException()Landroid/database/CursorIndexOutOfBoundsException;

    move-result-object v0

    throw v0
.end method

.method public getInt(I)I
    .locals 1
    .param p1    # I

    invoke-direct {p0}, Lcom/android/contacts/common/database/EmptyCursor;->cursorException()Landroid/database/CursorIndexOutOfBoundsException;

    move-result-object v0

    throw v0
.end method

.method public getLong(I)J
    .locals 1
    .param p1    # I

    invoke-direct {p0}, Lcom/android/contacts/common/database/EmptyCursor;->cursorException()Landroid/database/CursorIndexOutOfBoundsException;

    move-result-object v0

    throw v0
.end method

.method public getShort(I)S
    .locals 1
    .param p1    # I

    invoke-direct {p0}, Lcom/android/contacts/common/database/EmptyCursor;->cursorException()Landroid/database/CursorIndexOutOfBoundsException;

    move-result-object v0

    throw v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1    # I

    invoke-direct {p0}, Lcom/android/contacts/common/database/EmptyCursor;->cursorException()Landroid/database/CursorIndexOutOfBoundsException;

    move-result-object v0

    throw v0
.end method

.method public isNull(I)Z
    .locals 1
    .param p1    # I

    invoke-direct {p0}, Lcom/android/contacts/common/database/EmptyCursor;->cursorException()Landroid/database/CursorIndexOutOfBoundsException;

    move-result-object v0

    throw v0
.end method
