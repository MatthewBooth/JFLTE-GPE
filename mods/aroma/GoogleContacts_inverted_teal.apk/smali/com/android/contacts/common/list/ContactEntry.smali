.class public Lcom/android/contacts/common/list/ContactEntry;
.super Ljava/lang/Object;
.source "ContactEntry.java"


# static fields
.field public static final BLANK_ENTRY:Lcom/android/contacts/common/list/ContactEntry;


# instance fields
.field public isDefaultNumber:Z

.field public isFavorite:Z

.field public lookupKey:Ljava/lang/String;

.field public lookupUri:Landroid/net/Uri;

.field public name:Ljava/lang/String;

.field public phoneLabel:Ljava/lang/String;

.field public phoneNumber:Ljava/lang/String;

.field public photoUri:Landroid/net/Uri;

.field public pinned:I

.field public presenceIcon:Landroid/graphics/drawable/Drawable;

.field public status:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/contacts/common/list/ContactEntry;

    invoke-direct {v0}, Lcom/android/contacts/common/list/ContactEntry;-><init>()V

    sput-object v0, Lcom/android/contacts/common/list/ContactEntry;->BLANK_ENTRY:Lcom/android/contacts/common/list/ContactEntry;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/contacts/common/list/ContactEntry;->pinned:I

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntry;->isFavorite:Z

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntry;->isDefaultNumber:Z

    return-void
.end method
