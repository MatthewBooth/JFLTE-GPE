.class public Landroid/graphics/ColorFilter;
.super Ljava/lang/Object;
.source "ColorFilter.java"


# instance fields
.field public native_instance:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static native destroyFilter(J)V
.end method


# virtual methods
.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-wide v0, p0, Landroid/graphics/ColorFilter;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/ColorFilter;->destroyFilter(J)V

    return-void

    :catchall_0
    move-exception v0

    iget-wide v2, p0, Landroid/graphics/ColorFilter;->native_instance:J

    invoke-static {v2, v3}, Landroid/graphics/ColorFilter;->destroyFilter(J)V

    throw v0
.end method
