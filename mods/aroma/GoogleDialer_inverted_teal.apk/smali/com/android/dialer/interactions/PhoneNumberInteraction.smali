.class public Lcom/android/dialer/interactions/PhoneNumberInteraction;
.super Ljava/lang/Object;
.source "PhoneNumberInteraction.java"

# interfaces
.implements Landroid/content/Loader$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/interactions/PhoneNumberInteraction$1;,
        Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;,
        Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItemAdapter;,
        Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/Loader$OnLoadCompleteListener",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final PHONE_NUMBER_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCallOrigin:Ljava/lang/String;

.field private mContactId:J

.field private final mContext:Landroid/content/Context;

.field private final mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private final mInteractionType:I

.field private mLoader:Landroid/content/CursorLoader;

.field private mUseDefault:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/android/dialer/interactions/PhoneNumberInteraction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->TAG:Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "is_super_primary"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data_set"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "mimetype"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->PHONE_NUMBER_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILandroid/content/DialogInterface$OnDismissListener;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # I
    .param p3    # Landroid/content/DialogInterface$OnDismissListener;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/dialer/interactions/PhoneNumberInteraction;-><init>(Landroid/content/Context;ILandroid/content/DialogInterface$OnDismissListener;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ILandroid/content/DialogInterface$OnDismissListener;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # I
    .param p3    # Landroid/content/DialogInterface$OnDismissListener;
    .param p4    # Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mContactId:J

    iput-object p1, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mInteractionType:I

    iput-object p3, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    iput-object p4, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mCallOrigin:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p0    # Landroid/content/Context;
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # Ljava/lang/String;

    invoke-static {p0, p1, p2, p3}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->performAction(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private isSafeToCommitTransactions()Z
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/android/dialer/activity/TransactionSafeActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/dialer/activity/TransactionSafeActivity;

    invoke-virtual {v0}, Lcom/android/dialer/activity/TransactionSafeActivity;->isSafeToCommitTransactions()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onDismiss()V
    .locals 2

    iget-object v0, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method private static performAction(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p0    # Landroid/content/Context;
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # Ljava/lang/String;

    packed-switch p2, :pswitch_data_0

    invoke-static {p1, p3}, Lcom/android/contacts/common/CallUtil;->getCallIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :goto_0
    invoke-static {p0, v0}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    const-string v2, "sms"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private performAction(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mInteractionType:I

    iget-object v2, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mCallOrigin:Ljava/lang/String;

    invoke-static {v0, p1, v1, v2}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->performAction(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static startInteractionForPhoneCall(Lcom/android/dialer/activity/TransactionSafeActivity;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .param p0    # Lcom/android/dialer/activity/TransactionSafeActivity;
    .param p1    # Landroid/net/Uri;
    .param p2    # Ljava/lang/String;

    const/4 v2, 0x1

    new-instance v0, Lcom/android/dialer/interactions/PhoneNumberInteraction;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v2, v1, p2}, Lcom/android/dialer/interactions/PhoneNumberInteraction;-><init>(Landroid/content/Context;ILandroid/content/DialogInterface$OnDismissListener;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v2}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->startInteraction(Landroid/net/Uri;Z)V

    return-void
.end method


# virtual methods
.method getLoader()Landroid/content/CursorLoader;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mLoader:Landroid/content/CursorLoader;

    return-object v0
.end method

.method public onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 9
    .param p2    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    const/4 v8, 0x1

    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->onDismiss()V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->isSafeToCommitTransactions()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->onDismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    :goto_1
    :try_start_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-wide v4, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mContactId:J

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    const/16 v3, 0x8

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mContactId:J

    :cond_2
    iget-boolean v3, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mUseDefault:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x2

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_3
    new-instance v0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;

    invoke-direct {v0}, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;-><init>()V

    const/4 v3, 0x0

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;->id:J

    const/4 v3, 0x1

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;->phoneNumber:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;->accountType:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;->dataSet:Ljava/lang/String;

    const/4 v3, 0x5

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v4, v3

    iput-wide v4, v0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;->type:J

    const/4 v3, 0x6

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;->label:Ljava/lang/String;

    const/4 v3, 0x7

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_4
    :try_start_2
    iget-boolean v3, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mUseDefault:Z

    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    invoke-direct {p0, v2}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->performAction(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->onDismiss()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_5
    :try_start_3
    iget-object v3, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/android/contacts/common/Collapser;->collapseList(Ljava/util/List;Landroid/content/Context;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_6

    invoke-direct {p0}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->onDismiss()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_6
    :try_start_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v8, :cond_7

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;

    invoke-direct {p0}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->onDismiss()V

    iget-object v3, v0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;->phoneNumber:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->performAction(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    invoke-virtual {p0, v1}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->showDisambiguationDialog(Ljava/util/ArrayList;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public bridge synthetic onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Landroid/content/Loader;
    .param p2    # Ljava/lang/Object;

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method showDisambiguationDialog(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget v1, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mInteractionType:I

    iget-object v2, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mCallOrigin:Ljava/lang/String;

    invoke-static {v0, p1, v1, v2}, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->show(Landroid/app/FragmentManager;Ljava/util/ArrayList;ILjava/lang/String;)V

    return-void
.end method

.method startInteraction(Landroid/net/Uri;)V
    .locals 1
    .param p1    # Landroid/net/Uri;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->startInteraction(Landroid/net/Uri;Z)V

    return-void
.end method

.method startInteraction(Landroid/net/Uri;Z)V
    .locals 8
    .param p1    # Landroid/net/Uri;
    .param p2    # Z

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mLoader:Landroid/content/CursorLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->reset()V

    :cond_0
    iput-boolean p2, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mUseDefault:Z

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "data"

    invoke-virtual {v7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "data"

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    :goto_0
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/dialer/interactions/PhoneNumberInteraction;->PHONE_NUMBER_PROJECTION:[Ljava/lang/String;

    const-string v4, "mimetype IN (\'vnd.android.cursor.item/phone_v2\', \'vnd.android.cursor.item/sip_address\') AND data1 NOT NULL"

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mLoader:Landroid/content/CursorLoader;

    iget-object v0, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mLoader:Landroid/content/CursorLoader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/content/CursorLoader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    iget-object v0, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->startLoading()V

    return-void

    :cond_1
    move-object v2, p1

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v2, p1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Input Uri must be contact Uri or data Uri (input: \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
