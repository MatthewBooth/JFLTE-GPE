.class public final Lcom/android/dialer/calllog/CallLogListItemViews;
.super Ljava/lang/Object;
.source "CallLogListItemViews.java"


# instance fields
.field public accountHandle:Landroid/telecom/PhoneAccountHandle;

.field public actionsView:Landroid/view/View;

.field public callBackButtonView:Landroid/widget/TextView;

.field public callIds:[J

.field public final callLogEntryView:Landroid/view/View;

.field public callType:I

.field public canBeReportedAsInvalid:Z

.field public final dayGroupHeader:Landroid/widget/TextView;

.field public detailsButtonView:Landroid/widget/TextView;

.field public nameOrNumber:Ljava/lang/CharSequence;

.field public number:Ljava/lang/String;

.field public numberPresentation:I

.field public final phoneCallDetailsViews:Lcom/android/dialer/PhoneCallDetailsViews;

.field public final primaryActionView:Landroid/view/View;

.field public final quickContactView:Landroid/widget/QuickContactBadge;

.field public reportButtonView:Landroid/widget/TextView;

.field public reported:Z

.field public rowId:J

.field public videoCallButtonView:Landroid/widget/TextView;

.field public voicemailButtonView:Landroid/widget/TextView;

.field public voicemailUri:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/widget/QuickContactBadge;Landroid/view/View;Lcom/android/dialer/PhoneCallDetailsViews;Landroid/view/View;Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/widget/QuickContactBadge;
    .param p2    # Landroid/view/View;
    .param p3    # Lcom/android/dialer/PhoneCallDetailsViews;
    .param p4    # Landroid/view/View;
    .param p5    # Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogListItemViews;->quickContactView:Landroid/widget/QuickContactBadge;

    iput-object p2, p0, Lcom/android/dialer/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    iput-object p3, p0, Lcom/android/dialer/calllog/CallLogListItemViews;->phoneCallDetailsViews:Lcom/android/dialer/PhoneCallDetailsViews;

    iput-object p4, p0, Lcom/android/dialer/calllog/CallLogListItemViews;->callLogEntryView:Landroid/view/View;

    iput-object p5, p0, Lcom/android/dialer/calllog/CallLogListItemViews;->dayGroupHeader:Landroid/widget/TextView;

    return-void
.end method

.method public static createForTest(Landroid/content/Context;)Lcom/android/dialer/calllog/CallLogListItemViews;
    .locals 6
    .param p0    # Landroid/content/Context;

    new-instance v0, Lcom/android/dialer/calllog/CallLogListItemViews;

    new-instance v1, Landroid/widget/QuickContactBadge;

    invoke-direct {v1, p0}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/dialer/PhoneCallDetailsViews;->createForTest(Landroid/content/Context;)Lcom/android/dialer/PhoneCallDetailsViews;

    move-result-object v3

    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-direct/range {v0 .. v5}, Lcom/android/dialer/calllog/CallLogListItemViews;-><init>(Landroid/widget/QuickContactBadge;Landroid/view/View;Lcom/android/dialer/PhoneCallDetailsViews;Landroid/view/View;Landroid/widget/TextView;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->callBackButtonView:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->voicemailButtonView:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->detailsButtonView:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->reportButtonView:Landroid/widget/TextView;

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->actionsView:Landroid/view/View;

    return-object v0
.end method

.method public static fromView(Landroid/view/View;)Lcom/android/dialer/calllog/CallLogListItemViews;
    .locals 6
    .param p0    # Landroid/view/View;

    new-instance v0, Lcom/android/dialer/calllog/CallLogListItemViews;

    const v1, 0x7f0e0061

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/QuickContactBadge;

    const v2, 0x7f0e0077

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {p0}, Lcom/android/dialer/PhoneCallDetailsViews;->fromView(Landroid/view/View;)Lcom/android/dialer/PhoneCallDetailsViews;

    move-result-object v3

    const v4, 0x7f0e0076

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0e0075

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-direct/range {v0 .. v5}, Lcom/android/dialer/calllog/CallLogListItemViews;-><init>(Landroid/widget/QuickContactBadge;Landroid/view/View;Lcom/android/dialer/PhoneCallDetailsViews;Landroid/view/View;Landroid/widget/TextView;)V

    return-object v0
.end method
