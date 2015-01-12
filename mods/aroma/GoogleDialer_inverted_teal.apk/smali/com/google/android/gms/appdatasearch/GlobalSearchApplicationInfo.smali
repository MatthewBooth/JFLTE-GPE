.class public Lcom/google/android/gms/appdatasearch/GlobalSearchApplicationInfo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/appdatasearch/n;


# instance fields
.field public final defaultIntentAction:Ljava/lang/String;

.field public final defaultIntentActivity:Ljava/lang/String;

.field public final defaultIntentData:Ljava/lang/String;

.field public final iconId:I

.field public final labelId:I

.field final mVersionCode:I

.field final packageName:Ljava/lang/String;

.field public final settingsDescriptionId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/appdatasearch/n;

    invoke-direct {v0}, Lcom/google/android/gms/appdatasearch/n;-><init>()V

    sput-object v0, Lcom/google/android/gms/appdatasearch/GlobalSearchApplicationInfo;->CREATOR:Lcom/google/android/gms/appdatasearch/n;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .param p4    # I
    .param p5    # I
    .param p6    # Ljava/lang/String;
    .param p7    # Ljava/lang/String;
    .param p8    # Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/appdatasearch/GlobalSearchApplicationInfo;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/appdatasearch/GlobalSearchApplicationInfo;->packageName:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/appdatasearch/GlobalSearchApplicationInfo;->labelId:I

    iput p4, p0, Lcom/google/android/gms/appdatasearch/GlobalSearchApplicationInfo;->settingsDescriptionId:I

    iput p5, p0, Lcom/google/android/gms/appdatasearch/GlobalSearchApplicationInfo;->iconId:I

    iput-object p6, p0, Lcom/google/android/gms/appdatasearch/GlobalSearchApplicationInfo;->defaultIntentAction:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/appdatasearch/GlobalSearchApplicationInfo;->defaultIntentData:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/appdatasearch/GlobalSearchApplicationInfo;->defaultIntentActivity:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/GlobalSearchApplicationInfo;->CREATOR:Lcom/google/android/gms/appdatasearch/n;

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/appdatasearch/GlobalSearchApplicationInfo;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/google/android/gms/appdatasearch/GlobalSearchApplicationInfo;

    iget-object v2, p0, Lcom/google/android/gms/appdatasearch/GlobalSearchApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/appdatasearch/GlobalSearchApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/android/gms/appdatasearch/GlobalSearchApplicationInfo;->labelId:I

    iget v3, p1, Lcom/google/android/gms/appdatasearch/GlobalSearchApplicationInfo;->labelId:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/gms/appdatasearch/GlobalSearchApplicationInfo;->settingsDescriptionId:I

    iget v3, p1, Lcom/google/android/gms/appdatasearch/GlobalSearchApplicationInfo;->settingsDescriptionId:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/gms/appdatasearch/GlobalSearchApplicationInfo;->iconId:I

    iget v3, p1, Lcom/google/android/gms/appdatasearch/GlobalSearchApplicationInfo;->iconId:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/appdatasearch/GlobalSearchApplicationInfo;->defaultIntentAction:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/appdatasearch/GlobalSearchApplicationInfo;->defaultIntentAction:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/appdatasearch/GlobalSearchApplicationInfo;->defaultIntentData:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/appdatasearch/GlobalSearchApplicationInfo;->defaultIntentData:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/appdatasearch/GlobalSearchApplicationInfo;->defaultIntentActivity:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/appdatasearch/GlobalSearchApplicationInfo;->defaultIntentActivity:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/appdatasearch/GlobalSearchApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";labelId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/appdatasearch/GlobalSearchApplicationInfo;->labelId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";settingsDescriptionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/appdatasearch/GlobalSearchApplicationInfo;->settingsDescriptionId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";iconId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/appdatasearch/GlobalSearchApplicationInfo;->iconId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";defaultIntentAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/appdatasearch/GlobalSearchApplicationInfo;->defaultIntentAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";defaultIntentData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/appdatasearch/GlobalSearchApplicationInfo;->defaultIntentData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";defaultIntentActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/appdatasearch/GlobalSearchApplicationInfo;->defaultIntentActivity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    sget-object v0, Lcom/google/android/gms/appdatasearch/GlobalSearchApplicationInfo;->CREATOR:Lcom/google/android/gms/appdatasearch/n;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/appdatasearch/n;->a(Lcom/google/android/gms/appdatasearch/GlobalSearchApplicationInfo;Landroid/os/Parcel;I)V

    return-void
.end method
