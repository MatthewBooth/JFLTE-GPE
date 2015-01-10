.class Lcom/android/keyguard/KeyguardMultiUserAvatar;
.super Landroid/widget/FrameLayout;
.source "KeyguardMultiUserAvatar.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActive:Z

.field private final mActiveAlpha:F

.field private final mActiveScale:F

.field private final mActiveTextAlpha:F

.field private final mFrameColor:I

.field private final mFrameShadowColor:I

.field private mFramed:Lcom/android/keyguard/KeyguardCircleFramedDrawable;

.field private final mHighlightColor:I

.field private final mIconSize:F

.field private final mInactiveAlpha:F

.field private final mInactiveTextAlpha:F

.field private mInit:Z

.field private mPressLock:Z

.field private final mShadowRadius:F

.field private final mStroke:F

.field private final mTextColor:I

.field private mTouched:Z

.field private mUserImage:Landroid/widget/ImageView;

.field private mUserInfo:Landroid/content/pm/UserInfo;

.field private mUserManager:Landroid/os/UserManager;

.field private mUserName:Landroid/widget/TextView;

.field private mUserSelector:Lcom/android/keyguard/KeyguardMultiUserSelectorView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/keyguard/KeyguardMultiUserAvatar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardMultiUserAvatar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardMultiUserAvatar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    const/4 v3, 0x1

    const/high16 v2, 0x3f800000

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mInit:Z

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$color;->keyguard_avatar_nick_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mTextColor:I

    sget v1, Lcom/android/keyguard/R$dimen;->keyguard_avatar_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mIconSize:F

    sget v1, Lcom/android/keyguard/R$dimen;->keyguard_avatar_frame_stroke_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mStroke:F

    sget v1, Lcom/android/keyguard/R$dimen;->keyguard_avatar_frame_shadow_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mShadowRadius:F

    sget v1, Lcom/android/keyguard/R$color;->keyguard_avatar_frame_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFrameColor:I

    sget v1, Lcom/android/keyguard/R$color;->keyguard_avatar_frame_shadow_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFrameShadowColor:I

    sget v1, Lcom/android/keyguard/R$color;->keyguard_avatar_frame_pressed_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mHighlightColor:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mActiveTextAlpha:F

    const/high16 v1, 0x3f000000

    iput v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mInactiveTextAlpha:F

    const/high16 v1, 0x3fc00000

    iput v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mActiveScale:F

    iput v2, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mActiveAlpha:F

    iput v2, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mInactiveAlpha:F

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mContext:Landroid/content/Context;

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserManager:Landroid/os/UserManager;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mTouched:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v3, v1}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardMultiUserAvatar;)Lcom/android/keyguard/KeyguardCircleFramedDrawable;
    .locals 1
    .param p0    # Lcom/android/keyguard/KeyguardMultiUserAvatar;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/keyguard/KeyguardCircleFramedDrawable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardMultiUserAvatar;)Landroid/widget/ImageView;
    .locals 1
    .param p0    # Lcom/android/keyguard/KeyguardMultiUserAvatar;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardMultiUserAvatar;)Landroid/widget/TextView;
    .locals 1
    .param p0    # Lcom/android/keyguard/KeyguardMultiUserAvatar;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserName:Landroid/widget/TextView;

    return-object v0
.end method

.method public static fromXml(ILandroid/content/Context;Lcom/android/keyguard/KeyguardMultiUserSelectorView;Landroid/content/pm/UserInfo;)Lcom/android/keyguard/KeyguardMultiUserAvatar;
    .locals 3
    .param p0    # I
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/keyguard/KeyguardMultiUserSelectorView;
    .param p3    # Landroid/content/pm/UserInfo;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardMultiUserAvatar;

    invoke-virtual {v0, p3, p2}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->init(Landroid/content/pm/UserInfo;Lcom/android/keyguard/KeyguardMultiUserSelectorView;)V

    return-object v0
.end method


# virtual methods
.method public getUserInfo()Landroid/content/pm/UserInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserInfo:Landroid/content/pm/UserInfo;

    return-object v0
.end method

.method public init(Landroid/content/pm/UserInfo;Lcom/android/keyguard/KeyguardMultiUserSelectorView;)V
    .locals 8
    .param p1    # Landroid/content/pm/UserInfo;
    .param p2    # Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserInfo:Landroid/content/pm/UserInfo;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserSelector:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    sget v0, Lcom/android/keyguard/R$id;->keyguard_user_avatar:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserImage:Landroid/widget/ImageView;

    sget v0, Lcom/android/keyguard/R$id;->keyguard_user_name:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserName:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/keyguard/MultiUserAvatarCache;->getInstance()Lcom/android/keyguard/MultiUserAvatarCache;

    move-result-object v0

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v2}, Lcom/android/keyguard/MultiUserAvatarCache;->get(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/keyguard/KeyguardCircleFramedDrawable;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/keyguard/KeyguardCircleFramedDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/keyguard/KeyguardCircleFramedDrawable;

    iget v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mIconSize:F

    iget v2, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFrameColor:I

    iget v3, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mStroke:F

    iget v4, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFrameShadowColor:I

    iget v5, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mShadowRadius:F

    iget v6, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mHighlightColor:I

    invoke-virtual/range {v0 .. v6}, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->verifyParams(FIFIFI)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserManager:Landroid/os/UserManager;

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1080351

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_1
    new-instance v0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;

    iget v2, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mIconSize:F

    float-to-int v2, v2

    iget v3, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFrameColor:I

    iget v4, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mStroke:F

    iget v5, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFrameShadowColor:I

    iget v6, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mShadowRadius:F

    iget v7, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mHighlightColor:I

    invoke-direct/range {v0 .. v7}, Lcom/android/keyguard/KeyguardCircleFramedDrawable;-><init>(Landroid/graphics/Bitmap;IIFIFI)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/keyguard/KeyguardCircleFramedDrawable;

    invoke-static {}, Lcom/android/keyguard/MultiUserAvatarCache;->getInstance()Lcom/android/keyguard/MultiUserAvatarCache;

    move-result-object v0

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    iget-object v3, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/keyguard/KeyguardCircleFramedDrawable;

    invoke-virtual {v0, v2, v3}, Lcom/android/keyguard/MultiUserAvatarCache;->put(ILandroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/keyguard/KeyguardCircleFramedDrawable;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->reset()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/keyguard/KeyguardCircleFramedDrawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserInfo:Landroid/content/pm/UserInfo;

    iget-object v2, v2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserSelector:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mInit:Z

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public lockPressed(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mPressLock:Z

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->setPressed(Z)V

    return-void
.end method

.method public setActive(ZZLjava/lang/Runnable;)V
    .locals 7
    .param p1    # Z
    .param p2    # Z
    .param p3    # Ljava/lang/Runnable;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mActive:Z

    if-ne v1, p1, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mInit:Z

    if-eqz v1, :cond_1

    :cond_0
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mActive:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardLinearLayout;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardLinearLayout;->setTopChild(Landroid/view/View;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/keyguard/R$string;->user_switched:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, ""

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mActive:Z

    const/16 v2, 0x96

    invoke-virtual {p0, v1, p2, v2, p3}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->updateVisualsForActive(ZZILjava/lang/Runnable;)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setPressed(Z)V
    .locals 1
    .param p1    # Z

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mPressLock:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mPressLock:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setPressed(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/keyguard/KeyguardCircleFramedDrawable;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->setPressed(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_0
.end method

.method updateVisualsForActive(ZZILjava/lang/Runnable;)V
    .locals 11
    .param p1    # Z
    .param p2    # Z
    .param p3    # I
    .param p4    # Ljava/lang/Runnable;

    const/high16 v3, 0x3f800000

    const/16 v10, 0xff

    const/high16 v1, 0x437f0000

    if-eqz p1, :cond_1

    iget v5, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mActiveAlpha:F

    :goto_0
    if-eqz p1, :cond_2

    iget v4, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mInactiveAlpha:F

    :goto_1
    if-eqz p1, :cond_3

    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/keyguard/KeyguardCircleFramedDrawable;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->getScale()F

    move-result v2

    if-eqz p1, :cond_4

    iget v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mActiveTextAlpha:F

    mul-float/2addr v0, v1

    float-to-int v7, v0

    :goto_3
    if-eqz p1, :cond_5

    iget v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mInactiveTextAlpha:F

    mul-float/2addr v0, v1

    float-to-int v6, v0

    :goto_4
    iget v8, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mTextColor:I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserName:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p2, :cond_6

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mTouched:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v9

    new-instance v0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;-><init>(Lcom/android/keyguard/KeyguardMultiUserAvatar;FFFFII)V

    invoke-virtual {v9, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/android/keyguard/KeyguardMultiUserAvatar$2;

    invoke-direct {v0, p0, p4}, Lcom/android/keyguard/KeyguardMultiUserAvatar$2;-><init>(Lcom/android/keyguard/KeyguardMultiUserAvatar;Ljava/lang/Runnable;)V

    invoke-virtual {v9, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    int-to-long v0, p3

    invoke-virtual {v9, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    :goto_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mTouched:Z

    return-void

    :cond_1
    iget v5, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mInactiveAlpha:F

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mActiveAlpha:F

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mActiveScale:F

    div-float/2addr v3, v0

    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mInactiveTextAlpha:F

    mul-float/2addr v0, v1

    float-to-int v7, v0

    goto :goto_3

    :cond_5
    iget v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mActiveTextAlpha:F

    mul-float/2addr v0, v1

    float-to-int v6, v0

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/keyguard/KeyguardCircleFramedDrawable;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->setScale(F)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserName:Landroid/widget/TextView;

    invoke-static {v7, v10, v10, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p4, :cond_0

    invoke-virtual {p0, p4}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    :array_0
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method
