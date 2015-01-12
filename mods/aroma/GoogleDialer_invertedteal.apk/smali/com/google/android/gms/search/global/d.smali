.class public Lcom/google/android/gms/search/global/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$GlobalSearchSource;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$GlobalSearchSource;Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->br(Landroid/os/Parcel;)I

    move-result v0

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$GlobalSearchSource;->mVersionCode:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$GlobalSearchSource;->packageName:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$GlobalSearchSource;->labelId:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$GlobalSearchSource;->settingsDescriptionId:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$GlobalSearchSource;->iconId:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$GlobalSearchSource;->defaultIntentAction:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$GlobalSearchSource;->defaultIntentData:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$GlobalSearchSource;->defaultIntentActivity:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$GlobalSearchSource;->corpora:[Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$CorpusInfo;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    const/16 v1, 0x9

    iget-boolean v2, p0, Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$GlobalSearchSource;->enabled:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->J(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1    # Landroid/os/Parcel;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/search/global/d;->gz(Landroid/os/Parcel;)Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$GlobalSearchSource;

    move-result-object v0

    return-object v0
.end method

.method public gz(Landroid/os/Parcel;)Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$GlobalSearchSource;
    .locals 13

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->bq(Landroid/os/Parcel;)I

    move-result v11

    move-object v8, v9

    move-object v7, v9

    move-object v6, v9

    move v5, v10

    move v4, v10

    move v3, v10

    move-object v2, v9

    move v1, v10

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, v11, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->bp(Landroid/os/Parcel;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->cr(I)I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    :sswitch_0
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v1

    goto :goto_0

    :sswitch_1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->p(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :sswitch_2
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_0

    :sswitch_3
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v4

    goto :goto_0

    :sswitch_4
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_0

    :sswitch_5
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->p(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :sswitch_6
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->p(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :sswitch_7
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->p(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :sswitch_8
    sget-object v9, Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$CorpusInfo;->CREATOR:Lcom/google/android/gms/search/global/c;

    invoke-static {p1, v0, v9}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$CorpusInfo;

    move-object v9, v0

    goto :goto_0

    :sswitch_9
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v10

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-eq v0, v11, :cond_1

    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Overread allowed size end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$GlobalSearchSource;

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$GlobalSearchSource;-><init>(ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$CorpusInfo;Z)V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method

.method public iK(I)[Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$GlobalSearchSource;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$GlobalSearchSource;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/google/android/gms/search/global/d;->iK(I)[Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$GlobalSearchSource;

    move-result-object v0

    return-object v0
.end method
