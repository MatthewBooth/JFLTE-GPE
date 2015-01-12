.class public final Lcom/android/contacts/common/GroupMetaData;
.super Ljava/lang/Object;
.source "GroupMetaData.java"


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mAccountType:Ljava/lang/String;

.field private mDataSet:Ljava/lang/String;

.field private mDefaultGroup:Z

.field private mFavorites:Z

.field private mGroupId:J

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZZ)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # J
    .param p6    # Ljava/lang/String;
    .param p7    # Z
    .param p8    # Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/contacts/common/GroupMetaData;->mAccountName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/contacts/common/GroupMetaData;->mAccountType:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/contacts/common/GroupMetaData;->mDataSet:Ljava/lang/String;

    iput-wide p4, p0, Lcom/android/contacts/common/GroupMetaData;->mGroupId:J

    iput-object p6, p0, Lcom/android/contacts/common/GroupMetaData;->mTitle:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/android/contacts/common/GroupMetaData;->mDefaultGroup:Z

    iput-boolean p8, p0, Lcom/android/contacts/common/GroupMetaData;->mFavorites:Z

    return-void
.end method
