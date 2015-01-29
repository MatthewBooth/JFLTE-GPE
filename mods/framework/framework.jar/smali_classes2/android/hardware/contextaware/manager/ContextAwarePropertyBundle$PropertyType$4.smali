.class final enum Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType$4;
.super Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;
.source "ContextAwarePropertyBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;-><init>(Ljava/lang/String;ILandroid/hardware/contextaware/manager/ContextAwarePropertyBundle$1;)V

    return-void
.end method


# virtual methods
.method getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()TE;"
        }
    .end annotation

    # getter for: Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->floatVal:F
    invoke-static {}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->access$400()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method setValue(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->floatValue()F

    move-result v0

    # setter for: Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->floatVal:F
    invoke-static {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->access$402(F)F

    :goto_0
    return-void

    :cond_0
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->floatValue()F

    move-result v0

    # setter for: Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->floatVal:F
    invoke-static {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->access$402(F)F

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    # setter for: Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->floatVal:F
    invoke-static {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->access$402(F)F

    goto :goto_0

    :cond_2
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->longValue()J

    move-result-wide v0

    long-to-float v0, v0

    # setter for: Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->floatVal:F
    invoke-static {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->access$402(F)F

    goto :goto_0

    :cond_3
    const-string v0, "Cannot cast data type."

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method
