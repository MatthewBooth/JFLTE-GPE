.class public Landroid/text/style/TtsSpan;
.super Ljava/lang/Object;
.source "TtsSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/style/TtsSpan$VerbatimBuilder;,
        Landroid/text/style/TtsSpan$DigitsBuilder;,
        Landroid/text/style/TtsSpan$ElectronicBuilder;,
        Landroid/text/style/TtsSpan$TelephoneBuilder;,
        Landroid/text/style/TtsSpan$MoneyBuilder;,
        Landroid/text/style/TtsSpan$DateBuilder;,
        Landroid/text/style/TtsSpan$TimeBuilder;,
        Landroid/text/style/TtsSpan$MeasureBuilder;,
        Landroid/text/style/TtsSpan$FractionBuilder;,
        Landroid/text/style/TtsSpan$DecimalBuilder;,
        Landroid/text/style/TtsSpan$OrdinalBuilder;,
        Landroid/text/style/TtsSpan$CardinalBuilder;,
        Landroid/text/style/TtsSpan$TextBuilder;,
        Landroid/text/style/TtsSpan$SemioticClassBuilder;,
        Landroid/text/style/TtsSpan$Builder;
    }
.end annotation


# static fields
.field public static final ANIMACY_ANIMATE:Ljava/lang/String; = "android.animate"

.field public static final ANIMACY_INANIMATE:Ljava/lang/String; = "android.inanimate"

.field public static final ARG_ANIMACY:Ljava/lang/String; = "android.arg.animacy"

.field public static final ARG_CASE:Ljava/lang/String; = "android.arg.case"

.field public static final ARG_COUNTRY_CODE:Ljava/lang/String; = "android.arg.country_code"

.field public static final ARG_CURRENCY:Ljava/lang/String; = "android.arg.money"

.field public static final ARG_DAY:Ljava/lang/String; = "android.arg.day"

.field public static final ARG_DENOMINATOR:Ljava/lang/String; = "android.arg.denominator"

.field public static final ARG_DIGITS:Ljava/lang/String; = "android.arg.digits"

.field public static final ARG_DOMAIN:Ljava/lang/String; = "android.arg.domain"

.field public static final ARG_EXTENSION:Ljava/lang/String; = "android.arg.extension"

.field public static final ARG_FRACTIONAL_PART:Ljava/lang/String; = "android.arg.fractional_part"

.field public static final ARG_FRAGMENT_ID:Ljava/lang/String; = "android.arg.fragment_id"

.field public static final ARG_GENDER:Ljava/lang/String; = "android.arg.gender"

.field public static final ARG_HOURS:Ljava/lang/String; = "android.arg.hours"

.field public static final ARG_INTEGER_PART:Ljava/lang/String; = "android.arg.integer_part"

.field public static final ARG_MINUTES:Ljava/lang/String; = "android.arg.minutes"

.field public static final ARG_MONTH:Ljava/lang/String; = "android.arg.month"

.field public static final ARG_MULTIPLICITY:Ljava/lang/String; = "android.arg.multiplicity"

.field public static final ARG_NUMBER:Ljava/lang/String; = "android.arg.number"

.field public static final ARG_NUMBER_PARTS:Ljava/lang/String; = "android.arg.number_parts"

.field public static final ARG_NUMERATOR:Ljava/lang/String; = "android.arg.numerator"

.field public static final ARG_PASSWORD:Ljava/lang/String; = "android.arg.password"

.field public static final ARG_PATH:Ljava/lang/String; = "android.arg.path"

.field public static final ARG_PORT:Ljava/lang/String; = "android.arg.port"

.field public static final ARG_PROTOCOL:Ljava/lang/String; = "android.arg.protocol"

.field public static final ARG_QUANTITY:Ljava/lang/String; = "android.arg.quantity"

.field public static final ARG_QUERY_STRING:Ljava/lang/String; = "android.arg.query_string"

.field public static final ARG_TEXT:Ljava/lang/String; = "android.arg.text"

.field public static final ARG_UNIT:Ljava/lang/String; = "android.arg.unit"

.field public static final ARG_USERNAME:Ljava/lang/String; = "android.arg.username"

.field public static final ARG_VERBATIM:Ljava/lang/String; = "android.arg.verbatim"

.field public static final ARG_WEEKDAY:Ljava/lang/String; = "android.arg.weekday"

.field public static final ARG_YEAR:Ljava/lang/String; = "android.arg.year"

.field public static final CASE_ABLATIVE:Ljava/lang/String; = "android.ablative"

.field public static final CASE_ACCUSATIVE:Ljava/lang/String; = "android.accusative"

.field public static final CASE_DATIVE:Ljava/lang/String; = "android.dative"

.field public static final CASE_GENITIVE:Ljava/lang/String; = "android.genitive"

.field public static final CASE_INSTRUMENTAL:Ljava/lang/String; = "android.instrumental"

.field public static final CASE_LOCATIVE:Ljava/lang/String; = "android.locative"

.field public static final CASE_NOMINATIVE:Ljava/lang/String; = "android.nominative"

.field public static final CASE_VOCATIVE:Ljava/lang/String; = "android.vocative"

.field public static final GENDER_FEMALE:Ljava/lang/String; = "android.female"

.field public static final GENDER_MALE:Ljava/lang/String; = "android.male"

.field public static final GENDER_NEUTRAL:Ljava/lang/String; = "android.neutral"

.field public static final MONTH_APRIL:I = 0x3

.field public static final MONTH_AUGUST:I = 0x7

.field public static final MONTH_DECEMBER:I = 0xb

.field public static final MONTH_FEBRUARY:I = 0x1

.field public static final MONTH_JANUARY:I = 0x0

.field public static final MONTH_JULY:I = 0x6

.field public static final MONTH_JUNE:I = 0x5

.field public static final MONTH_MARCH:I = 0x2

.field public static final MONTH_MAY:I = 0x4

.field public static final MONTH_NOVEMBER:I = 0xa

.field public static final MONTH_OCTOBER:I = 0x9

.field public static final MONTH_SEPTEMBER:I = 0x8

.field public static final MULTIPLICITY_DUAL:Ljava/lang/String; = "android.dual"

.field public static final MULTIPLICITY_PLURAL:Ljava/lang/String; = "android.plural"

.field public static final MULTIPLICITY_SINGLE:Ljava/lang/String; = "android.single"

.field public static final TYPE_CARDINAL:Ljava/lang/String; = "android.type.cardinal"

.field public static final TYPE_DATE:Ljava/lang/String; = "android.type.date"

.field public static final TYPE_DECIMAL:Ljava/lang/String; = "android.type.decimal"

.field public static final TYPE_DIGITS:Ljava/lang/String; = "android.type.digits"

.field public static final TYPE_ELECTRONIC:Ljava/lang/String; = "android.type.electronic"

.field public static final TYPE_FRACTION:Ljava/lang/String; = "android.type.fraction"

.field public static final TYPE_MEASURE:Ljava/lang/String; = "android.type.measure"

.field public static final TYPE_MONEY:Ljava/lang/String; = "android.type.money"

.field public static final TYPE_ORDINAL:Ljava/lang/String; = "android.type.ordinal"

.field public static final TYPE_TELEPHONE:Ljava/lang/String; = "android.type.telephone"

.field public static final TYPE_TEXT:Ljava/lang/String; = "android.type.text"

.field public static final TYPE_TIME:Ljava/lang/String; = "android.type.time"

.field public static final TYPE_VERBATIM:Ljava/lang/String; = "android.type.verbatim"

.field public static final WEEKDAY_FRIDAY:I = 0x6

.field public static final WEEKDAY_MONDAY:I = 0x2

.field public static final WEEKDAY_SATURDAY:I = 0x7

.field public static final WEEKDAY_SUNDAY:I = 0x1

.field public static final WEEKDAY_THURSDAY:I = 0x5

.field public static final WEEKDAY_TUESDAY:I = 0x3

.field public static final WEEKDAY_WEDNESDAY:I = 0x4


# instance fields
.field private final mArgs:Landroid/os/PersistableBundle;

.field private final mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1    # Landroid/os/Parcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/TtsSpan;->mType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/TtsSpan;->mArgs:Landroid/os/PersistableBundle;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/os/PersistableBundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/text/style/TtsSpan;->mType:Ljava/lang/String;

    iput-object p2, p0, Landroid/text/style/TtsSpan;->mArgs:Landroid/os/PersistableBundle;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getArgs()Landroid/os/PersistableBundle;
    .locals 1

    iget-object v0, p0, Landroid/text/style/TtsSpan;->mArgs:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public getSpanTypeId()I
    .locals 1

    const/16 v0, 0x18

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/text/style/TtsSpan;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    iget-object v0, p0, Landroid/text/style/TtsSpan;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/text/style/TtsSpan;->mArgs:Landroid/os/PersistableBundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    return-void
.end method
