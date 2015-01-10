.class Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;
.super Landroid/os/AsyncTask;
.source "UserSwitcherController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/UserSwitcherController;->refreshUsers(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/util/SparseArray",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

.field final synthetic val$addUsersWhenLocked:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->val$addUsersWhenLocked:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # [Ljava/lang/Object;

    check-cast p1, [Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->doInBackground([Landroid/util/SparseArray;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/util/SparseArray;)Ljava/util/ArrayList;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    aget-object v19, p1, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    # getter for: Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$000(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/os/UserManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v26

    if-nez v26, :cond_1

    const/16 v28, 0x0

    :cond_0
    :goto_0
    return-object v28

    :cond_1
    new-instance v28, Ljava/util/ArrayList;

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v4

    move-object/from16 v0, v28

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v22

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    # getter for: Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$100(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c009a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_2
    :goto_1
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    move/from16 v0, v22

    if-ne v0, v4, :cond_3

    const/4 v6, 0x1

    :goto_2
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v2, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;-><init>(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;ZZZZ)V

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    if-nez v9, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    # getter for: Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$000(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/os/UserManager;

    move-result-object v4

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v9

    :cond_5
    if-eqz v9, :cond_6

    move/from16 v0, v18

    move/from16 v1, v18

    invoke-static {v9, v0, v1}, Lcom/android/systemui/BitmapHelper;->createCircularClip(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v9

    :cond_6
    if-eqz v6, :cond_7

    const/16 v25, 0x0

    :goto_3
    new-instance v7, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v3

    move v11, v6

    invoke-direct/range {v7 .. v13}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;-><init>(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;ZZZZ)V

    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-virtual {v0, v1, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_7
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v25

    goto :goto_3

    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    # getter for: Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$000(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/os/UserManager;

    move-result-object v4

    const-string v5, "no_add_user"

    sget-object v7, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v7}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v4

    if-nez v4, :cond_c

    const/16 v27, 0x1

    :goto_4
    if-nez v22, :cond_d

    if-eqz v27, :cond_d

    const/16 v23, 0x1

    :goto_5
    if-eqz v27, :cond_e

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->val$addUsersWhenLocked:Z

    if-eqz v4, :cond_e

    const/16 v17, 0x1

    :goto_6
    if-nez v23, :cond_9

    if-eqz v17, :cond_f

    :cond_9
    if-nez v2, :cond_f

    const/16 v20, 0x1

    :goto_7
    if-nez v23, :cond_a

    if-eqz v17, :cond_10

    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    # getter for: Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$000(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserManager;->canAddMoreUsers()Z

    move-result v4

    if-eqz v4, :cond_10

    const/16 v21, 0x1

    :goto_8
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->val$addUsersWhenLocked:Z

    if-nez v4, :cond_11

    const/16 v16, 0x1

    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    # getter for: Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mSimpleUserSwitcher:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$200(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Z

    move-result v4

    if-nez v4, :cond_b

    if-nez v2, :cond_12

    if-eqz v20, :cond_b

    new-instance v10, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v10 .. v16}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;-><init>(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;ZZZZ)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    # getter for: Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mSimpleUserSwitcher:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$200(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v21, :cond_0

    new-instance v10, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-direct/range {v10 .. v16}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;-><init>(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;ZZZZ)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_c
    const/16 v27, 0x0

    goto :goto_4

    :cond_d
    const/16 v23, 0x0

    goto :goto_5

    :cond_e
    const/16 v17, 0x0

    goto :goto_6

    :cond_f
    const/16 v20, 0x0

    goto :goto_7

    :cond_10
    const/16 v21, 0x0

    goto :goto_8

    :cond_11
    const/16 v16, 0x0

    goto :goto_9

    :cond_12
    iget-boolean v4, v2, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isCurrent:Z

    if-eqz v4, :cond_13

    const/16 v25, 0x0

    :goto_b
    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_a

    :cond_13
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v25

    goto :goto_b
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    # setter for: Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUsers:Ljava/util/ArrayList;
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$302(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    # invokes: Lcom/android/systemui/statusbar/policy/UserSwitcherController;->notifyAdapters()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$400(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    :cond_0
    return-void
.end method
