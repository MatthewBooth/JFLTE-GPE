.class public Lcom/android/contacts/common/preference/DisplayOptionsPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "DisplayOptionsPreferenceFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f060001

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/preference/DisplayOptionsPreferenceFragment;->addPreferencesFromResource(I)V

    return-void
.end method
