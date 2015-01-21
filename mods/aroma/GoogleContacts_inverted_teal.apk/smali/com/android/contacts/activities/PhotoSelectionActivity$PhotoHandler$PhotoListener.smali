.class final Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler$PhotoListener;
.super Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;
.source "PhotoSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PhotoListener"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;


# direct methods
.method private constructor <init>(Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler$PhotoListener;->this$1:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    invoke-direct {p0, p1}, Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;-><init>(Lcom/android/contacts/detail/PhotoSelectionHandler;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;Lcom/android/contacts/activities/PhotoSelectionActivity$1;)V
    .locals 0
    .param p1    # Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;
    .param p2    # Lcom/android/contacts/activities/PhotoSelectionActivity$1;

    invoke-direct {p0, p1}, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler$PhotoListener;-><init>(Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;)V

    return-void
.end method


# virtual methods
.method public getCurrentPhotoUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler$PhotoListener;->this$1:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    iget-object v0, v0, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;->this$0:Lcom/android/contacts/activities/PhotoSelectionActivity;

    # getter for: Lcom/android/contacts/activities/PhotoSelectionActivity;->mCurrentPhotoUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->access$1500(Lcom/android/contacts/activities/PhotoSelectionActivity;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public onPhotoSelected(Landroid/net/Uri;)V
    .locals 11
    .param p1    # Landroid/net/Uri;

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler$PhotoListener;->this$1:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    invoke-virtual {v1}, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;->getDeltaForAttachingPhotoToContact()Lcom/android/contacts/common/model/RawContactDeltaList;

    move-result-object v2

    iget-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler$PhotoListener;->this$1:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    # invokes: Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;->getWritableEntityId()J
    invoke-static {v1}, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;->access$1600(Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;)J

    move-result-wide v8

    iget-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler$PhotoListener;->this$1:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    # getter for: Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;->access$1700(Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;)Landroid/content/Context;

    move-result-object v1

    const-string v3, ""

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler$PhotoListener;->this$1:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    iget-object v5, v5, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;->this$0:Lcom/android/contacts/activities/PhotoSelectionActivity;

    # getter for: Lcom/android/contacts/activities/PhotoSelectionActivity;->mIsProfile:Z
    invoke-static {v5}, Lcom/android/contacts/activities/PhotoSelectionActivity;->access$1800(Lcom/android/contacts/activities/PhotoSelectionActivity;)Z

    move-result v5

    move-object v7, v6

    move-object v10, p1

    invoke-static/range {v1 .. v10}, Lcom/android/contacts/ContactSaveService;->createSaveContactIntent(Landroid/content/Context;Lcom/android/contacts/common/model/RawContactDeltaList;Ljava/lang/String;IZLjava/lang/Class;Ljava/lang/String;JLandroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler$PhotoListener;->this$1:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    iget-object v1, v1, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;->this$0:Lcom/android/contacts/activities/PhotoSelectionActivity;

    invoke-virtual {v1, v0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler$PhotoListener;->this$1:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    iget-object v1, v1, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;->this$0:Lcom/android/contacts/activities/PhotoSelectionActivity;

    invoke-virtual {v1}, Lcom/android/contacts/activities/PhotoSelectionActivity;->finish()V

    return-void
.end method

.method public onPhotoSelectionDismissed()V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler$PhotoListener;->this$1:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    iget-object v0, v0, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;->this$0:Lcom/android/contacts/activities/PhotoSelectionActivity;

    # getter for: Lcom/android/contacts/activities/PhotoSelectionActivity;->mSubActivityInProgress:Z
    invoke-static {v0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->access$1400(Lcom/android/contacts/activities/PhotoSelectionActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler$PhotoListener;->this$1:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    iget-object v0, v0, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;->this$0:Lcom/android/contacts/activities/PhotoSelectionActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->finish()V

    :cond_0
    return-void
.end method
