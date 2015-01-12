.class Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl$LookupRunnable;
.super Ljava/lang/Object;
.source "PhoneNumberServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LookupRunnable"
.end annotation


# instance fields
.field private final mImageListener:Lcom/android/incallui/service/PhoneNumberService$ImageLookupListener;

.field private final mIsIncoming:Z

.field private final mListener:Lcom/android/incallui/service/PhoneNumberService$NumberLookupListener;

.field private final mPhoneNumber:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;


# direct methods
.method public constructor <init>(Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;Ljava/lang/String;Lcom/android/incallui/service/PhoneNumberService$NumberLookupListener;Lcom/android/incallui/service/PhoneNumberService$ImageLookupListener;Z)V
    .locals 0
    .param p2    # Ljava/lang/String;
    .param p3    # Lcom/android/incallui/service/PhoneNumberService$NumberLookupListener;
    .param p4    # Lcom/android/incallui/service/PhoneNumberService$ImageLookupListener;
    .param p5    # Z

    iput-object p1, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl$LookupRunnable;->this$0:Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl$LookupRunnable;->mPhoneNumber:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl$LookupRunnable;->mListener:Lcom/android/incallui/service/PhoneNumberService$NumberLookupListener;

    iput-object p4, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl$LookupRunnable;->mImageListener:Lcom/android/incallui/service/PhoneNumberService$ImageLookupListener;

    iput-boolean p5, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl$LookupRunnable;->mIsIncoming:Z

    return-void
.end method

.method private doLookup(Ljava/lang/String;)Landroid/util/Pair;
    .locals 14
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/android/dialer/reverselookup/PhoneNumberInfoImpl;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl$LookupRunnable;->this$0:Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;

    # getter for: Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->access$000(Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/dialer/reverselookup/ReverseLookupSettingUtil;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl$LookupRunnable;->this$0:Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;

    iget-object v1, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl$LookupRunnable;->this$0:Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;

    # getter for: Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->access$000(Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->getGoogleAccounts(Landroid/content/Context;)[Landroid/accounts/Account;
    invoke-static {v0, v1}, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->access$900(Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v7

    array-length v0, v7

    if-nez v0, :cond_1

    # getter for: Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "No google account found. Skipping reverse lookup."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v13, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl$LookupRunnable;->this$0:Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;

    # getter for: Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->access$000(Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    iget-object v0, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl$LookupRunnable;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v0, p1, v10}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v11, 0x0

    :goto_1
    array-length v0, v7

    if-ge v11, v0, :cond_2

    const/4 v0, 0x3

    if-ge v11, v0, :cond_2

    aget-object v0, v7, v11

    iget-object v2, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl$LookupRunnable;->this$0:Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;

    # getter for: Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->mPeopleClient:Lcom/google/android/dialer/reverselookup/PeopleApiClient;
    invoke-static {v0}, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->access$100(Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;)Lcom/google/android/dialer/reverselookup/PeopleApiClient;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl$LookupRunnable;->this$0:Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;

    # getter for: Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->access$000(Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;)Landroid/content/Context;

    move-result-object v1

    iget-boolean v6, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl$LookupRunnable;->mIsIncoming:Z

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/dialer/reverselookup/PeopleApiClient;->lookupByPhoneNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/google/android/dialer/reverselookup/PhoneNumberInfoImpl;

    move-result-object v13

    const/4 v5, 0x0

    if-eqz v13, :cond_5

    invoke-virtual {v13}, Lcom/google/android/dialer/reverselookup/PhoneNumberInfoImpl;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    :cond_2
    # getter for: Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->mCachedNumberLookupService:Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl;
    invoke-static {}, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->access$400()Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz v13, :cond_4

    invoke-virtual {v13}, Lcom/google/android/dialer/reverselookup/PhoneNumberInfoImpl;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v9, Lcom/android/dialer/calllog/ContactInfo;

    invoke-direct {v9}, Lcom/android/dialer/calllog/ContactInfo;-><init>()V

    iput-object p1, v9, Lcom/android/dialer/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    invoke-virtual {v13}, Lcom/google/android/dialer/reverselookup/PhoneNumberInfoImpl;->getNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    iget-object v0, v9, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    if-nez v0, :cond_3

    iput-object v4, v9, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    :cond_3
    invoke-virtual {v13}, Lcom/google/android/dialer/reverselookup/PhoneNumberInfoImpl;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v13}, Lcom/google/android/dialer/reverselookup/PhoneNumberInfoImpl;->getPhoneType()I

    move-result v0

    iput v0, v9, Lcom/android/dialer/calllog/ContactInfo;->type:I

    invoke-virtual {v13}, Lcom/google/android/dialer/reverselookup/PhoneNumberInfoImpl;->getPhoneLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-virtual {v13}, Lcom/google/android/dialer/reverselookup/PhoneNumberInfoImpl;->getImageUrl()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_6

    const/4 v0, 0x0

    :goto_2
    iput-object v0, v9, Lcom/android/dialer/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    invoke-virtual {v13}, Lcom/google/android/dialer/reverselookup/PhoneNumberInfoImpl;->getObjectId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/dialer/calllog/ContactInfo;->objectId:Ljava/lang/String;

    # getter for: Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->mCachedNumberLookupService:Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl;
    invoke-static {}, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->access$400()Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl;->buildCachedContactInfo(Lcom/android/dialer/calllog/ContactInfo;)Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;

    move-result-object v8

    invoke-virtual {v13}, Lcom/google/android/dialer/reverselookup/PhoneNumberInfoImpl;->isBusiness()Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;->setPeopleAPISource(Z)V

    invoke-virtual {v13}, Lcom/google/android/dialer/reverselookup/PhoneNumberInfoImpl;->getLookupKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;->setLookupKey(Ljava/lang/String;)V

    # getter for: Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->mCachedNumberLookupService:Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl;
    invoke-static {}, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->access$400()Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl$LookupRunnable;->this$0:Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;

    # getter for: Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->access$000(Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl;->addContact(Landroid/content/Context;Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;)V

    :cond_4
    invoke-static {v13, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    :cond_6
    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_2
.end method


# virtual methods
.method public run()V
    .locals 25

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl$LookupRunnable;->mPhoneNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl$LookupRunnable;->this$0:Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;

    # getter for: Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->mCountryIso:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->access$600(Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    # getter for: Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->access$300()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "raw number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl$LookupRunnable;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/incallui/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", formatted e164: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v22 .. v22}, Lcom/android/incallui/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v22, :cond_0

    # getter for: Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->access$300()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Could not normalize number to e164 standard.  Skipping lookup."

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    const/16 v16, 0x0

    const/16 v20, 0x0

    # getter for: Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->mCachedNumberLookupService:Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl;
    invoke-static {}, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->access$400()Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl;

    move-result-object v3

    if-eqz v3, :cond_1

    # getter for: Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->mCachedNumberLookupService:Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl;
    invoke-static {}, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->access$400()Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl$LookupRunnable;->this$0:Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;

    # getter for: Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->access$000(Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v3, v4, v0}, Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl;->lookupCachedContactFromNumber(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;

    move-result-object v17

    if-eqz v17, :cond_1

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;->getContactInfo()Lcom/android/dialer/calllog/ContactInfo;

    move-result-object v18

    if-eqz v18, :cond_1

    sget-object v3, Lcom/android/dialer/calllog/ContactInfo;->EMPTY:Lcom/android/dialer/calllog/ContactInfo;

    move-object/from16 v0, v18

    if-eq v0, v3, :cond_1

    move-object/from16 v0, v18

    iget-boolean v3, v0, Lcom/android/dialer/calllog/ContactInfo;->isBadData:Z

    if-nez v3, :cond_1

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/dialer/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    if-nez v3, :cond_3

    const/4 v8, 0x0

    :goto_1
    new-instance v2, Lcom/google/android/dialer/reverselookup/PhoneNumberInfoImpl;

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/dialer/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/dialer/calllog/ContactInfo;->type:I

    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v0, v18

    iget v10, v0, Lcom/android/dialer/calllog/ContactInfo;->sourceType:I

    invoke-static {v10}, Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;->isBusiness(I)Z

    move-result v10

    move-object/from16 v0, v18

    iget-object v11, v0, Lcom/android/dialer/calllog/ContactInfo;->objectId:Ljava/lang/String;

    invoke-direct/range {v2 .. v11}, Lcom/google/android/dialer/reverselookup/PhoneNumberInfoImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;->getSourceType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    const/16 v20, 0x1

    :cond_1
    :goto_2
    if-nez v20, :cond_2

    if-nez v2, :cond_6

    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl$LookupRunnable;->doLookup(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v21

    if-eqz v21, :cond_6

    move-object/from16 v0, v21

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/dialer/reverselookup/PhoneNumberInfoImpl;

    move-object/from16 v0, v21

    iget-object v11, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    :goto_3
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/google/android/dialer/reverselookup/PhoneNumberInfoImpl;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Lcom/google/android/dialer/reverselookup/PhoneNumberInfoImpl;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    # getter for: Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->access$300()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Contact lookup. Remote contact found, loading image."

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl$ImageLookupRunnable;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl$LookupRunnable;->this$0:Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;

    invoke-virtual {v2}, Lcom/google/android/dialer/reverselookup/PhoneNumberInfoImpl;->getNormalizedNumber()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Lcom/google/android/dialer/reverselookup/PhoneNumberInfoImpl;->getImageUrl()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl$LookupRunnable;->mImageListener:Lcom/android/incallui/service/PhoneNumberService$ImageLookupListener;

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v15}, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl$ImageLookupRunnable;-><init>(Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/incallui/service/PhoneNumberService$ImageLookupListener;Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl$1;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl$LookupRunnable;->this$0:Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;

    # getter for: Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->mImageExecutorService:Ljava/util/concurrent/ExecutorService;
    invoke-static {v3}, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->access$800(Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    invoke-interface {v3, v9}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl$LookupRunnable;->mListener:Lcom/android/incallui/service/PhoneNumberService$NumberLookupListener;

    invoke-static {v3, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl$LookupRunnable;->this$0:Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;

    # getter for: Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->access$500(Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v19

    # getter for: Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->access$300()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Error running phone number lookup."

    move-object/from16 v0, v19

    invoke-static {v3, v4, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_3
    :try_start_1
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/dialer/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    :cond_4
    const/16 v20, 0x0

    goto/16 :goto_2

    :cond_5
    # getter for: Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->access$300()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Contact lookup. Remote contact found, no image."

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :cond_6
    move-object/from16 v11, v16

    goto :goto_3
.end method
