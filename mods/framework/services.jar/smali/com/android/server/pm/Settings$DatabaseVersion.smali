.class public Lcom/android/server/pm/Settings$DatabaseVersion;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DatabaseVersion"
.end annotation


# static fields
.field public static final FIRST_VERSION:I = 0x1

.field public static final SIGNATURE_END_ENTITY:I = 0x2

.field public static final SIGNATURE_MALFORMED_RECOVER:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
