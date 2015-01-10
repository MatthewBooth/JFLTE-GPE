.class public Lcom/android/systemui/statusbar/policy/BluetoothUtil;
.super Ljava/lang/Object;
.source "BluetoothUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/BluetoothUtil$Profile;
    }
.end annotation


# direct methods
.method public static connectionStateToString(I)Ljava/lang/String;
    .locals 1
    .param p0    # I

    if-nez p0, :cond_0

    const-string v0, "STATE_DISCONNECTED"

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string v0, "STATE_CONNECTED"

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const-string v0, "STATE_DISCONNECTING"

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    if-ne p0, v0, :cond_3

    const-string v0, "STATE_CONNECTING"

    goto :goto_0

    :cond_3
    const-string v0, "ERROR"

    goto :goto_0
.end method

.method public static deviceToString(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 2
    .param p0    # Landroid/bluetooth/BluetoothDevice;

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getProfile(Landroid/bluetooth/BluetoothProfile;)Lcom/android/systemui/statusbar/policy/BluetoothUtil$Profile;
    .locals 1
    .param p0    # Landroid/bluetooth/BluetoothProfile;

    instance-of v0, p0, Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/bluetooth/BluetoothA2dp;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->newProfile(Landroid/bluetooth/BluetoothA2dp;)Lcom/android/systemui/statusbar/policy/BluetoothUtil$Profile;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p0, Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/bluetooth/BluetoothHeadset;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->newProfile(Landroid/bluetooth/BluetoothHeadset;)Lcom/android/systemui/statusbar/policy/BluetoothUtil$Profile;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v0, p0, Landroid/bluetooth/BluetoothInputDevice;

    if-eqz v0, :cond_2

    check-cast p0, Landroid/bluetooth/BluetoothInputDevice;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->newProfile(Landroid/bluetooth/BluetoothInputDevice;)Lcom/android/systemui/statusbar/policy/BluetoothUtil$Profile;

    move-result-object v0

    goto :goto_0

    :cond_2
    instance-of v0, p0, Landroid/bluetooth/BluetoothMap;

    if-eqz v0, :cond_3

    check-cast p0, Landroid/bluetooth/BluetoothMap;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->newProfile(Landroid/bluetooth/BluetoothMap;)Lcom/android/systemui/statusbar/policy/BluetoothUtil$Profile;

    move-result-object v0

    goto :goto_0

    :cond_3
    instance-of v0, p0, Landroid/bluetooth/BluetoothPan;

    if-eqz v0, :cond_4

    check-cast p0, Landroid/bluetooth/BluetoothPan;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->newProfile(Landroid/bluetooth/BluetoothPan;)Lcom/android/systemui/statusbar/policy/BluetoothUtil$Profile;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static newProfile(Landroid/bluetooth/BluetoothA2dp;)Lcom/android/systemui/statusbar/policy/BluetoothUtil$Profile;
    .locals 1
    .param p0    # Landroid/bluetooth/BluetoothA2dp;

    new-instance v0, Lcom/android/systemui/statusbar/policy/BluetoothUtil$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/BluetoothUtil$1;-><init>(Landroid/bluetooth/BluetoothA2dp;)V

    return-object v0
.end method

.method private static newProfile(Landroid/bluetooth/BluetoothHeadset;)Lcom/android/systemui/statusbar/policy/BluetoothUtil$Profile;
    .locals 1
    .param p0    # Landroid/bluetooth/BluetoothHeadset;

    new-instance v0, Lcom/android/systemui/statusbar/policy/BluetoothUtil$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/BluetoothUtil$2;-><init>(Landroid/bluetooth/BluetoothHeadset;)V

    return-object v0
.end method

.method private static newProfile(Landroid/bluetooth/BluetoothInputDevice;)Lcom/android/systemui/statusbar/policy/BluetoothUtil$Profile;
    .locals 1
    .param p0    # Landroid/bluetooth/BluetoothInputDevice;

    new-instance v0, Lcom/android/systemui/statusbar/policy/BluetoothUtil$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/BluetoothUtil$3;-><init>(Landroid/bluetooth/BluetoothInputDevice;)V

    return-object v0
.end method

.method private static newProfile(Landroid/bluetooth/BluetoothMap;)Lcom/android/systemui/statusbar/policy/BluetoothUtil$Profile;
    .locals 1
    .param p0    # Landroid/bluetooth/BluetoothMap;

    new-instance v0, Lcom/android/systemui/statusbar/policy/BluetoothUtil$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/BluetoothUtil$4;-><init>(Landroid/bluetooth/BluetoothMap;)V

    return-object v0
.end method

.method private static newProfile(Landroid/bluetooth/BluetoothPan;)Lcom/android/systemui/statusbar/policy/BluetoothUtil$Profile;
    .locals 1
    .param p0    # Landroid/bluetooth/BluetoothPan;

    new-instance v0, Lcom/android/systemui/statusbar/policy/BluetoothUtil$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/BluetoothUtil$5;-><init>(Landroid/bluetooth/BluetoothPan;)V

    return-object v0
.end method

.method public static profileStateToString(I)Ljava/lang/String;
    .locals 1
    .param p0    # I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const-string v0, "STATE_CONNECTED"

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string v0, "STATE_CONNECTING"

    goto :goto_0

    :cond_1
    if-nez p0, :cond_2

    const-string v0, "STATE_DISCONNECTED"

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    const-string v0, "STATE_DISCONNECTING"

    goto :goto_0

    :cond_3
    const-string v0, "STATE_UNKNOWN"

    goto :goto_0
.end method

.method public static profileToString(I)Ljava/lang/String;
    .locals 1
    .param p0    # I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string v0, "HEADSET"

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string v0, "A2DP"

    goto :goto_0

    :cond_1
    const-string v0, "UNKNOWN"

    goto :goto_0
.end method

.method public static uuidToProfile(Landroid/os/ParcelUuid;)I
    .locals 4
    .param p0    # Landroid/os/ParcelUuid;

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/16 v2, 0x9

    sget-object v3, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    invoke-virtual {v3, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v3, Landroid/bluetooth/BluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    invoke-virtual {v3, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->MAP:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->MNS:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_0

    :cond_5
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->MAS:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static uuidToString(Landroid/os/ParcelUuid;)Ljava/lang/String;
    .locals 1
    .param p0    # Landroid/os/ParcelUuid;

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AudioSink"

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "AudioSource"

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "AdvAudioDist"

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "HSP"

    goto :goto_0

    :cond_3
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "HSP_AG"

    goto :goto_0

    :cond_4
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "Handsfree"

    goto :goto_0

    :cond_5
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "Handsfree_AG"

    goto :goto_0

    :cond_6
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AvrcpController:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "AvrcpController"

    goto :goto_0

    :cond_7
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AvrcpTarget:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "AvrcpTarget"

    goto :goto_0

    :cond_8
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "ObexObjectPush"

    goto :goto_0

    :cond_9
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Hid:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "Hid"

    goto :goto_0

    :cond_a
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Hogp:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "Hogp"

    goto :goto_0

    :cond_b
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->PANU:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "PANU"

    goto/16 :goto_0

    :cond_c
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->NAP:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "NAP"

    goto/16 :goto_0

    :cond_d
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->BNEP:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "BNEP"

    goto/16 :goto_0

    :cond_e
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->PBAP_PSE:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "PBAP_PSE"

    goto/16 :goto_0

    :cond_f
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->MAP:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "MAP"

    goto/16 :goto_0

    :cond_10
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->MNS:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "MNS"

    goto/16 :goto_0

    :cond_11
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->MAS:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "MAS"

    goto/16 :goto_0

    :cond_12
    if-eqz p0, :cond_13

    invoke-virtual {p0}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_13
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public static uuidsToString(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 4
    .param p0    # Landroid/bluetooth/BluetoothDevice;

    const/4 v3, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v3, v1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-object v3, v1, v0

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->uuidToString(Landroid/os/ParcelUuid;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const-string v3, ","

    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
