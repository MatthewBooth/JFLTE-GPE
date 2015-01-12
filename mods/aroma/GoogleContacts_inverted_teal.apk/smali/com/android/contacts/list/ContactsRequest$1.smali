.class final Lcom/android/contacts/list/ContactsRequest$1;
.super Ljava/lang/Object;
.source "ContactsRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/ContactsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/contacts/list/ContactsRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/contacts/list/ContactsRequest;
    .locals 5
    .param p1    # Landroid/os/Parcel;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/list/ContactsRequest;

    invoke-direct {v1}, Lcom/android/contacts/list/ContactsRequest;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    # setter for: Lcom/android/contacts/list/ContactsRequest;->mValid:Z
    invoke-static {v1, v2}, Lcom/android/contacts/list/ContactsRequest;->access$002(Lcom/android/contacts/list/ContactsRequest;Z)Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    # setter for: Lcom/android/contacts/list/ContactsRequest;->mActionCode:I
    invoke-static {v1, v2}, Lcom/android/contacts/list/ContactsRequest;->access$102(Lcom/android/contacts/list/ContactsRequest;I)I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    # setter for: Lcom/android/contacts/list/ContactsRequest;->mRedirectIntent:Landroid/content/Intent;
    invoke-static {v1, v2}, Lcom/android/contacts/list/ContactsRequest;->access$202(Lcom/android/contacts/list/ContactsRequest;Landroid/content/Intent;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v2

    # setter for: Lcom/android/contacts/list/ContactsRequest;->mTitle:Ljava/lang/CharSequence;
    invoke-static {v1, v2}, Lcom/android/contacts/list/ContactsRequest;->access$302(Lcom/android/contacts/list/ContactsRequest;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    # setter for: Lcom/android/contacts/list/ContactsRequest;->mSearchMode:Z
    invoke-static {v1, v2}, Lcom/android/contacts/list/ContactsRequest;->access$402(Lcom/android/contacts/list/ContactsRequest;Z)Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/android/contacts/list/ContactsRequest;->mQueryString:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/contacts/list/ContactsRequest;->access$502(Lcom/android/contacts/list/ContactsRequest;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_2
    # setter for: Lcom/android/contacts/list/ContactsRequest;->mIncludeProfile:Z
    invoke-static {v1, v2}, Lcom/android/contacts/list/ContactsRequest;->access$602(Lcom/android/contacts/list/ContactsRequest;Z)Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_3
    # setter for: Lcom/android/contacts/list/ContactsRequest;->mLegacyCompatibilityMode:Z
    invoke-static {v1, v2}, Lcom/android/contacts/list/ContactsRequest;->access$702(Lcom/android/contacts/list/ContactsRequest;Z)Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    :goto_4
    # setter for: Lcom/android/contacts/list/ContactsRequest;->mDirectorySearchEnabled:Z
    invoke-static {v1, v3}, Lcom/android/contacts/list/ContactsRequest;->access$802(Lcom/android/contacts/list/ContactsRequest;Z)Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    # setter for: Lcom/android/contacts/list/ContactsRequest;->mContactUri:Landroid/net/Uri;
    invoke-static {v1, v2}, Lcom/android/contacts/list/ContactsRequest;->access$902(Lcom/android/contacts/list/ContactsRequest;Landroid/net/Uri;)Landroid/net/Uri;

    return-object v1

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    move v2, v4

    goto :goto_2

    :cond_3
    move v2, v4

    goto :goto_3

    :cond_4
    move v3, v4

    goto :goto_4
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1    # Landroid/os/Parcel;

    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactsRequest$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/contacts/list/ContactsRequest;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/contacts/list/ContactsRequest;
    .locals 1
    .param p1    # I

    new-array v0, p1, [Lcom/android/contacts/list/ContactsRequest;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactsRequest$1;->newArray(I)[Lcom/android/contacts/list/ContactsRequest;

    move-result-object v0

    return-object v0
.end method
