.class Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
.super Ljava/lang/Object;
.source "ZenModePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/ZenModePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConditionTag"
.end annotation


# instance fields
.field condition:Landroid/service/notification/Condition;

.field rb:Landroid/widget/RadioButton;

.field title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/ZenModePanel$1;)V
    .locals 0
    .param p1    # Lcom/android/systemui/volume/ZenModePanel$1;

    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;-><init>()V

    return-void
.end method
