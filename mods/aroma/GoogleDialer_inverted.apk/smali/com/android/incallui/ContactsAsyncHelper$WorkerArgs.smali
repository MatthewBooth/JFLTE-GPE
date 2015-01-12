.class final Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;
.super Ljava/lang/Object;
.source "ContactsAsyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/ContactsAsyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WorkerArgs"
.end annotation


# instance fields
.field public context:Landroid/content/Context;

.field public cookie:Ljava/lang/Object;

.field public displayPhotoUri:Landroid/net/Uri;

.field public listener:Lcom/android/incallui/ContactsAsyncHelper$OnImageLoadCompleteListener;

.field public photo:Landroid/graphics/drawable/Drawable;

.field public photoIcon:Landroid/graphics/Bitmap;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/ContactsAsyncHelper$1;)V
    .locals 0
    .param p1    # Lcom/android/incallui/ContactsAsyncHelper$1;

    invoke-direct {p0}, Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;-><init>()V

    return-void
.end method
