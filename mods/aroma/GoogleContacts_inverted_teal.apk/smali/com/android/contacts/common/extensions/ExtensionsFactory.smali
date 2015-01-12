.class public Lcom/android/contacts/common/extensions/ExtensionsFactory;
.super Ljava/lang/Object;
.source "ExtensionsFactory.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mExtendedPhoneDirectoriesManager:Lcom/android/contacts/common/extensions/ExtendedPhoneDirectoriesManager;

.field private static sProperties:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "ExtensionsFactory"

    sput-object v0, Lcom/android/contacts/common/extensions/ExtensionsFactory;->TAG:Ljava/lang/String;

    sput-object v1, Lcom/android/contacts/common/extensions/ExtensionsFactory;->sProperties:Ljava/util/Properties;

    sput-object v1, Lcom/android/contacts/common/extensions/ExtensionsFactory;->mExtendedPhoneDirectoriesManager:Lcom/android/contacts/common/extensions/ExtendedPhoneDirectoriesManager;

    return-void
.end method

.method public static getExtendedPhoneDirectoriesManager()Lcom/android/contacts/common/extensions/ExtendedPhoneDirectoriesManager;
    .locals 1

    sget-object v0, Lcom/android/contacts/common/extensions/ExtensionsFactory;->mExtendedPhoneDirectoriesManager:Lcom/android/contacts/common/extensions/ExtendedPhoneDirectoriesManager;

    return-object v0
.end method
