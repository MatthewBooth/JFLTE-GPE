.class public Lcom/android/dialer/calllog/ClearCallLogDialog;
.super Landroid/app/DialogFragment;
.source "ClearCallLogDialog.java"


# static fields
.field private static final mCachedNumberLookupService:Lcom/android/dialer/service/CachedNumberLookupService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/dialerbind/ObjectFactory;->newCachedNumberLookupService()Lcom/android/dialer/service/CachedNumberLookupService;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/calllog/ClearCallLogDialog;->mCachedNumberLookupService:Lcom/android/dialer/service/CachedNumberLookupService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/android/dialer/service/CachedNumberLookupService;
    .locals 1

    sget-object v0, Lcom/android/dialer/calllog/ClearCallLogDialog;->mCachedNumberLookupService:Lcom/android/dialer/service/CachedNumberLookupService;

    return-object v0
.end method

.method public static show(Landroid/app/FragmentManager;)V
    .locals 2
    .param p0    # Landroid/app/FragmentManager;

    new-instance v0, Lcom/android/dialer/calllog/ClearCallLogDialog;

    invoke-direct {v0}, Lcom/android/dialer/calllog/ClearCallLogDialog;-><init>()V

    const-string v1, "deleteCallLog"

    invoke-virtual {v0, p0, v1}, Lcom/android/dialer/calllog/ClearCallLogDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1    # Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/dialer/calllog/ClearCallLogDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/dialer/calllog/ClearCallLogDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/dialer/calllog/ClearCallLogDialog$1;

    invoke-direct {v1, p0, v2, v0}, Lcom/android/dialer/calllog/ClearCallLogDialog$1;-><init>(Lcom/android/dialer/calllog/ClearCallLogDialog;Landroid/content/ContentResolver;Landroid/content/Context;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/dialer/calllog/ClearCallLogDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0801f6

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1010355

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0801f7

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    invoke-virtual {v3, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method
