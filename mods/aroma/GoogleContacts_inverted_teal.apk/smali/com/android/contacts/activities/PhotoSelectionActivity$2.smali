.class Lcom/android/contacts/activities/PhotoSelectionActivity$2;
.super Ljava/lang/Object;
.source "PhotoSelectionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/PhotoSelectionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/PhotoSelectionActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/PhotoSelectionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$2;->this$0:Lcom/android/contacts/activities/PhotoSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$2;->this$0:Lcom/android/contacts/activities/PhotoSelectionActivity;

    # invokes: Lcom/android/contacts/activities/PhotoSelectionActivity;->displayPhoto()V
    invoke-static {v0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->access$000(Lcom/android/contacts/activities/PhotoSelectionActivity;)V

    return-void
.end method
