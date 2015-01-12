.class public abstract Lcom/google/android/gms/common/images/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/images/a$a;,
        Lcom/google/android/gms/common/images/a$c;
    }
.end annotation


# instance fields
.field final Pe:Lcom/google/android/gms/common/images/a$a;

.field protected Pg:I

.field protected Ph:Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;

.field protected Pk:I


# direct methods
.method private a(Landroid/content/Context;Lcom/google/android/gms/internal/jl;I)Landroid/graphics/drawable/Drawable;
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v0, p0, Lcom/google/android/gms/common/images/a;->Pk:I

    if-lez v0, :cond_2

    new-instance v2, Lcom/google/android/gms/internal/jl$a;

    iget v0, p0, Lcom/google/android/gms/common/images/a;->Pk:I

    invoke-direct {v2, p3, v0}, Lcom/google/android/gms/internal/jl$a;-><init>(II)V

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/jl;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v3, p0, Lcom/google/android/gms/common/images/a;->Pk:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/common/images/a;->a(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    invoke-virtual {p2, v2, v0}, Lcom/google/android/gms/internal/jl;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/jj;->a(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method a(Landroid/content/Context;Landroid/graphics/Bitmap;Z)V
    .locals 4

    const/4 v3, 0x1

    invoke-static {p2}, Lcom/google/android/gms/common/internal/a;->h(Ljava/lang/Object;)V

    iget v0, p0, Lcom/google/android/gms/common/images/a;->Pk:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/google/android/gms/internal/jj;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/google/android/gms/common/images/a;->Ph:Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/common/images/a;->Ph:Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;

    iget-object v2, p0, Lcom/google/android/gms/common/images/a;->Pe:Lcom/google/android/gms/common/images/a$a;

    iget-object v2, v2, Lcom/google/android/gms/common/images/a$a;->uri:Landroid/net/Uri;

    invoke-interface {v1, v2, v0, v3}, Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;->onImageLoaded(Landroid/net/Uri;Landroid/graphics/drawable/Drawable;Z)V

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p3, v1, v3}, Lcom/google/android/gms/common/images/a;->a(Landroid/graphics/drawable/Drawable;ZZZ)V

    return-void
.end method

.method a(Landroid/content/Context;Lcom/google/android/gms/internal/jl;Z)V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/common/images/a;->Pg:I

    if-eqz v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/common/images/a;->Pg:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/common/images/a;->a(Landroid/content/Context;Lcom/google/android/gms/internal/jl;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/images/a;->Ph:Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/common/images/a;->Ph:Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;

    iget-object v2, p0, Lcom/google/android/gms/common/images/a;->Pe:Lcom/google/android/gms/common/images/a$a;

    iget-object v2, v2, Lcom/google/android/gms/common/images/a$a;->uri:Landroid/net/Uri;

    invoke-interface {v1, v2, v0, v3}, Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;->onImageLoaded(Landroid/net/Uri;Landroid/graphics/drawable/Drawable;Z)V

    :cond_1
    invoke-virtual {p0, v0, p3, v3, v3}, Lcom/google/android/gms/common/images/a;->a(Landroid/graphics/drawable/Drawable;ZZZ)V

    return-void
.end method

.method protected abstract a(Landroid/graphics/drawable/Drawable;ZZZ)V
.end method
