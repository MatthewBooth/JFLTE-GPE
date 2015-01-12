.class final Landroid/support/v4/app/FragmentTabHost$TabInfo;
.super Ljava/lang/Object;
.source "FragmentTabHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/FragmentTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TabInfo"
.end annotation


# instance fields
.field private final args:Landroid/os/Bundle;

.field private final clss:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private fragment:Landroid/support/v4/app/Fragment;

.field private final tag:Ljava/lang/String;


# direct methods
.method static synthetic access$100(Landroid/support/v4/app/FragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p0    # Landroid/support/v4/app/FragmentTabHost$TabInfo;

    iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method static synthetic access$102(Landroid/support/v4/app/FragmentTabHost$TabInfo;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;
    .locals 0
    .param p0    # Landroid/support/v4/app/FragmentTabHost$TabInfo;
    .param p1    # Landroid/support/v4/app/Fragment;

    iput-object p1, p0, Landroid/support/v4/app/FragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    return-object p1
.end method

.method static synthetic access$200(Landroid/support/v4/app/FragmentTabHost$TabInfo;)Ljava/lang/String;
    .locals 1
    .param p0    # Landroid/support/v4/app/FragmentTabHost$TabInfo;

    iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/v4/app/FragmentTabHost$TabInfo;)Ljava/lang/Class;
    .locals 1
    .param p0    # Landroid/support/v4/app/FragmentTabHost$TabInfo;

    iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost$TabInfo;->clss:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/v4/app/FragmentTabHost$TabInfo;)Landroid/os/Bundle;
    .locals 1
    .param p0    # Landroid/support/v4/app/FragmentTabHost$TabInfo;

    iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost$TabInfo;->args:Landroid/os/Bundle;

    return-object v0
.end method
