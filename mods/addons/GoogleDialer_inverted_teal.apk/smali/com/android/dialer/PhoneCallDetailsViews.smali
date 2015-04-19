.class public final Lcom/android/dialer/PhoneCallDetailsViews;
.super Ljava/lang/Object;
.source "PhoneCallDetailsViews.java"


# instance fields
.field public final callAccountIcon:Landroid/widget/ImageView;

.field public final callLocationAndDate:Landroid/widget/TextView;

.field public final callTypeIcons:Lcom/android/dialer/calllog/CallTypeIconsView;

.field public final callTypeView:Landroid/view/View;

.field public final nameView:Landroid/widget/TextView;

.field public final voicemailTranscriptionView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/TextView;Landroid/view/View;Lcom/android/dialer/calllog/CallTypeIconsView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/widget/TextView;
    .param p2    # Landroid/view/View;
    .param p3    # Lcom/android/dialer/calllog/CallTypeIconsView;
    .param p4    # Landroid/widget/ImageView;
    .param p5    # Landroid/widget/TextView;
    .param p6    # Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/PhoneCallDetailsViews;->nameView:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/dialer/PhoneCallDetailsViews;->callTypeView:Landroid/view/View;

    iput-object p3, p0, Lcom/android/dialer/PhoneCallDetailsViews;->callTypeIcons:Lcom/android/dialer/calllog/CallTypeIconsView;

    iput-object p4, p0, Lcom/android/dialer/PhoneCallDetailsViews;->callAccountIcon:Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/android/dialer/PhoneCallDetailsViews;->callLocationAndDate:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/android/dialer/PhoneCallDetailsViews;->voicemailTranscriptionView:Landroid/widget/TextView;

    return-void
.end method

.method public static createForTest(Landroid/content/Context;)Lcom/android/dialer/PhoneCallDetailsViews;
    .locals 7
    .param p0    # Landroid/content/Context;

    new-instance v0, Lcom/android/dialer/PhoneCallDetailsViews;

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/android/dialer/calllog/CallTypeIconsView;

    invoke-direct {v3, p0}, Lcom/android/dialer/calllog/CallTypeIconsView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-direct/range {v0 .. v6}, Lcom/android/dialer/PhoneCallDetailsViews;-><init>(Landroid/widget/TextView;Landroid/view/View;Lcom/android/dialer/calllog/CallTypeIconsView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0
.end method

.method public static fromView(Landroid/view/View;)Lcom/android/dialer/PhoneCallDetailsViews;
    .locals 7
    .param p0    # Landroid/view/View;

    new-instance v0, Lcom/android/dialer/PhoneCallDetailsViews;

    const v1, 0x7f0e0079

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0e007a

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0e007b

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/dialer/calllog/CallTypeIconsView;

    const v4, 0x7f0e007c

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f0e007d

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0e006c

    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-direct/range {v0 .. v6}, Lcom/android/dialer/PhoneCallDetailsViews;-><init>(Landroid/widget/TextView;Landroid/view/View;Lcom/android/dialer/calllog/CallTypeIconsView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0
.end method
