.class public Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;
.super Ljava/lang/Object;
.source "ContextAwarePropertyBundle.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;
    }
.end annotation


# static fields
.field protected static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;",
            ">;"
        }
    .end annotation
.end field

.field private static final booleanVal:[Z

.field private static doubleVal:D

.field private static floatVal:F

.field private static integerVal:I

.field private static longVal:J

.field private static stringVal:Ljava/lang/String;

.field private static type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [Z

    sput-object v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->booleanVal:[Z

    new-instance v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$1;

    invoke-direct {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$1;-><init>()V

    sput-object v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    invoke-static {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->setType(I)V

    sget-object v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->BOOLEAN_TYPE:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->INTEGER_TYPE:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->LONG_TYPE:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->FLOAT_TYPE:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->DOUBLE_TYPE:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->STRING_TYPE:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1    # Landroid/os/Parcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$100()[Z
    .locals 1

    sget-object v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->booleanVal:[Z

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    sget v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->integerVal:I

    return v0
.end method

.method static synthetic access$202(I)I
    .locals 0
    .param p0    # I

    sput p0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->integerVal:I

    return p0
.end method

.method static synthetic access$300()J
    .locals 2

    sget-wide v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->longVal:J

    return-wide v0
.end method

.method static synthetic access$302(J)J
    .locals 0
    .param p0    # J

    sput-wide p0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->longVal:J

    return-wide p0
.end method

.method static synthetic access$400()F
    .locals 1

    sget v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->floatVal:F

    return v0
.end method

.method static synthetic access$402(F)F
    .locals 0
    .param p0    # F

    sput p0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->floatVal:F

    return p0
.end method

.method static synthetic access$500()D
    .locals 2

    sget-wide v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->doubleVal:D

    return-wide v0
.end method

.method static synthetic access$502(D)D
    .locals 0
    .param p0    # D

    sput-wide p0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->doubleVal:D

    return-wide p0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->stringVal:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Ljava/lang/String;

    sput-object p0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->stringVal:Ljava/lang/String;

    return-object p0
.end method

.method public static getType()I
    .locals 1

    sget v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->type:I

    return v0
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1    # Landroid/os/Parcel;

    sget-object v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->BOOLEAN_TYPE:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    check-cast v0, [Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    sget-object v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->INTEGER_TYPE:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->LONG_TYPE:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->FLOAT_TYPE:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->DOUBLE_TYPE:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->STRING_TYPE:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->setType(I)V

    return-void
.end method

.method private static setType(I)V
    .locals 0
    .param p0    # I

    sput p0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->type:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBooleanTypeCode()I
    .locals 1

    sget-object v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->BOOLEAN_TYPE:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getDoubleTypeCode()I
    .locals 1

    sget-object v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->DOUBLE_TYPE:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getFloatTypeCode()I
    .locals 1

    sget-object v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->FLOAT_TYPE:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getIntegerTypeCode()I
    .locals 1

    sget-object v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->INTEGER_TYPE:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getLongTypeCode()I
    .locals 1

    sget-object v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->LONG_TYPE:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getStringTypeCode()I
    .locals 1

    sget-object v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->STRING_TYPE:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()TE;"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-static {}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->values()[Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    invoke-static {}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getType()I

    move-result v5

    invoke-virtual {v1}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v6

    if-ne v5, v6, :cond_1

    invoke-virtual {v1}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v4

    :cond_0
    return-object v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setValue(ILjava/lang/Object;)V
    .locals 5
    .param p1    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;)V"
        }
    .end annotation

    invoke-static {}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->values()[Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    invoke-virtual {v1}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v4

    if-ne p1, v4, :cond_1

    invoke-static {p1}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->setType(I)V

    invoke-virtual {v1, p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    sget-object v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->BOOLEAN_TYPE:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    check-cast v0, [Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    sget-object v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->INTEGER_TYPE:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    sget-object v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->LONG_TYPE:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    sget-object v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->FLOAT_TYPE:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    sget-object v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->DOUBLE_TYPE:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    sget-object v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->STRING_TYPE:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
