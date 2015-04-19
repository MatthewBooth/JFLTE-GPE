.class Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ConfirmAddDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/ConfirmAddDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/activities/ConfirmAddDetailActivity;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2    # Landroid/content/ContentResolver;

    iput-object p1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 16
    .param p1    # I
    .param p2    # Ljava/lang/Object;
    .param p3    # Landroid/database/Cursor;

    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    # getter for: Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mQueryHandler:Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;
    invoke-static {v13}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$400(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;

    move-result-object v13

    move-object/from16 v0, p0

    if-eq v0, v13, :cond_1

    const-string v13, "ConfirmAdd"

    const-string v14, "onQueryComplete: discard result, the query handler is reset!"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    invoke-virtual {v13}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->isFinishing()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v13

    if-eqz v13, :cond_2

    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    packed-switch p1, :pswitch_data_0

    :cond_3
    :goto_1
    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :pswitch_0
    const/4 v8, 0x0

    if-eqz p3, :cond_4

    :try_start_2
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-nez v13, :cond_4

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    const/4 v13, 0x0

    array-length v14, v9

    const/4 v15, 0x0

    invoke-static {v9, v13, v14, v15}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    :cond_4
    if-eqz v8, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    # getter for: Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mPhotoView:Landroid/widget/ImageView;
    invoke-static {v13}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$500(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)Landroid/widget/ImageView;

    move-result-object v13

    invoke-virtual {v13, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v13

    if-eqz p3, :cond_5

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v13

    :pswitch_1
    if-eqz p3, :cond_3

    :try_start_3
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    const/4 v14, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    # setter for: Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mDisplayName:Ljava/lang/String;
    invoke-static {v13, v14}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$602(Lcom/android/contacts/activities/ConfirmAddDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    # setter for: Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mLookupKey:Ljava/lang/String;
    invoke-static {v13, v14}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$702(Lcom/android/contacts/activities/ConfirmAddDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    # getter for: Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mDisplayName:Ljava/lang/String;
    invoke-static {v14}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$600(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    # getter for: Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mLookupKey:Ljava/lang/String;
    invoke-static {v15}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$700(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)Ljava/lang/String;

    move-result-object v15

    # invokes: Lcom/android/contacts/activities/ConfirmAddDetailActivity;->setDefaultContactImage(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v13, v14, v15}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$800(Lcom/android/contacts/activities/ConfirmAddDetailActivity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const-wide/16 v14, 0x0

    cmp-long v13, v10, v14

    if-nez v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    # setter for: Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mContactId:J
    invoke-static {v13, v14, v15}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$902(Lcom/android/contacts/activities/ConfirmAddDetailActivity;J)J

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    # getter for: Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mDisplayName:Ljava/lang/String;
    invoke-static {v14}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$600(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/android/contacts/activities/ConfirmAddDetailActivity;->startDisambiguationQuery(Ljava/lang/String;)V
    invoke-static {v13, v14}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$1000(Lcom/android/contacts/activities/ConfirmAddDetailActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    # getter for: Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mContactId:J
    invoke-static {v13}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$900(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    # getter for: Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mLookupKey:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$700(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v15, v13}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    # invokes: Lcom/android/contacts/activities/ConfirmAddDetailActivity;->startPhotoQuery(JLandroid/net/Uri;)V
    invoke-static {v13, v10, v11, v6}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$1100(Lcom/android/contacts/activities/ConfirmAddDetailActivity;JLandroid/net/Uri;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    # invokes: Lcom/android/contacts/activities/ConfirmAddDetailActivity;->setDisplayName()V
    invoke-static {v13}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$1200(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    # invokes: Lcom/android/contacts/activities/ConfirmAddDetailActivity;->showDialogContent()V
    invoke-static {v13}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$1300(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)V

    goto/16 :goto_1

    :pswitch_2
    if-eqz p3, :cond_7

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v13

    if-lez v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    # invokes: Lcom/android/contacts/activities/ConfirmAddDetailActivity;->startExtraInfoQuery()V
    invoke-static {v13}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$1400(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)V

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    # invokes: Lcom/android/contacts/activities/ConfirmAddDetailActivity;->setDisplayName()V
    invoke-static {v13}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$1200(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    # invokes: Lcom/android/contacts/activities/ConfirmAddDetailActivity;->showDialogContent()V
    invoke-static {v13}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$1300(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)V

    goto/16 :goto_1

    :pswitch_3
    if-eqz p3, :cond_3

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-eqz v13, :cond_3

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    :goto_2
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v13

    if-nez v13, :cond_a

    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_9

    const/4 v13, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_9

    const-string v13, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-static {v12}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :cond_8
    invoke-virtual {v3, v7, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    :cond_a
    # getter for: Lcom/android/contacts/activities/ConfirmAddDetailActivity;->MIME_TYPE_PRIORITY_LIST:[Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$1500()[Ljava/lang/String;

    move-result-object v2

    array-length v5, v2

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v5, :cond_b

    aget-object v7, v2, v4

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    # invokes: Lcom/android/contacts/activities/ConfirmAddDetailActivity;->setDisplayName()V
    invoke-static {v13}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$1200(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    # invokes: Lcom/android/contacts/activities/ConfirmAddDetailActivity;->setExtraInfoField(Ljava/lang/String;)V
    invoke-static {v14, v13}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$1600(Lcom/android/contacts/activities/ConfirmAddDetailActivity;Ljava/lang/String;)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    # invokes: Lcom/android/contacts/activities/ConfirmAddDetailActivity;->showDialogContent()V
    invoke-static {v13}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$1300(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
