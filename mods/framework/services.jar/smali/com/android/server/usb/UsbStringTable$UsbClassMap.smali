.class Lcom/android/server/usb/UsbStringTable$UsbClassMap;
.super Ljava/lang/Object;
.source "UsbStringTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbStringTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsbClassMap"
.end annotation


# instance fields
.field private final clasz:I

.field private onlyclasz:Z

.field private final protocol:I

.field private final subclass:I

.field private final szsubtext:Ljava/lang/String;

.field private final sztext:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/usb/UsbStringTable;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbStringTable;III)V
    .locals 2
    .param p2    # I
    .param p3    # I
    .param p4    # I

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->this$0:Lcom/android/server/usb/UsbStringTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->onlyclasz:Z

    iput p2, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->clasz:I

    iput p3, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->subclass:I

    iput p4, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->protocol:I

    iput-object v1, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->sztext:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->szsubtext:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;)V
    .locals 1
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->this$0:Lcom/android/server/usb/UsbStringTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->onlyclasz:Z

    iput p2, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->clasz:I

    iput p3, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->subclass:I

    iput p4, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->protocol:I

    iput-object p5, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->sztext:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->szsubtext:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # Ljava/lang/String;
    .param p6    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->this$0:Lcom/android/server/usb/UsbStringTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->onlyclasz:Z

    iput p2, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->clasz:I

    iput p3, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->subclass:I

    iput p4, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->protocol:I

    iput-object p5, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->sztext:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->szsubtext:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/usb/UsbStringTable;ILjava/lang/String;)V
    .locals 2
    .param p2    # I
    .param p3    # Ljava/lang/String;

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->this$0:Lcom/android/server/usb/UsbStringTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->onlyclasz:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->onlyclasz:Z

    iput p2, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->clasz:I

    iput v1, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->subclass:I

    iput v1, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->protocol:I

    iput-object p3, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->sztext:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->szsubtext:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(III)Z
    .locals 3
    .param p1    # I
    .param p2    # I
    .param p3    # I

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->onlyclasz:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->clasz:I

    if-ne v2, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->clasz:I

    if-ne v2, p1, :cond_3

    iget v2, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->subclass:I

    if-ne v2, p2, :cond_3

    iget v2, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->protocol:I

    if-eq v2, p3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    instance-of v3, p1, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    if-eqz v3, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    iget-boolean v3, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->onlyclasz:Z

    if-eqz v3, :cond_2

    iget v3, v0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->clasz:I

    iget v4, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->clasz:I

    if-ne v3, v4, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    iget v3, v0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->clasz:I

    iget v4, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->clasz:I

    if-ne v3, v4, :cond_3

    iget v3, v0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->subclass:I

    iget v4, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->subclass:I

    if-ne v3, v4, :cond_3

    iget v3, v0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->protocol:I

    iget v4, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->protocol:I

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->clasz:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->subclass:I

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->protocol:I

    or-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->sztext:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->szsubtext:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->szsubtext:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
