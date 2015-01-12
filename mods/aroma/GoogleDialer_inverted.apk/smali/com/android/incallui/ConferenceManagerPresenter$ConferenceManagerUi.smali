.class public interface abstract Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;
.super Ljava/lang/Object;
.source "ConferenceManagerPresenter.java"

# interfaces
.implements Lcom/android/incallui/Ui;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/ConferenceManagerPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConferenceManagerUi"
.end annotation


# virtual methods
.method public abstract displayCallerInfoForConferenceRow(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
.end method

.method public abstract isFragmentVisible()Z
.end method

.method public abstract setRowVisible(IZ)V
.end method

.method public abstract setVisible(Z)V
.end method

.method public abstract setupEndButtonForRow(IZ)V
.end method

.method public abstract setupSeparateButtonForRow(IZ)V
.end method
