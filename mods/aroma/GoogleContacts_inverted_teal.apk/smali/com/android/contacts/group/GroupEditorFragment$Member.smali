.class public Lcom/android/contacts/group/GroupEditorFragment$Member;
.super Ljava/lang/Object;
.source "GroupEditorFragment.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/group/GroupEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Member"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/contacts/group/GroupEditorFragment$Member;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContactId:J

.field private final mDisplayName:Ljava/lang/String;

.field private final mLookupKey:Ljava/lang/String;

.field private final mLookupUri:Landroid/net/Uri;

.field private final mPhotoUri:Landroid/net/Uri;

.field private final mRawContactId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/contacts/group/GroupEditorFragment$Member$1;

    invoke-direct {v0}, Lcom/android/contacts/group/GroupEditorFragment$Member$1;-><init>()V

    sput-object v0, Lcom/android/contacts/group/GroupEditorFragment$Member;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # J
    .param p3    # Ljava/lang/String;
    .param p4    # J
    .param p6    # Ljava/lang/String;
    .param p7    # Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mRawContactId:J

    iput-wide p4, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mContactId:J

    iput-object p3, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mLookupKey:Ljava/lang/String;

    invoke-static {p4, p5, p3}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mLookupUri:Landroid/net/Uri;

    iput-object p6, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mDisplayName:Ljava/lang/String;

    if-eqz p7, :cond_0

    invoke-static {p7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mPhotoUri:Landroid/net/Uri;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1    # Landroid/os/Parcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mRawContactId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mContactId:J

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mLookupKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mPhotoUri:Landroid/net/Uri;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/contacts/group/GroupEditorFragment$1;)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
    .param p2    # Lcom/android/contacts/group/GroupEditorFragment$1;

    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupEditorFragment$Member;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;

    instance-of v1, p1, Lcom/android/contacts/group/GroupEditorFragment$Member;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/contacts/group/GroupEditorFragment$Member;

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupEditorFragment$Member;->getLookupUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getContactId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mContactId:J

    return-wide v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getLookupKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mLookupKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLookupUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getPhotoUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mPhotoUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getRawContactId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mRawContactId:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mLookupUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    iget-wide v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mRawContactId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mContactId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mLookupKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mPhotoUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
