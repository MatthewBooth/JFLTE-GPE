.class public abstract Lcom/android/systemui/qs/SecureSetting;
.super Landroid/database/ContentObserver;
.source "SecureSetting.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/Listenable;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mListening:Z

.field private final mSettingName:Ljava/lang/String;

.field private mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/os/Handler;
    .param p3    # Ljava/lang/String;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/qs/SecureSetting;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/qs/SecureSetting;->mSettingName:Ljava/lang/String;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/SecureSetting;->mUserId:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    return-void
.end method


# virtual methods
.method public getValue()I
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/SecureSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/SecureSetting;->mSettingName:Ljava/lang/String;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/systemui/qs/SecureSetting;->mUserId:I

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method protected abstract handleValueChanged(I)V
.end method

.method public onChange(Z)V
    .locals 1
    .param p1    # Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecureSetting;->getValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SecureSetting;->handleValueChanged(I)V

    return-void
.end method

.method public setListening(Z)V
    .locals 4
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/systemui/qs/SecureSetting;->mListening:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/SecureSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/SecureSetting;->mSettingName:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/systemui/qs/SecureSetting;->mUserId:I

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/SecureSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public setUserId(I)V
    .locals 1
    .param p1    # I

    iput p1, p0, Lcom/android/systemui/qs/SecureSetting;->mUserId:I

    iget-boolean v0, p0, Lcom/android/systemui/qs/SecureSetting;->mListening:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    :cond_0
    return-void
.end method

.method public setValue(I)V
    .locals 3
    .param p1    # I

    iget-object v0, p0, Lcom/android/systemui/qs/SecureSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/SecureSetting;->mSettingName:Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/qs/SecureSetting;->mUserId:I

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method
