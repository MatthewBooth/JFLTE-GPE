.class Lcom/android/contacts/activities/PhotoSelectionActivity$1;
.super Ljava/lang/Object;
.source "PhotoSelectionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$1;->this$0:Lcom/android/contacts/activities/PhotoSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$1;->this$0:Lcom/android/contacts/activities/PhotoSelectionActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->finish()V

    return-void
.end method
