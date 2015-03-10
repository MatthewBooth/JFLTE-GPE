.class Lcom/android/phone/IINList$1;
.super Ljava/lang/Object;
.source "IINList.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IINList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/phone/IINList$IINInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/IINList;


# direct methods
.method constructor <init>(Lcom/android/phone/IINList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/IINList$1;->this$0:Lcom/android/phone/IINList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/phone/IINList$IINInfo;Lcom/android/phone/IINList$IINInfo;)I
    .locals 2
    .param p1    # Lcom/android/phone/IINList$IINInfo;
    .param p2    # Lcom/android/phone/IINList$IINInfo;

    iget v0, p2, Lcom/android/phone/IINList$IINInfo;->priority:I

    iget v1, p1, Lcom/android/phone/IINList$IINInfo;->priority:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
    .param p2    # Ljava/lang/Object;

    check-cast p1, Lcom/android/phone/IINList$IINInfo;

    check-cast p2, Lcom/android/phone/IINList$IINInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/phone/IINList$1;->compare(Lcom/android/phone/IINList$IINInfo;Lcom/android/phone/IINList$IINInfo;)I

    move-result v0

    return v0
.end method
