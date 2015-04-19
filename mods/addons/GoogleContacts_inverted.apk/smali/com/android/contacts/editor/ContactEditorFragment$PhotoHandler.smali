.class final Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;
.super Lcom/android/contacts/detail/PhotoSelectionHandler;
.source "ContactEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/ContactEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PhotoHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;
    }
.end annotation


# instance fields
.field private final mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;

.field private final mPhotoEditorListener:Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;

.field final mRawContactId:J

.field final synthetic this$0:Lcom/android/contacts/editor/ContactEditorFragment;


# direct methods
.method public constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/content/Context;Lcom/android/contacts/editor/BaseRawContactEditorView;ILcom/android/contacts/common/model/RawContactDeltaList;)V
    .locals 6
    .param p2    # Landroid/content/Context;
    .param p3    # Lcom/android/contacts/editor/BaseRawContactEditorView;
    .param p4    # I
    .param p5    # Lcom/android/contacts/common/model/RawContactDeltaList;

    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {p3}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v2

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    move v3, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/detail/PhotoSelectionHandler;-><init>(Landroid/content/Context;Landroid/view/View;IZLcom/android/contacts/common/model/RawContactDeltaList;)V

    iput-object p3, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;

    invoke-virtual {p3}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getRawContactId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->mRawContactId:J

    new-instance v0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;-><init>(Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;Lcom/android/contacts/editor/ContactEditorFragment$1;)V

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->mPhotoEditorListener:Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;

    return-void
.end method

.method static synthetic access$1900(Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;)Lcom/android/contacts/editor/BaseRawContactEditorView;
    .locals 1
    .param p0    # Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getListener()Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->mPhotoEditorListener:Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;

    return-object v0
.end method

.method public startPhotoActivity(Landroid/content/Intent;ILandroid/net/Uri;)V
    .locals 4
    .param p1    # Landroid/content/Intent;
    .param p2    # I
    .param p3    # Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;

    invoke-virtual {v1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getRawContactId()J

    move-result-wide v2

    # setter for: Lcom/android/contacts/editor/ContactEditorFragment;->mRawContactIdRequestingPhoto:J
    invoke-static {v0, v2, v3}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1502(Lcom/android/contacts/editor/ContactEditorFragment;J)J

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # setter for: Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoHandler:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;
    invoke-static {v0, p0}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1602(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;)Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    const/4 v1, 0x4

    # setter for: Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I
    invoke-static {v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1102(Lcom/android/contacts/editor/ContactEditorFragment;I)I

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # setter for: Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoUri:Landroid/net/Uri;
    invoke-static {v0, p3}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1702(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/net/Uri;)Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/editor/ContactEditorFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
