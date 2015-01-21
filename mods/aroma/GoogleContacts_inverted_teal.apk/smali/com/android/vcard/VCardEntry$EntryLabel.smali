.class public final enum Lcom/android/vcard/VCardEntry$EntryLabel;
.super Ljava/lang/Enum;
.source "VCardEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vcard/VCardEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EntryLabel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/vcard/VCardEntry$EntryLabel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/vcard/VCardEntry$EntryLabel;

.field public static final enum ANDROID_CUSTOM:Lcom/android/vcard/VCardEntry$EntryLabel;

.field public static final enum ANNIVERSARY:Lcom/android/vcard/VCardEntry$EntryLabel;

.field public static final enum BIRTHDAY:Lcom/android/vcard/VCardEntry$EntryLabel;

.field public static final enum EMAIL:Lcom/android/vcard/VCardEntry$EntryLabel;

.field public static final enum IM:Lcom/android/vcard/VCardEntry$EntryLabel;

.field public static final enum NAME:Lcom/android/vcard/VCardEntry$EntryLabel;

.field public static final enum NICKNAME:Lcom/android/vcard/VCardEntry$EntryLabel;

.field public static final enum NOTE:Lcom/android/vcard/VCardEntry$EntryLabel;

.field public static final enum ORGANIZATION:Lcom/android/vcard/VCardEntry$EntryLabel;

.field public static final enum PHONE:Lcom/android/vcard/VCardEntry$EntryLabel;

.field public static final enum PHOTO:Lcom/android/vcard/VCardEntry$EntryLabel;

.field public static final enum POSTAL_ADDRESS:Lcom/android/vcard/VCardEntry$EntryLabel;

.field public static final enum SIP:Lcom/android/vcard/VCardEntry$EntryLabel;

.field public static final enum WEBSITE:Lcom/android/vcard/VCardEntry$EntryLabel;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/vcard/VCardEntry$EntryLabel;

    const-string v1, "NAME"

    invoke-direct {v0, v1, v3}, Lcom/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->NAME:Lcom/android/vcard/VCardEntry$EntryLabel;

    new-instance v0, Lcom/android/vcard/VCardEntry$EntryLabel;

    const-string v1, "PHONE"

    invoke-direct {v0, v1, v4}, Lcom/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->PHONE:Lcom/android/vcard/VCardEntry$EntryLabel;

    new-instance v0, Lcom/android/vcard/VCardEntry$EntryLabel;

    const-string v1, "EMAIL"

    invoke-direct {v0, v1, v5}, Lcom/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->EMAIL:Lcom/android/vcard/VCardEntry$EntryLabel;

    new-instance v0, Lcom/android/vcard/VCardEntry$EntryLabel;

    const-string v1, "POSTAL_ADDRESS"

    invoke-direct {v0, v1, v6}, Lcom/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->POSTAL_ADDRESS:Lcom/android/vcard/VCardEntry$EntryLabel;

    new-instance v0, Lcom/android/vcard/VCardEntry$EntryLabel;

    const-string v1, "ORGANIZATION"

    invoke-direct {v0, v1, v7}, Lcom/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->ORGANIZATION:Lcom/android/vcard/VCardEntry$EntryLabel;

    new-instance v0, Lcom/android/vcard/VCardEntry$EntryLabel;

    const-string v1, "IM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->IM:Lcom/android/vcard/VCardEntry$EntryLabel;

    new-instance v0, Lcom/android/vcard/VCardEntry$EntryLabel;

    const-string v1, "PHOTO"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->PHOTO:Lcom/android/vcard/VCardEntry$EntryLabel;

    new-instance v0, Lcom/android/vcard/VCardEntry$EntryLabel;

    const-string v1, "WEBSITE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->WEBSITE:Lcom/android/vcard/VCardEntry$EntryLabel;

    new-instance v0, Lcom/android/vcard/VCardEntry$EntryLabel;

    const-string v1, "SIP"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->SIP:Lcom/android/vcard/VCardEntry$EntryLabel;

    new-instance v0, Lcom/android/vcard/VCardEntry$EntryLabel;

    const-string v1, "NICKNAME"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->NICKNAME:Lcom/android/vcard/VCardEntry$EntryLabel;

    new-instance v0, Lcom/android/vcard/VCardEntry$EntryLabel;

    const-string v1, "NOTE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->NOTE:Lcom/android/vcard/VCardEntry$EntryLabel;

    new-instance v0, Lcom/android/vcard/VCardEntry$EntryLabel;

    const-string v1, "BIRTHDAY"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->BIRTHDAY:Lcom/android/vcard/VCardEntry$EntryLabel;

    new-instance v0, Lcom/android/vcard/VCardEntry$EntryLabel;

    const-string v1, "ANNIVERSARY"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->ANNIVERSARY:Lcom/android/vcard/VCardEntry$EntryLabel;

    new-instance v0, Lcom/android/vcard/VCardEntry$EntryLabel;

    const-string v1, "ANDROID_CUSTOM"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->ANDROID_CUSTOM:Lcom/android/vcard/VCardEntry$EntryLabel;

    const/16 v0, 0xe

    new-array v0, v0, [Lcom/android/vcard/VCardEntry$EntryLabel;

    sget-object v1, Lcom/android/vcard/VCardEntry$EntryLabel;->NAME:Lcom/android/vcard/VCardEntry$EntryLabel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/vcard/VCardEntry$EntryLabel;->PHONE:Lcom/android/vcard/VCardEntry$EntryLabel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/vcard/VCardEntry$EntryLabel;->EMAIL:Lcom/android/vcard/VCardEntry$EntryLabel;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/vcard/VCardEntry$EntryLabel;->POSTAL_ADDRESS:Lcom/android/vcard/VCardEntry$EntryLabel;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/vcard/VCardEntry$EntryLabel;->ORGANIZATION:Lcom/android/vcard/VCardEntry$EntryLabel;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/vcard/VCardEntry$EntryLabel;->IM:Lcom/android/vcard/VCardEntry$EntryLabel;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/vcard/VCardEntry$EntryLabel;->PHOTO:Lcom/android/vcard/VCardEntry$EntryLabel;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/vcard/VCardEntry$EntryLabel;->WEBSITE:Lcom/android/vcard/VCardEntry$EntryLabel;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/vcard/VCardEntry$EntryLabel;->SIP:Lcom/android/vcard/VCardEntry$EntryLabel;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/vcard/VCardEntry$EntryLabel;->NICKNAME:Lcom/android/vcard/VCardEntry$EntryLabel;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/vcard/VCardEntry$EntryLabel;->NOTE:Lcom/android/vcard/VCardEntry$EntryLabel;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/vcard/VCardEntry$EntryLabel;->BIRTHDAY:Lcom/android/vcard/VCardEntry$EntryLabel;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/vcard/VCardEntry$EntryLabel;->ANNIVERSARY:Lcom/android/vcard/VCardEntry$EntryLabel;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/vcard/VCardEntry$EntryLabel;->ANDROID_CUSTOM:Lcom/android/vcard/VCardEntry$EntryLabel;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->$VALUES:[Lcom/android/vcard/VCardEntry$EntryLabel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/vcard/VCardEntry$EntryLabel;
    .locals 1
    .param p0    # Ljava/lang/String;

    const-class v0, Lcom/android/vcard/VCardEntry$EntryLabel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public static values()[Lcom/android/vcard/VCardEntry$EntryLabel;
    .locals 1

    sget-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->$VALUES:[Lcom/android/vcard/VCardEntry$EntryLabel;

    invoke-virtual {v0}, [Lcom/android/vcard/VCardEntry$EntryLabel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method
