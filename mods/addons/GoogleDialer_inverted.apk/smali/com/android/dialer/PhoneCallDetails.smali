.class public Lcom/android/dialer/PhoneCallDetails;
.super Ljava/lang/Object;
.source "PhoneCallDetails.java"


# instance fields
.field public final accountIcon:Landroid/graphics/drawable/Drawable;

.field public final accountLabel:Ljava/lang/String;

.field public final callTypes:[I

.field public final contactUri:Landroid/net/Uri;

.field public final countryIso:Ljava/lang/String;

.field public final dataUsage:Ljava/lang/Long;

.field public final date:J

.field public final duration:J

.field public final features:I

.field public final formattedNumber:Ljava/lang/CharSequence;

.field public final geocode:Ljava/lang/String;

.field public final name:Ljava/lang/CharSequence;

.field public final number:Ljava/lang/CharSequence;

.field public final numberLabel:Ljava/lang/CharSequence;

.field public final numberPresentation:I

.field public final numberType:I

.field public final photoUri:Landroid/net/Uri;

.field public final sourceType:I

.field public final transcription:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJ)V
    .locals 23
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # Ljava/lang/CharSequence;
    .param p4    # Ljava/lang/String;
    .param p5    # Ljava/lang/String;
    .param p6    # [I
    .param p7    # J
    .param p9    # J

    const-string v12, ""

    const/4 v13, 0x0

    const-string v14, ""

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-direct/range {v1 .. v22}, Lcom/android/dialer/PhoneCallDetails;-><init>(Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJLjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;Landroid/graphics/drawable/Drawable;ILjava/lang/Long;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJLjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;Landroid/graphics/drawable/Drawable;ILjava/lang/Long;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # Ljava/lang/CharSequence;
    .param p4    # Ljava/lang/String;
    .param p5    # Ljava/lang/String;
    .param p6    # [I
    .param p7    # J
    .param p9    # J
    .param p11    # Ljava/lang/CharSequence;
    .param p12    # I
    .param p13    # Ljava/lang/CharSequence;
    .param p14    # Landroid/net/Uri;
    .param p15    # Landroid/net/Uri;
    .param p16    # I
    .param p17    # Ljava/lang/String;
    .param p18    # Landroid/graphics/drawable/Drawable;
    .param p19    # I
    .param p20    # Ljava/lang/Long;
    .param p21    # Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    iput p2, p0, Lcom/android/dialer/PhoneCallDetails;->numberPresentation:I

    iput-object p3, p0, Lcom/android/dialer/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/android/dialer/PhoneCallDetails;->countryIso:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/dialer/PhoneCallDetails;->geocode:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/dialer/PhoneCallDetails;->callTypes:[I

    iput-wide p7, p0, Lcom/android/dialer/PhoneCallDetails;->date:J

    iput-wide p9, p0, Lcom/android/dialer/PhoneCallDetails;->duration:J

    iput-object p11, p0, Lcom/android/dialer/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    iput p12, p0, Lcom/android/dialer/PhoneCallDetails;->numberType:I

    iput-object p13, p0, Lcom/android/dialer/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    iput-object p14, p0, Lcom/android/dialer/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/dialer/PhoneCallDetails;->photoUri:Landroid/net/Uri;

    move/from16 v0, p16

    iput v0, p0, Lcom/android/dialer/PhoneCallDetails;->sourceType:I

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/dialer/PhoneCallDetails;->accountLabel:Ljava/lang/String;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/android/dialer/PhoneCallDetails;->accountIcon:Landroid/graphics/drawable/Drawable;

    move/from16 v0, p19

    iput v0, p0, Lcom/android/dialer/PhoneCallDetails;->features:I

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/android/dialer/PhoneCallDetails;->dataUsage:Ljava/lang/Long;

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/android/dialer/PhoneCallDetails;->transcription:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJLjava/lang/String;Landroid/graphics/drawable/Drawable;ILjava/lang/Long;Ljava/lang/String;)V
    .locals 23
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # Ljava/lang/CharSequence;
    .param p4    # Ljava/lang/String;
    .param p5    # Ljava/lang/String;
    .param p6    # [I
    .param p7    # J
    .param p9    # J
    .param p11    # Ljava/lang/String;
    .param p12    # Landroid/graphics/drawable/Drawable;
    .param p13    # I
    .param p14    # Ljava/lang/Long;
    .param p15    # Ljava/lang/String;

    const-string v12, ""

    const/4 v13, 0x0

    const-string v14, ""

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-object/from16 v18, p11

    move-object/from16 v19, p12

    move/from16 v20, p13

    move-object/from16 v21, p14

    move-object/from16 v22, p15

    invoke-direct/range {v1 .. v22}, Lcom/android/dialer/PhoneCallDetails;-><init>(Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJLjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;Landroid/graphics/drawable/Drawable;ILjava/lang/Long;Ljava/lang/String;)V

    return-void
.end method
