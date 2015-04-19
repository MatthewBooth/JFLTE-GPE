.class public final Lcom/android/contacts/GroupMemberLoader;
.super Landroid/content/CursorLoader;
.source "GroupMemberLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/GroupMemberLoader$GroupDetailQuery;,
        Lcom/android/contacts/GroupMemberLoader$GroupEditorQuery;
    }
.end annotation


# instance fields
.field private final mGroupId:J


# direct methods
.method private constructor <init>(Landroid/content/Context;J[Ljava/lang/String;)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # J
    .param p4    # [Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;)V

    iput-wide p2, p0, Lcom/android/contacts/GroupMemberLoader;->mGroupId:J

    invoke-direct {p0}, Lcom/android/contacts/GroupMemberLoader;->createUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/GroupMemberLoader;->setUri(Landroid/net/Uri;)V

    invoke-virtual {p0, p4}, Lcom/android/contacts/GroupMemberLoader;->setProjection([Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/contacts/GroupMemberLoader;->createSelection()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/GroupMemberLoader;->setSelection(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/contacts/GroupMemberLoader;->createSelectionArgs()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/GroupMemberLoader;->setSelectionArgs([Ljava/lang/String;)V

    new-instance v0, Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-direct {v0, p1}, Lcom/android/contacts/common/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getSortOrder()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "sort_key"

    invoke-virtual {p0, v1}, Lcom/android/contacts/GroupMemberLoader;->setSortOrder(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "sort_key_alt"

    invoke-virtual {p0, v1}, Lcom/android/contacts/GroupMemberLoader;->setSortOrder(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static constructLoaderForGroupDetailQuery(Landroid/content/Context;J)Lcom/android/contacts/GroupMemberLoader;
    .locals 3
    .param p0    # Landroid/content/Context;
    .param p1    # J

    new-instance v0, Lcom/android/contacts/GroupMemberLoader;

    # getter for: Lcom/android/contacts/GroupMemberLoader$GroupDetailQuery;->PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/GroupMemberLoader$GroupDetailQuery;->access$100()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/contacts/GroupMemberLoader;-><init>(Landroid/content/Context;J[Ljava/lang/String;)V

    return-object v0
.end method

.method public static constructLoaderForGroupEditorQuery(Landroid/content/Context;J)Lcom/android/contacts/GroupMemberLoader;
    .locals 3
    .param p0    # Landroid/content/Context;
    .param p1    # J

    new-instance v0, Lcom/android/contacts/GroupMemberLoader;

    # getter for: Lcom/android/contacts/GroupMemberLoader$GroupEditorQuery;->PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/GroupMemberLoader$GroupEditorQuery;->access$000()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/contacts/GroupMemberLoader;-><init>(Landroid/content/Context;J[Ljava/lang/String;)V

    return-object v0
.end method

.method private createSelection()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mimetype=? AND data1=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private createSelectionArgs()[Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "vnd.android.cursor.item/group_membership"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-wide v2, p0, Lcom/android/contacts/GroupMemberLoader;->mGroupId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method private createUri()Landroid/net/Uri;
    .locals 6

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "directory"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
