.class Lcom/android/systemui/recents/model/TaskResourceLoader$1;
.super Ljava/lang/Object;
.source "RecentsTaskLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/model/TaskResourceLoader;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/model/TaskResourceLoader;

.field final synthetic val$newIcon:Landroid/graphics/drawable/Drawable;

.field final synthetic val$newThumbnail:Landroid/graphics/Bitmap;

.field final synthetic val$t:Lcom/android/systemui/recents/model/Task;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/model/TaskResourceLoader;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/model/TaskResourceLoader$1;->this$0:Lcom/android/systemui/recents/model/TaskResourceLoader;

    iput-object p2, p0, Lcom/android/systemui/recents/model/TaskResourceLoader$1;->val$t:Lcom/android/systemui/recents/model/Task;

    iput-object p3, p0, Lcom/android/systemui/recents/model/TaskResourceLoader$1;->val$newThumbnail:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/android/systemui/recents/model/TaskResourceLoader$1;->val$newIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader$1;->val$t:Lcom/android/systemui/recents/model/Task;

    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskResourceLoader$1;->val$newThumbnail:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/systemui/recents/model/TaskResourceLoader$1;->val$newIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/model/Task;->notifyTaskDataLoaded(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
