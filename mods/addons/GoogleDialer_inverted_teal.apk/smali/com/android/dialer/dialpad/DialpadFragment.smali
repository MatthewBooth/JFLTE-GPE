.class public Lcom/android/dialer/dialpad/DialpadFragment;
.super Lcom/android/dialerbind/analytics/AnalyticsFragment;
.source "DialpadFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Lcom/android/phone/common/dialpad/DialpadKeyButton$OnPressedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter;,
        Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;,
        Lcom/android/dialer/dialpad/DialpadFragment$OnDialpadQueryChangedListener;,
        Lcom/android/dialer/dialpad/DialpadFragment$DialpadSlidingRelativeLayout;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnimate:Z

.field private final mCallLog:Lcom/android/phone/common/CallLogAsync;

.field private mClearDigitsOnStop:Z

.field private mCurrentCountryIso:Ljava/lang/String;

.field private mDTMFToneEnabled:Z

.field private mDelete:Landroid/view/View;

.field private mDialpadChooser:Landroid/widget/ListView;

.field private mDialpadChooserAdapter:Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter;

.field private mDialpadQueryListener:Lcom/android/dialer/dialpad/DialpadFragment$OnDialpadQueryChangedListener;

.field private mDialpadSlideInDuration:I

.field private mDialpadView:Lcom/android/phone/common/dialpad/DialpadView;

.field private mDigits:Landroid/widget/EditText;

.field private mDigitsFilledByIntent:Z

.field private mFirstLaunch:Z

.field private mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

.field private final mHaptic:Lcom/android/phone/common/HapticFeedback;

.field private mLastNumberDialed:Ljava/lang/String;

.field private mOverflowMenuButton:Landroid/view/View;

.field private mOverflowPopupMenu:Landroid/widget/PopupMenu;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mPressedDialpadKeys:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mProhibitedPhoneNumberRegexp:Ljava/lang/String;

.field private mSmsPackageComponentName:Landroid/content/ComponentName;

.field private mSpacer:Landroid/view/View;

.field private mStartedFromNewIntent:Z

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private final mToneGeneratorLock:Ljava/lang/Object;

.field private mWasEmptyBeforeTextChange:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/android/dialer/DialtactsActivity;->DEBUG:Z

    sput-boolean v0, Lcom/android/dialer/dialpad/DialpadFragment;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/dialerbind/analytics/AnalyticsFragment;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mPressedDialpadKeys:Ljava/util/HashSet;

    new-instance v0, Lcom/android/phone/common/CallLogAsync;

    invoke-direct {v0}, Lcom/android/phone/common/CallLogAsync;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mCallLog:Lcom/android/phone/common/CallLogAsync;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    new-instance v0, Lcom/android/phone/common/HapticFeedback;

    invoke-direct {v0}, Lcom/android/phone/common/HapticFeedback;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mHaptic:Lcom/android/phone/common/HapticFeedback;

    new-instance v0, Lcom/android/dialer/dialpad/DialpadFragment$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/dialpad/DialpadFragment$1;-><init>(Lcom/android/dialer/dialpad/DialpadFragment;)V

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    iput-boolean v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mStartedFromNewIntent:Z

    iput-boolean v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mFirstLaunch:Z

    iput-boolean v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mAnimate:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/dialpad/DialpadFragment;)Z
    .locals 1
    .param p0    # Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isDialpadChooserVisible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/dialer/dialpad/DialpadFragment;Z)V
    .locals 0
    .param p0    # Lcom/android/dialer/dialpad/DialpadFragment;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/dialer/dialpad/DialpadFragment;->showDialpadChooser(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/dialer/dialpad/DialpadFragment;)Z
    .locals 1
    .param p0    # Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/dialer/dialpad/DialpadFragment;Z)V
    .locals 0
    .param p0    # Lcom/android/dialer/dialpad/DialpadFragment;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/dialer/dialpad/DialpadFragment;->hideAndClearDialpad(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/dialer/dialpad/DialpadFragment;)Landroid/content/ComponentName;
    .locals 1
    .param p0    # Lcom/android/dialer/dialpad/DialpadFragment;

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSmsPackageComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/dialer/dialpad/DialpadFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/android/dialer/dialpad/DialpadFragment;
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/dialer/dialpad/DialpadFragment;)V
    .locals 0
    .param p0    # Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->updateDeleteButtonEnabledState()V

    return-void
.end method

.method private buildOptionsMenu(Landroid/view/View;)Landroid/widget/PopupMenu;
    .locals 2
    .param p1    # Landroid/view/View;

    new-instance v0, Lcom/android/dialer/dialpad/DialpadFragment$3;

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/dialer/dialpad/DialpadFragment$3;-><init>(Lcom/android/dialer/dialpad/DialpadFragment;Landroid/content/Context;Landroid/view/View;)V

    const v1, 0x7f100003

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->inflate(I)V

    invoke-virtual {v0, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    return-object v0
.end method

.method static canAddDigit(Ljava/lang/CharSequence;IIC)Z
    .locals 3
    .param p0    # Ljava/lang/CharSequence;
    .param p1    # I
    .param p2    # I
    .param p3    # C

    const/16 v2, 0x3b

    const/4 v0, 0x0

    if-eq p3, v2, :cond_0

    const/16 v1, 0x2c

    if-eq p3, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Should not be called for anything other than PAUSE & WAIT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    if-ge p2, p1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt p1, v1, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt p2, v1, :cond_1

    if-eqz p1, :cond_1

    if-ne p3, v2, :cond_3

    add-int/lit8 v1, p1, -0x1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v1, p2, :cond_3

    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private configureKeypadListeners(Landroid/view/View;)V
    .locals 6
    .param p1    # Landroid/view/View;

    const/16 v5, 0xc

    new-array v0, v5, [I

    fill-array-data v0, :array_0

    const/4 v2, 0x0

    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_0

    aget v5, v0, v2

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/phone/common/dialpad/DialpadKeyButton;

    invoke-virtual {v1, p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setOnPressedListener(Lcom/android/phone/common/dialpad/DialpadKeyButton$OnPressedListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const v5, 0x7f0e00c3

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/phone/common/dialpad/DialpadKeyButton;

    invoke-virtual {v3, p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v5, 0x7f0e00c7

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/phone/common/dialpad/DialpadKeyButton;

    invoke-virtual {v4, p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void

    :array_0
    .array-data 4
        0x7f0e00c3
        0x7f0e00b3
        0x7f0e00b4
        0x7f0e00b5
        0x7f0e00b6
        0x7f0e00b7
        0x7f0e00b8
        0x7f0e00b9
        0x7f0e00ba
        0x7f0e00c6
        0x7f0e00c7
        0x7f0e00c5
    .end array-data
.end method

.method private configureScreenFromIntent(Landroid/app/Activity;)V
    .locals 7
    .param p1    # Landroid/app/Activity;

    const/4 v6, 0x0

    instance-of v5, p1, Lcom/android/dialer/DialtactsActivity;

    if-nez v5, :cond_0

    invoke-virtual {p0, v6}, Lcom/android/dialer/dialpad/DialpadFragment;->setStartedFromNewIntent(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isLayoutReady()Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v6, "Screen configuration is requested before onCreateView() is called. Ignored"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    invoke-static {v2}, Lcom/android/dialer/dialpad/DialpadFragment;->isAddCallMode(Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-direct {p0, v2}, Lcom/android/dialer/dialpad/DialpadFragment;->fillDigitsIfNecessary(Landroid/content/Intent;)Z

    move-result v1

    iget-boolean v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mStartedFromNewIntent:Z

    if-eqz v5, :cond_2

    if-nez v1, :cond_4

    :cond_2
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v5, "android.intent.action.DIAL"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isPhoneInUse()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v4, 0x1

    :cond_4
    invoke-direct {p0, v4}, Lcom/android/dialer/dialpad/DialpadFragment;->showDialpadChooser(Z)V

    invoke-virtual {p0, v6}, Lcom/android/dialer/dialpad/DialpadFragment;->setStartedFromNewIntent(Z)V

    goto :goto_0
.end method

.method private fillDigitsIfNecessary(Landroid/content/Intent;)Z
    .locals 14
    .param p1    # Landroid/content/Intent;

    const/4 v3, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    iget-boolean v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mFirstLaunch:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mStartedFromNewIntent:Z

    if-nez v0, :cond_0

    move v0, v12

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v0, "android.intent.action.DIAL"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    if-eqz v11, :cond_5

    const-string v0, "tel"

    invoke-virtual {v11}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v11}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v9

    iput-boolean v13, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigitsFilledByIntent:Z

    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->replaceUnicodeDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v3}, Lcom/android/dialer/dialpad/DialpadFragment;->setFormattedDigits(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v13

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v10

    const-string v0, "vnd.android.cursor.item/person"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "vnd.android.cursor.item/phone"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "number"

    aput-object v4, v2, v12

    const-string v4, "number_key"

    aput-object v4, v2, v13

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_5

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigitsFilledByIntent:Z

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->setFormattedDigits(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v13

    goto/16 :goto_0

    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    move v0, v12

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getTelecomManager()Landroid/telecom/TelecomManager;
    .locals 2

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private static getVoicemailIntent()Landroid/content/Intent;
    .locals 3

    const-string v0, "voicemail"

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/CallUtil;->getCallIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private handleDialButtonClickWithEmptyDigits()V
    .locals 2

    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->phoneIsCdma()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isPhoneInUse()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->newFlashIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(I)V

    goto :goto_0
.end method

.method private handleDialButtonPressed()V
    .locals 5

    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->handleDialButtonClickWithEmptyDigits()V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mProhibitedPhoneNumberRegexp:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mProhibitedPhoneNumberRegexp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v4, "The phone number is prohibited explicitly by a rule."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_1

    const v3, 0x7f080244

    invoke-static {v3}, Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;->newInstance(I)Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "phone_prohibited_dialog"

    invoke-virtual {v0, v3, v4}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->clearDialpad()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lcom/android/dialer/DialtactsActivity;

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/dialer/DialtactsActivity;

    invoke-virtual {v3}, Lcom/android/dialer/DialtactsActivity;->getCallOrigin()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-static {v2, v3}, Lcom/android/contacts/common/CallUtil;->getCallIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/dialer/dialpad/DialpadFragment;->hideAndClearDialpad(Z)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private hideAndClearDialpad(Z)V
    .locals 2
    .param p1    # Z

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/DialtactsActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/dialer/DialtactsActivity;->hideDialpadFragment(ZZ)V

    return-void
.end method

.method private static isAddCallMode(Landroid/content/Intent;)Z
    .locals 3
    .param p0    # Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.DIAL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "add_call_mode"

    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    :cond_1
    return v1
.end method

.method private isDialpadChooserVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDigitsEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLayoutReady()Z
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVoicemailAvailable()Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v3, "SecurityException is thrown. Maybe privilege isn\'t sufficient."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private keyPressed(I)V
    .locals 6
    .param p1    # I

    const/4 v5, 0x0

    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    :goto_1
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mHaptic:Lcom/android/phone/common/HapticFeedback;

    invoke-virtual {v2}, Lcom/android/phone/common/HapticFeedback;->vibrate()V

    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v5, p1}, Landroid/view/KeyEvent;-><init>(II)V

    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2, p1, v0}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v1

    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setCursorVisible(Z)V

    goto :goto_0

    :pswitch_0
    const/4 v2, 0x1

    invoke-direct {p0, v2, v4}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_1

    :pswitch_1
    const/4 v2, 0x2

    invoke-direct {p0, v2, v4}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_1

    :pswitch_2
    const/4 v2, 0x3

    invoke-direct {p0, v2, v4}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_1

    :pswitch_3
    const/4 v2, 0x4

    invoke-direct {p0, v2, v4}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_1

    :pswitch_4
    const/4 v2, 0x5

    invoke-direct {p0, v2, v4}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_1

    :pswitch_5
    const/4 v2, 0x6

    invoke-direct {p0, v2, v4}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_1

    :pswitch_6
    const/4 v2, 0x7

    invoke-direct {p0, v2, v4}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_1

    :pswitch_7
    const/16 v2, 0x8

    invoke-direct {p0, v2, v4}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_1

    :pswitch_8
    const/16 v2, 0x9

    invoke-direct {p0, v2, v4}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_1

    :pswitch_9
    invoke-direct {p0, v5, v4}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_1

    :pswitch_a
    const/16 v2, 0xb

    invoke-direct {p0, v2, v4}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_1

    :pswitch_b
    const/16 v2, 0xa

    invoke-direct {p0, v2, v4}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method private newFlashIntent()Landroid/content/Intent;
    .locals 3

    const-string v1, ""

    invoke-static {v1}, Lcom/android/contacts/common/CallUtil;->getCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.phone.extra.SEND_EMPTY_FLASH"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method private phoneIsCdma()Z
    .locals 2

    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private playTone(I)V
    .locals 1
    .param p1    # I

    const/16 v0, 0x96

    invoke-direct {p0, p1, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(II)V

    return-void
.end method

.method private playTone(II)V
    .locals 6
    .param p1    # I
    .param p2    # I

    iget-boolean v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDTMFToneEnabled:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-object v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v2, :cond_2

    sget-object v2, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playTone: mToneGenerator == null, tone: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v2, p1, p2}, Landroid/media/ToneGenerator;->startTone(II)Z

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private queryLastOutgoingCall()V
    .locals 3

    const-string v1, ""

    iput-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    new-instance v0, Lcom/android/phone/common/CallLogAsync$GetLastOutgoingCallArgs;

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/android/dialer/dialpad/DialpadFragment$4;

    invoke-direct {v2, p0}, Lcom/android/dialer/dialpad/DialpadFragment$4;-><init>(Lcom/android/dialer/dialpad/DialpadFragment;)V

    invoke-direct {v0, v1, v2}, Lcom/android/phone/common/CallLogAsync$GetLastOutgoingCallArgs;-><init>(Landroid/content/Context;Lcom/android/phone/common/CallLogAsync$OnLastOutgoingCallComplete;)V

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mCallLog:Lcom/android/phone/common/CallLogAsync;

    invoke-virtual {v1, v0}, Lcom/android/phone/common/CallLogAsync;->getLastOutgoingCall(Lcom/android/phone/common/CallLogAsync$GetLastOutgoingCallArgs;)Landroid/os/AsyncTask;

    return-void
.end method

.method private removePreviousDigitIfPossible()V
    .locals 3

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    :cond_0
    return-void
.end method

.method private returnToInCallScreen(Z)V
    .locals 1
    .param p1    # Z

    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private setFormattedDigits(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mCurrentCountryIso:Ljava/lang/String;

    invoke-static {v0, p2, v2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-interface {v1, v2, v3, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    invoke-virtual {p0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->afterTextChanged(Landroid/text/Editable;)V

    :cond_0
    return-void
.end method

.method private showDialpadChooser(Z)V
    .locals 4
    .param p1    # Z

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isLayoutReady()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_4

    sget-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v1, "Showing dialpad chooser!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadView:Lcom/android/phone/common/dialpad/DialpadView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadView:Lcom/android/phone/common/dialpad/DialpadView;

    invoke-virtual {v0, v3}, Lcom/android/phone/common/dialpad/DialpadView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadChooserAdapter:Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter;

    if-nez v0, :cond_3

    new-instance v0, Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter;

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadChooserAdapter:Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter;

    :cond_3
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadChooserAdapter:Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v1, "Displaying normal Dialer UI."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadView:Lcom/android/phone/common/dialpad/DialpadView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadView:Lcom/android/phone/common/dialpad/DialpadView;

    invoke-virtual {v0, v2}, Lcom/android/phone/common/dialpad/DialpadView;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_1
.end method

.method private stopTone()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDTMFToneEnabled:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v2, "stopTone: mToneGenerator == null"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private updateDeleteButtonEnabledState()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateDialString(C)V
    .locals 7
    .param p1    # C

    const/16 v5, 0x3b

    if-eq p1, v5, :cond_0

    const/16 v5, 0x2c

    if-eq p1, v5, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Not expected for anything other than PAUSE & WAIT"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    iget-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    iget-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    iget-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->length()I

    move-result v3

    move v4, v3

    :cond_1
    iget-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1, v4, v3, p1}, Lcom/android/dialer/dialpad/DialpadFragment;->canAddDigit(Ljava/lang/CharSequence;IIC)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v3, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    if-eq v4, v3, :cond_2

    iget-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setSelection(I)V

    :cond_2
    return-void
.end method

.method private updateMenuOverflowButton(Z)V
    .locals 2
    .param p1    # Z

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadView:Lcom/android/phone/common/dialpad/DialpadView;

    invoke-virtual {v0}, Lcom/android/phone/common/dialpad/DialpadView;->getOverflowMenuButton()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mOverflowMenuButton:Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mOverflowMenuButton:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/phone/common/animation/AnimUtils;->fadeIn(Landroid/view/View;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mOverflowMenuButton:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/phone/common/animation/AnimUtils;->fadeOut(Landroid/view/View;I)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1    # Landroid/text/Editable;

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigitsFilledByIntent:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-static {v0, v1, v2}, Lcom/android/dialer/SpecialCharSequenceMgr;->handleChars(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    :cond_0
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigitsFilledByIntent:Z

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setCursorVisible(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadQueryListener:Lcom/android/dialer/dialpad/DialpadFragment$OnDialpadQueryChangedListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadQueryListener:Lcom/android/dialer/dialpad/DialpadFragment$OnDialpadQueryChangedListener;

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/dialer/dialpad/DialpadFragment$OnDialpadQueryChangedListener;->onDialpadQueryChanged(Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->updateDeleteButtonEnabledState()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mWasEmptyBeforeTextChange:Z

    return-void
.end method

.method public callVoicemail()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lcom/android/dialer/dialpad/DialpadFragment;->getVoicemailIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->hideAndClearDialpad(Z)V

    return-void
.end method

.method public clearDialpad()V
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    return-void
.end method

.method public getAnimate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mAnimate:Z

    return v0
.end method

.method public isPhoneInUse()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    sget-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected onClick() event from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mHaptic:Lcom/android/phone/common/HapticFeedback;

    invoke-virtual {v0}, Lcom/android/phone/common/HapticFeedback;->vibrate()V

    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->handleDialButtonPressed()V

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x43

    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mOverflowPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0e00c0 -> :sswitch_0
        0x7f0e00ca -> :sswitch_3
        0x7f0e00cb -> :sswitch_2
        0x7f0e00cc -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/dialerbind/analytics/AnalyticsFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mFirstLaunch:Z

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/common/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mCurrentCountryIso:Ljava/lang/String;

    :try_start_0
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mHaptic:Lcom/android/phone/common/HapticFeedback;

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/common/HapticFeedback;->init(Landroid/content/Context;Z)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0801e8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mProhibitedPhoneNumberRegexp:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string v1, "pref_digits_filled_by_intent"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigitsFilledByIntent:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadSlideInDuration:I

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v2, "Vibrate control bool missing."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    const/4 v7, 0x0

    const v5, 0x7f040022

    invoke-virtual {p1, v5, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->buildLayer()V

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e00c8

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/phone/common/dialpad/DialpadView;

    iput-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadView:Lcom/android/phone/common/dialpad/DialpadView;

    iget-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadView:Lcom/android/phone/common/dialpad/DialpadView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/phone/common/dialpad/DialpadView;->setCanDigitsBeEdited(Z)V

    iget-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadView:Lcom/android/phone/common/dialpad/DialpadView;

    invoke-virtual {v5}, Lcom/android/phone/common/dialpad/DialpadView;->getDigits()Landroid/widget/EditText;

    move-result-object v5

    iput-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    sget-object v6, Lcom/android/dialer/dialpad/UnicodeDialerKeyListener;->INSTANCE:Lcom/android/dialer/dialpad/UnicodeDialerKeyListener;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    iget-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v5, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v5, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v5, p0}, Landroid/widget/EditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v5, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setElegantTextHeight(Z)V

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-static {v5, v6}, Lcom/android/contacts/common/util/PhoneNumberFormatter;->setPhoneNumberFormattingTextWatcher(Landroid/content/Context;Landroid/widget/TextView;)V

    const v5, 0x7f0e00c3

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v2}, Lcom/android/dialer/dialpad/DialpadFragment;->configureKeypadListeners(Landroid/view/View;)V

    :cond_0
    iget-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadView:Lcom/android/phone/common/dialpad/DialpadView;

    invoke-virtual {v5}, Lcom/android/phone/common/dialpad/DialpadView;->getDeleteButton()Landroid/widget/ImageButton;

    move-result-object v5

    iput-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    iget-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_1
    const v5, 0x7f0e00bc

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSpacer:Landroid/view/View;

    iget-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSpacer:Landroid/view/View;

    new-instance v6, Lcom/android/dialer/dialpad/DialpadFragment$2;

    invoke-direct {v6, p0}, Lcom/android/dialer/dialpad/DialpadFragment$2;-><init>(Lcom/android/dialer/dialpad/DialpadFragment;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setCursorVisible(Z)V

    const v5, 0x7f0e00bd

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    invoke-virtual {v5, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v5, 0x7f0e00bf

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v5, 0x7f0e00c0

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Lcom/android/contacts/common/widget/FloatingActionButtonController;

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6, v1, v0}, Lcom/android/contacts/common/widget/FloatingActionButtonController;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;)V

    iput-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    return-object v2
.end method

.method public onHiddenChanged(Z)V
    .locals 4
    .param p1    # Z

    invoke-super {p0, p1}, Lcom/android/dialerbind/analytics/AnalyticsFragment;->onHiddenChanged(Z)V

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/DialtactsActivity;

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0e00c8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/phone/common/dialpad/DialpadView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isDialpadChooserVisible()Z

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mAnimate:Z

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/android/phone/common/dialpad/DialpadView;->animateShow()V

    :cond_2
    iget-object v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    iget-boolean v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mAnimate:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadSlideInDuration:I

    :goto_1
    invoke-virtual {v3, v2}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->scaleIn(I)V

    invoke-virtual {v0}, Lcom/android/dialer/DialtactsActivity;->onDialpadShown()V

    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    :cond_3
    if-eqz p1, :cond_0

    iget-boolean v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mAnimate:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    invoke-virtual {v2}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->scaleOut()V

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2    # Landroid/view/View;
    .param p3    # I
    .param p4    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

    iget v1, v0, Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;->id:I

    packed-switch v1, :pswitch_data_0

    sget-object v2, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onItemClick: unexpected itemId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/dialer/dialpad/DialpadFragment;->returnToInCallScreen(Z)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/dialer/dialpad/DialpadFragment;->returnToInCallScreen(Z)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v2}, Lcom/android/dialer/dialpad/DialpadFragment;->showDialpadChooser(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # I
    .param p3    # Landroid/view/KeyEvent;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->handleDialButtonPressed()V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0e00cb
        :pswitch_0
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 8
    .param p1    # Landroid/view/View;

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    move v4, v5

    :cond_0
    :goto_0
    return v4

    :sswitch_0
    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    const-string v7, "1"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_1
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->removePreviousDigitIfPossible()V

    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isVoicemailAvailable()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->callVoicemail()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_3

    move v3, v4

    :goto_1
    if-eqz v3, :cond_4

    const v5, 0x7f080246

    invoke-static {v5}, Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;->newInstance(I)Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "voicemail_request_during_airplane_mode"

    invoke-virtual {v0, v5, v6}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v3, v5

    goto :goto_1

    :cond_4
    const v5, 0x7f080245

    invoke-static {v5}, Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;->newInstance(I)Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "voicemail_not_ready"

    invoke-virtual {v0, v5, v6}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move v4, v5

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->removePreviousDigitIfPossible()V

    const/16 v5, 0x51

    invoke-direct {p0, v5}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->stopTone()V

    iget-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mPressedDialpadKeys:Ljava/util/HashSet;

    invoke-virtual {v5, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_3
    iget-object v6, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->setCursorVisible(Z)V

    move v4, v5

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e00c3 -> :sswitch_1
        0x7f0e00c7 -> :sswitch_2
        0x7f0e00cb -> :sswitch_3
        0x7f0e00cc -> :sswitch_0
    .end sparse-switch
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1    # Landroid/view/MenuItem;

    const/4 v2, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :pswitch_0
    iget-object v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v0}, Lcom/android/dialer/DialtactsActivity;->getAddNumberToContactIntent(Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_1
    const/16 v3, 0x2c

    invoke-direct {p0, v3}, Lcom/android/dialer/dialpad/DialpadFragment;->updateDialString(C)V

    goto :goto_0

    :pswitch_2
    const/16 v3, 0x3b

    invoke-direct {p0, v3}, Lcom/android/dialer/dialpad/DialpadFragment;->updateDialString(C)V

    goto :goto_0

    :pswitch_3
    iget-object v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    const-string v4, "smsto"

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSmsPackageComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0e012a
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/android/dialerbind/analytics/AnalyticsFragment;->onPause()V

    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->stopTone()V

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mPressedDialpadKeys:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, ""

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    invoke-static {}, Lcom/android/dialer/SpecialCharSequenceMgr;->cleanup()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onPressed(Landroid/view/View;Z)V
    .locals 3
    .param p1    # Landroid/view/View;
    .param p2    # Z

    sget-boolean v0, Lcom/android/dialer/dialpad/DialpadFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPressed(). view: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pressed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    sget-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected onTouch(ACTION_DOWN) event from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mPressedDialpadKeys:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    return-void

    :pswitch_1
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    :pswitch_3
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    :pswitch_4
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    :pswitch_5
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    :pswitch_6
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    :pswitch_7
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    :pswitch_8
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    :pswitch_9
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    :pswitch_a
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    :pswitch_b
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    :pswitch_c
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mPressedDialpadKeys:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mPressedDialpadKeys:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->stopTone()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x7f0e00b3
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_a
    .end packed-switch
.end method

.method public onResume()V
    .locals 11

    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-super {p0}, Lcom/android/dialerbind/analytics/AnalyticsFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/DialtactsActivity;

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadQueryListener:Lcom/android/dialer/dialpad/DialpadFragment$OnDialpadQueryChangedListener;

    const-string v7, "Dialpad.onResume"

    invoke-static {v7}, Lcom/android/contacts/common/util/StopWatch;->start(Ljava/lang/String;)Lcom/android/contacts/common/util/StopWatch;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->queryLastOutgoingCall()V

    const-string v7, "qloc"

    invoke-virtual {v4, v7}, Lcom/android/contacts/common/util/StopWatch;->lap(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/dialer/DialtactsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v7, "dtmf_tone"

    invoke-static {v1, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_2

    :goto_0
    iput-boolean v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDTMFToneEnabled:Z

    const-string v5, "dtwd"

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/util/StopWatch;->lap(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mHaptic:Lcom/android/phone/common/HapticFeedback;

    invoke-virtual {v5}, Lcom/android/phone/common/HapticFeedback;->checkSystemSetting()V

    const-string v5, "hptc"

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/util/StopWatch;->lap(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    :try_start_1
    new-instance v5, Landroid/media/ToneGenerator;

    const/16 v8, 0x8

    const/16 v9, 0x50

    invoke-direct {v5, v8, v9}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_1
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v5, "tg"

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/util/StopWatch;->lap(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mPressedDialpadKeys:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/dialer/dialpad/DialpadFragment;->configureScreenFromIntent(Landroid/app/Activity;)V

    const-string v5, "fdin"

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/util/StopWatch;->lap(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v5

    iget-object v7, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v8, 0x20

    invoke-virtual {v5, v7, v8}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    const-string v5, "tm"

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/util/StopWatch;->lap(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isPhoneInUse()Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v3, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v7, 0x7f080242

    invoke-virtual {v5, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v5, Landroid/text/style/RelativeSizeSpan;

    const v7, 0x3f4ccccd

    invoke-direct {v5, v7}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v7

    invoke-virtual {v3, v5, v6, v7, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :goto_2
    iput-boolean v6, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mFirstLaunch:Z

    const-string v5, "hnt"

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/util/StopWatch;->lap(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->updateDeleteButtonEnabledState()V

    const-string v5, "bes"

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/util/StopWatch;->lap(Ljava/lang/String;)V

    sget-object v5, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const/16 v7, 0x32

    invoke-virtual {v4, v5, v7}, Lcom/android/contacts/common/util/StopWatch;->stopAndLog(Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/android/dialer/util/DialerUtils;->getSmsComponent(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v5

    iput-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSmsPackageComponentName:Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadView:Lcom/android/phone/common/dialpad/DialpadView;

    invoke-virtual {v5}, Lcom/android/phone/common/dialpad/DialpadView;->getOverflowMenuButton()Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mOverflowMenuButton:Landroid/view/View;

    iget-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mOverflowMenuButton:Landroid/view/View;

    invoke-direct {p0, v5}, Lcom/android/dialer/dialpad/DialpadFragment;->buildOptionsMenu(Landroid/view/View;)Landroid/widget/PopupMenu;

    move-result-object v5

    iput-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mOverflowPopupMenu:Landroid/widget/PopupMenu;

    iget-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mOverflowMenuButton:Landroid/view/View;

    iget-object v7, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mOverflowPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v7}, Landroid/widget/PopupMenu;->getDragToOpenListener()Landroid/view/View$OnTouchListener;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mOverflowMenuButton:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mOverflowMenuButton:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v6, 0x4

    :cond_1
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_2
    move v5, v6

    goto/16 :goto_0

    :catch_0
    move-exception v2

    :try_start_3
    sget-object v5, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception caught while creating local tone generator: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    goto/16 :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    :cond_3
    iget-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v5, v10}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v6}, Lcom/android/dialer/dialpad/DialpadFragment;->showDialpadChooser(Z)V

    goto :goto_2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/dialerbind/analytics/AnalyticsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "pref_digits_filled_by_intent"

    iget-boolean v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigitsFilledByIntent:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/android/dialerbind/analytics/AnalyticsFragment;->onStop()V

    iget-boolean v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mClearDigitsOnStop:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mClearDigitsOnStop:Z

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->clearDialpad()V

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    iget-boolean v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mWasEmptyBeforeTextChange:Z

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iget-boolean v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mWasEmptyBeforeTextChange:Z

    invoke-direct {p0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->updateMenuOverflowButton(Z)V

    :cond_0
    return-void
.end method

.method public setAnimate(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mAnimate:Z

    return-void
.end method

.method public setStartedFromNewIntent(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mStartedFromNewIntent:Z

    return-void
.end method

.method public setYFraction(F)V
    .locals 1
    .param p1    # F

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/dialpad/DialpadFragment$DialpadSlidingRelativeLayout;

    invoke-virtual {v0, p1}, Lcom/android/dialer/dialpad/DialpadFragment$DialpadSlidingRelativeLayout;->setYFraction(F)V

    return-void
.end method
