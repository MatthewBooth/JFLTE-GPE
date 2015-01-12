.class Lcom/android/contacts/activities/AttachPhotoActivity$1;
.super Ljava/lang/Object;
.source "AttachPhotoActivity.java"

# interfaces
.implements Lcom/android/contacts/activities/AttachPhotoActivity$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/AttachPhotoActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/AttachPhotoActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/AttachPhotoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/activities/AttachPhotoActivity$1;->this$0:Lcom/android/contacts/activities/AttachPhotoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactLoaded(Lcom/android/contacts/common/model/Contact;)V
    .locals 1
    .param p1    # Lcom/android/contacts/common/model/Contact;

    iget-object v0, p0, Lcom/android/contacts/activities/AttachPhotoActivity$1;->this$0:Lcom/android/contacts/activities/AttachPhotoActivity;

    # invokes: Lcom/android/contacts/activities/AttachPhotoActivity;->saveContact(Lcom/android/contacts/common/model/Contact;)V
    invoke-static {v0, p1}, Lcom/android/contacts/activities/AttachPhotoActivity;->access$000(Lcom/android/contacts/activities/AttachPhotoActivity;Lcom/android/contacts/common/model/Contact;)V

    return-void
.end method
