.class public final Lcom/android/contacts/common/preference/ContactsPreferences;
.super Ljava/lang/Object;
.source "ContactsPreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDisplayOrder:I

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;

.field private final mPreferences:Landroid/content/SharedPreferences;

.field private mSortOrder:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mSortOrder:I

    iput v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDisplayOrder:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mListener:Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;

    iput-object p1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->maybeMigrateSystemSettings()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/contacts/common/preference/ContactsPreferences;I)I
    .locals 0
    .param p0    # Lcom/android/contacts/common/preference/ContactsPreferences;
    .param p1    # I

    iput p1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDisplayOrder:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/contacts/common/preference/ContactsPreferences;I)I
    .locals 0
    .param p0    # Lcom/android/contacts/common/preference/ContactsPreferences;
    .param p1    # I

    iput p1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mSortOrder:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/contacts/common/preference/ContactsPreferences;)Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;
    .locals 1
    .param p0    # Lcom/android/contacts/common/preference/ContactsPreferences;

    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mListener:Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;

    return-object v0
.end method

.method private maybeMigrateSystemSettings()V
    .locals 4

    iget-object v2, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "android.contacts.SORT_ORDER"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDefaultSortOrder()I

    move-result v1

    :try_start_0
    iget-object v2, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android.contacts.SORT_ORDER"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/contacts/common/preference/ContactsPreferences;->setSortOrder(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "android.contacts.DISPLAY_ORDER"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDefaultDisplayOrder()I

    move-result v0

    :try_start_1
    iget-object v2, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android.contacts.DISPLAY_ORDER"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->setDisplayOrder(I)V

    :cond_1
    return-void

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public getDefaultDisplayOrder()I
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getDefaultSortOrder()I
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getDisplayOrder()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->isDisplayOrderUserChangeable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDefaultDisplayOrder()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDisplayOrder:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "android.contacts.DISPLAY_ORDER"

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDefaultDisplayOrder()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDisplayOrder:I

    :cond_1
    iget v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDisplayOrder:I

    goto :goto_0
.end method

.method public getSortOrder()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->isSortOrderUserChangeable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDefaultSortOrder()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mSortOrder:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "android.contacts.SORT_ORDER"

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDefaultSortOrder()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mSortOrder:I

    :cond_1
    iget v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mSortOrder:I

    goto :goto_0
.end method

.method public isDisplayOrderUserChangeable()Z
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isSortOrderUserChangeable()Z
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/content/SharedPreferences;
    .param p2    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/contacts/common/preference/ContactsPreferences$1;

    invoke-direct {v1, p0, p2}, Lcom/android/contacts/common/preference/ContactsPreferences$1;-><init>(Lcom/android/contacts/common/preference/ContactsPreferences;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerChangeListener(Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;)V
    .locals 2
    .param p1    # Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mListener:Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->unregisterChangeListener()V

    :cond_0
    iput-object p1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mListener:Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;

    iput v1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDisplayOrder:I

    iput v1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mSortOrder:I

    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public setDisplayOrder(I)V
    .locals 2
    .param p1    # I

    iput p1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDisplayOrder:I

    iget-object v1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "android.contacts.DISPLAY_ORDER"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setSortOrder(I)V
    .locals 2
    .param p1    # I

    iput p1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mSortOrder:I

    iget-object v1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "android.contacts.SORT_ORDER"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public unregisterChangeListener()V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mListener:Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mListener:Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method
