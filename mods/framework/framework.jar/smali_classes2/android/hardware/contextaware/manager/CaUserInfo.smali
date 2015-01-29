.class public Landroid/hardware/contextaware/manager/CaUserInfo;
.super Ljava/lang/Object;
.source "CaUserInfo.java"


# static fields
.field public static final DEFAULT_GENDER:I = 0x1

.field public static final DEFAULT_HEIGHT:D = 170.0

.field public static final DEFAULT_WEIGHT:D = 60.0

.field private static volatile instance:Landroid/hardware/contextaware/manager/CaUserInfo;


# instance fields
.field private mUserGender:I

.field private mUserHeight:D

.field private mUserWeight:D


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x4065400000000000L

    iput-wide v0, p0, Landroid/hardware/contextaware/manager/CaUserInfo;->mUserHeight:D

    const-wide/high16 v0, 0x404e000000000000L

    iput-wide v0, p0, Landroid/hardware/contextaware/manager/CaUserInfo;->mUserWeight:D

    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/contextaware/manager/CaUserInfo;->mUserGender:I

    return-void
.end method

.method public static getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;
    .locals 2

    sget-object v0, Landroid/hardware/contextaware/manager/CaUserInfo;->instance:Landroid/hardware/contextaware/manager/CaUserInfo;

    if-nez v0, :cond_1

    const-class v1, Landroid/hardware/contextaware/manager/CaUserInfo;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/hardware/contextaware/manager/CaUserInfo;->instance:Landroid/hardware/contextaware/manager/CaUserInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroid/hardware/contextaware/manager/CaUserInfo;

    invoke-direct {v0}, Landroid/hardware/contextaware/manager/CaUserInfo;-><init>()V

    sput-object v0, Landroid/hardware/contextaware/manager/CaUserInfo;->instance:Landroid/hardware/contextaware/manager/CaUserInfo;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Landroid/hardware/contextaware/manager/CaUserInfo;->instance:Landroid/hardware/contextaware/manager/CaUserInfo;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final getUserGender()I
    .locals 1

    iget v0, p0, Landroid/hardware/contextaware/manager/CaUserInfo;->mUserGender:I

    return v0
.end method

.method public final getUserHeight()D
    .locals 2

    iget-wide v0, p0, Landroid/hardware/contextaware/manager/CaUserInfo;->mUserHeight:D

    return-wide v0
.end method

.method public final getUserWeight()D
    .locals 2

    iget-wide v0, p0, Landroid/hardware/contextaware/manager/CaUserInfo;->mUserWeight:D

    return-wide v0
.end method

.method public final setUserGender(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Landroid/hardware/contextaware/manager/CaUserInfo;->mUserGender:I

    return-void
.end method

.method public final setUserHeight(D)V
    .locals 1
    .param p1    # D

    iput-wide p1, p0, Landroid/hardware/contextaware/manager/CaUserInfo;->mUserHeight:D

    return-void
.end method

.method public final setUserWeight(D)V
    .locals 1
    .param p1    # D

    iput-wide p1, p0, Landroid/hardware/contextaware/manager/CaUserInfo;->mUserWeight:D

    return-void
.end method
