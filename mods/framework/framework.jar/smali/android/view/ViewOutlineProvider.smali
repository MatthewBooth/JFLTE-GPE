.class public abstract Landroid/view/ViewOutlineProvider;
.super Ljava/lang/Object;
.source "ViewOutlineProvider.java"


# static fields
.field public static final BACKGROUND:Landroid/view/ViewOutlineProvider;

.field public static final BOUNDS:Landroid/view/ViewOutlineProvider;

.field public static final PADDED_BOUNDS:Landroid/view/ViewOutlineProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/ViewOutlineProvider$1;

    invoke-direct {v0}, Landroid/view/ViewOutlineProvider$1;-><init>()V

    sput-object v0, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    new-instance v0, Landroid/view/ViewOutlineProvider$2;

    invoke-direct {v0}, Landroid/view/ViewOutlineProvider$2;-><init>()V

    sput-object v0, Landroid/view/ViewOutlineProvider;->BOUNDS:Landroid/view/ViewOutlineProvider;

    new-instance v0, Landroid/view/ViewOutlineProvider$3;

    invoke-direct {v0}, Landroid/view/ViewOutlineProvider$3;-><init>()V

    sput-object v0, Landroid/view/ViewOutlineProvider;->PADDED_BOUNDS:Landroid/view/ViewOutlineProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
.end method
