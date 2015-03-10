.class public final Lcom/android/server/telecom/PhoneAccountRegistrar;
.super Ljava/lang/Object;
.source "PhoneAccountRegistrar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/PhoneAccountRegistrar$XmlSerialization;,
        Lcom/android/server/telecom/PhoneAccountRegistrar$Listener;
    }
.end annotation


# static fields
.field private static NO_ACCOUNT_SELECTED:Landroid/telecom/PhoneAccountHandle;

.field public static final sPhoneAccountHandleXml:Lcom/android/server/telecom/PhoneAccountRegistrar$XmlSerialization;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/telecom/PhoneAccountRegistrar$XmlSerialization",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation
.end field

.field public static final sPhoneAccountXml:Lcom/android/server/telecom/PhoneAccountRegistrar$XmlSerialization;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/telecom/PhoneAccountRegistrar$XmlSerialization",
            "<",
            "Landroid/telecom/PhoneAccount;",
            ">;"
        }
    .end annotation
.end field

.field private static sStateXml:Lcom/android/server/telecom/PhoneAccountRegistrar$XmlSerialization;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/telecom/PhoneAccountRegistrar$XmlSerialization",
            "<",
            "Lcom/google/common/base/Equivalences;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAtomicFile:Landroid/util/AtomicFile;

.field private final mContext:Landroid/content/Context;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/telecom/PhoneAccountRegistrar$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mState$11b67d96:Lcom/google/common/base/Equivalences;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/telecom/PhoneAccountHandle;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "null"

    const-string v3, "null"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "NO_ACCOUNT_SELECTED"

    invoke-direct {v0, v1, v2}, Landroid/telecom/PhoneAccountHandle;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/telecom/PhoneAccountRegistrar;->NO_ACCOUNT_SELECTED:Landroid/telecom/PhoneAccountHandle;

    new-instance v0, Lcom/android/server/telecom/PhoneAccountRegistrar$1;

    invoke-direct {v0}, Lcom/android/server/telecom/PhoneAccountRegistrar$1;-><init>()V

    sput-object v0, Lcom/android/server/telecom/PhoneAccountRegistrar;->sStateXml:Lcom/android/server/telecom/PhoneAccountRegistrar$XmlSerialization;

    new-instance v0, Lcom/android/server/telecom/PhoneAccountRegistrar$2;

    invoke-direct {v0}, Lcom/android/server/telecom/PhoneAccountRegistrar$2;-><init>()V

    sput-object v0, Lcom/android/server/telecom/PhoneAccountRegistrar;->sPhoneAccountXml:Lcom/android/server/telecom/PhoneAccountRegistrar$XmlSerialization;

    new-instance v0, Lcom/android/server/telecom/PhoneAccountRegistrar$3;

    invoke-direct {v0}, Lcom/android/server/telecom/PhoneAccountRegistrar$3;-><init>()V

    sput-object v0, Lcom/android/server/telecom/PhoneAccountRegistrar;->sPhoneAccountHandleXml:Lcom/android/server/telecom/PhoneAccountRegistrar$XmlSerialization;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "phone-account-registrar-state.xml"

    invoke-direct {p0, p1, v0}, Lcom/android/server/telecom/PhoneAccountRegistrar;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mListeners:Ljava/util/List;

    new-instance v0, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mAtomicFile:Landroid/util/AtomicFile;

    new-instance v0, Lcom/google/common/base/Equivalences;

    invoke-direct {v0}, Lcom/google/common/base/Equivalences;-><init>()V

    iput-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState$11b67d96:Lcom/google/common/base/Equivalences;

    iput-object p1, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mContext:Landroid/content/Context;

    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v2

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    iget-object v3, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/server/telecom/PhoneAccountRegistrar;->sStateXml:Lcom/android/server/telecom/PhoneAccountRegistrar$XmlSerialization;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v3}, Lcom/android/server/telecom/PhoneAccountRegistrar$XmlSerialization;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Equivalences;

    if-eqz v0, :cond_1

    :goto_0
    iput-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState$11b67d96:Lcom/google/common/base/Equivalences;

    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState$11b67d96:Lcom/google/common/base/Equivalences;

    iget v0, v0, Lcom/google/common/base/Equivalences;->versionNumber:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x3

    if-ge v0, v3, :cond_2

    const/4 v0, 0x1

    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->write()V

    :cond_0
    :goto_3
    return-void

    :cond_1
    :try_start_3
    new-instance v0, Lcom/google/common/base/Equivalences;

    invoke-direct {v0}, Lcom/google/common/base/Equivalences;-><init>()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_4
    :try_start_4
    const-string v3, "Reading state from XML file"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v3, v4}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/google/common/base/Equivalences;

    invoke-direct {v0}, Lcom/google/common/base/Equivalences;-><init>()V

    iput-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState$11b67d96:Lcom/google/common/base/Equivalences;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "Closing InputStream"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v3, v1}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v2, "Closing InputStream"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2, v3}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :goto_5
    throw v0

    :catch_3
    move-exception v2

    const-string v3, "Closing InputStream"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v3, v1}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_3
.end method

.method private addOrReplacePhoneAccount(Landroid/telecom/PhoneAccount;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState$11b67d96:Lcom/google/common/base/Equivalences;

    iget-object v0, v0, Lcom/google/common/base/Equivalences;->accounts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState$11b67d96:Lcom/google/common/base/Equivalences;

    iget-object v0, v0, Lcom/google/common/base/Equivalences;->accounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_0

    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState$11b67d96:Lcom/google/common/base/Equivalences;

    iget-object v0, v0, Lcom/google/common/base/Equivalences;->accounts:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccount;

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState$11b67d96:Lcom/google/common/base/Equivalences;

    iget-object v0, v0, Lcom/google/common/base/Equivalences;->accounts:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    invoke-direct {p0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->write()V

    invoke-direct {p0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->fireAccountsChanged()V

    return-void

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private fireAccountsChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getPhoneAccountHandles(ILjava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState$11b67d96:Lcom/google/common/base/Equivalences;

    iget-object v0, v0, Lcom/google/common/base/Equivalences;->accounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccount;

    invoke-virtual {v0, p1}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {v0, p2}, Landroid/telecom/PhoneAccount;->supportsUriScheme(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private write()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    new-instance v0, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v0}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-string v3, "utf-8"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState$11b67d96:Lcom/google/common/base/Equivalences;

    sget-object v3, Lcom/android/server/telecom/PhoneAccountRegistrar;->sStateXml:Lcom/android/server/telecom/PhoneAccountRegistrar$XmlSerialization;

    invoke-virtual {v3, v2, v0}, Lcom/android/server/telecom/PhoneAccountRegistrar$XmlSerialization;->writeToXml(Ljava/lang/Object;Lorg/xmlpull/v1/XmlSerializer;)V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "Writing state to XML file"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public final addListener(Lcom/android/server/telecom/PhoneAccountRegistrar$Listener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final clearAccounts(Ljava/lang/String;)V
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState$11b67d96:Lcom/google/common/base/Equivalences;

    iget-object v0, v0, Lcom/google/common/base/Equivalences;->accounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccount;

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Removing phone account "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->write()V

    invoke-direct {p0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->fireAccountsChanged()V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public final getAllPhoneAccountHandles()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState$11b67d96:Lcom/google/common/base/Equivalences;

    iget-object v0, v0, Lcom/google/common/base/Equivalences;->accounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccount;

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final getAllPhoneAccounts()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccount;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState$11b67d96:Lcom/google/common/base/Equivalences;

    iget-object v1, v1, Lcom/google/common/base/Equivalences;->accounts:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final getAllPhoneAccountsCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState$11b67d96:Lcom/google/common/base/Equivalences;

    iget-object v0, v0, Lcom/google/common/base/Equivalences;->accounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getCallCapablePhoneAccounts()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getPhoneAccountHandles(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getCallCapablePhoneAccounts(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getPhoneAccountHandles(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getConnectionManagerPhoneAccounts()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getPhoneAccountHandles(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultOutgoingPhoneAccount(Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getUserSelectedOutgoingPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/telecom/PhoneAccount;->supportsUriScheme(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getPhoneAccountHandles(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move-object v0, v1

    goto :goto_0

    :pswitch_0
    move-object v0, v1

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;
    .locals 3

    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState$11b67d96:Lcom/google/common/base/Equivalences;

    iget-object v0, v0, Lcom/google/common/base/Equivalences;->accounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccount;

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getPhoneAccountsForPackage(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState$11b67d96:Lcom/google/common/base/Equivalences;

    iget-object v0, v0, Lcom/google/common/base/Equivalences;->accounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccount;

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public final getSimCallManager()Landroid/telecom/PhoneAccountHandle;
    .locals 7

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState$11b67d96:Lcom/google/common/base/Equivalences;

    iget-object v0, v0, Lcom/google/common/base/Equivalences;->simCallManager:Landroid/telecom/PhoneAccountHandle;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/telecom/PhoneAccountRegistrar;->NO_ACCOUNT_SELECTED:Landroid/telecom/PhoneAccountHandle;

    iget-object v1, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState$11b67d96:Lcom/google/common/base/Equivalences;

    iget-object v1, v1, Lcom/google/common/base/Equivalences;->simCallManager:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v0, v1}, Landroid/telecom/PhoneAccountHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    move v1, v2

    :goto_1
    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState$11b67d96:Lcom/google/common/base/Equivalences;

    iget-object v0, v0, Lcom/google/common/base/Equivalences;->accounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState$11b67d96:Lcom/google/common/base/Equivalences;

    iget-object v0, v0, Lcom/google/common/base/Equivalences;->accounts:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccount;

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState$11b67d96:Lcom/google/common/base/Equivalences;

    iget-object v4, v4, Lcom/google/common/base/Equivalences;->simCallManager:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v0, v4}, Landroid/telecom/PhoneAccountHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState$11b67d96:Lcom/google/common/base/Equivalences;

    iget-object v0, v0, Lcom/google/common/base/Equivalences;->simCallManager:Landroid/telecom/PhoneAccountHandle;

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.telecom.ConnectionService"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getAllPhoneAccountHandles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_4
    const-string v0, "%s does not have a PhoneAccount; not using as default"

    new-array v1, v6, [Ljava/lang/Object;

    aput-object v4, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    move-object v0, v3

    goto/16 :goto_0

    :cond_5
    const-string v0, "%s could not be resolved; not using as default"

    new-array v1, v6, [Ljava/lang/Object;

    aput-object v4, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    const-string v0, "No default connection manager specified"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method final getUserSelectedOutgoingPhoneAccount()Landroid/telecom/PhoneAccountHandle;
    .locals 3

    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState$11b67d96:Lcom/google/common/base/Equivalences;

    iget-object v0, v0, Lcom/google/common/base/Equivalences;->defaultOutgoing:Landroid/telecom/PhoneAccountHandle;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState$11b67d96:Lcom/google/common/base/Equivalences;

    iget-object v0, v0, Lcom/google/common/base/Equivalences;->accounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState$11b67d96:Lcom/google/common/base/Equivalences;

    iget-object v0, v0, Lcom/google/common/base/Equivalences;->accounts:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccount;

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState$11b67d96:Lcom/google/common/base/Equivalences;

    iget-object v2, v2, Lcom/google/common/base/Equivalences;->defaultOutgoing:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v0, v2}, Landroid/telecom/PhoneAccountHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState$11b67d96:Lcom/google/common/base/Equivalences;

    iget-object v0, v0, Lcom/google/common/base/Equivalences;->defaultOutgoing:Landroid/telecom/PhoneAccountHandle;

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final phoneAccountHasPermission(Landroid/telecom/PhoneAccountHandle;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    :try_start_0
    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v3, "android.permission.BIND_CONNECTION_SERVICE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Name not found %s"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-static {p0, v3, v0}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0
.end method

.method public final registerPhoneAccount(Landroid/telecom/PhoneAccount;)V
    .locals 4

    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->phoneAccountHasPermission(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Phone account %s does not have BIND_CONNECTION_SERVICE permission."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "PhoneAccount connection service requires BIND_CONNECTION_SERVICE permission."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/telecom/PhoneAccountRegistrar;->addOrReplacePhoneAccount(Landroid/telecom/PhoneAccount;)V

    return-void
.end method

.method public final setSimCallManager(Landroid/telecom/PhoneAccountHandle;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "setSimCallManager: Nonexistent call manager: %s"

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, v2}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "setSimCallManager: Not a call manager: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/android/server/telecom/PhoneAccountRegistrar;->NO_ACCOUNT_SELECTED:Landroid/telecom/PhoneAccountHandle;

    :cond_3
    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState$11b67d96:Lcom/google/common/base/Equivalences;

    iput-object p1, v0, Lcom/google/common/base/Equivalences;->simCallManager:Landroid/telecom/PhoneAccountHandle;

    invoke-direct {p0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->write()V

    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_1
.end method

.method public final setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState$11b67d96:Lcom/google/common/base/Equivalences;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/common/base/Equivalences;->defaultOutgoing:Landroid/telecom/PhoneAccountHandle;

    :goto_0
    invoke-direct {p0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->write()V

    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState$11b67d96:Lcom/google/common/base/Equivalences;

    iget-object v0, v0, Lcom/google/common/base/Equivalences;->accounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccount;

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_2
    if-nez v0, :cond_3

    const-string v0, "Trying to set nonexistent default outgoing %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_3
    return-void

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "Trying to set non-call-provider default outgoing %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState$11b67d96:Lcom/google/common/base/Equivalences;

    iput-object p1, v0, Lcom/google/common/base/Equivalences;->defaultOutgoing:Landroid/telecom/PhoneAccountHandle;

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_2
.end method

.method public final unregisterPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState$11b67d96:Lcom/google/common/base/Equivalences;

    iget-object v0, v0, Lcom/google/common/base/Equivalences;->accounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState$11b67d96:Lcom/google/common/base/Equivalences;

    iget-object v0, v0, Lcom/google/common/base/Equivalences;->accounts:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccount;

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState$11b67d96:Lcom/google/common/base/Equivalences;

    iget-object v0, v0, Lcom/google/common/base/Equivalences;->accounts:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    invoke-direct {p0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->write()V

    invoke-direct {p0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->fireAccountsChanged()V

    return-void

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
