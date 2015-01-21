.class public Lcom/google/android/dialer/provider/DialerProvider;
.super Landroid/content/ContentProvider;
.source "DialerProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/dialer/provider/DialerProvider$DialerLocationListener;,
        Lcom/google/android/dialer/provider/DialerProvider$FutureCallable;
    }
.end annotation


# static fields
.field public static final AUTHORITY_URI:Landroid/net/Uri;

.field public static final CHARSET_PREFIX_LEN:I

.field public static final NEARBY_PLACES_URI:Landroid/net/Uri;

.field private static final mLooper:Landroid/os/Looper;

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private final mActiveTasks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/util/concurrent/FutureTask;",
            ">;"
        }
    .end annotation
.end field

.field private mUserAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "content://com.google.android.dialer.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/dialer/provider/DialerProvider;->AUTHORITY_URI:Landroid/net/Uri;

    sget-object v0, Lcom/google/android/dialer/provider/DialerProvider;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "nearbyPlaces"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/dialer/provider/DialerProvider;->NEARBY_PLACES_URI:Landroid/net/Uri;

    const-string v0, "charset="

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/google/android/dialer/provider/DialerProvider;->CHARSET_PREFIX_LEN:I

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/google/android/dialer/provider/DialerProvider;->sURIMatcher:Landroid/content/UriMatcher;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    sput-object v0, Lcom/google/android/dialer/provider/DialerProvider;->mLooper:Landroid/os/Looper;

    sget-object v0, Lcom/google/android/dialer/provider/DialerProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.dialer.provider"

    const-string v2, "nearbyPlaces/*"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/dialer/provider/DialerProvider;->mActiveTasks:Ljava/util/LinkedList;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/dialer/provider/DialerProvider;[Ljava/lang/String;Ljava/lang/String;ILandroid/location/Location;)Landroid/database/Cursor;
    .locals 1
    .param p0    # Lcom/google/android/dialer/provider/DialerProvider;
    .param p1    # [Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .param p4    # Landroid/location/Location;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/dialer/provider/DialerProvider;->handleFilter([Ljava/lang/String;Ljava/lang/String;ILandroid/location/Location;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/dialer/provider/DialerProvider;)Ljava/util/LinkedList;
    .locals 1
    .param p0    # Lcom/google/android/dialer/provider/DialerProvider;

    iget-object v0, p0, Lcom/google/android/dialer/provider/DialerProvider;->mActiveTasks:Ljava/util/LinkedList;

    return-object v0
.end method

.method private buildResultCursor([Ljava/lang/String;Lorg/json/JSONArray;I)Landroid/database/Cursor;
    .locals 44
    .param p1    # [Ljava/lang/String;
    .param p2    # Lorg/json/JSONArray;
    .param p3    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v12, -0x1

    const/16 v23, -0x1

    const/16 v25, -0x1

    const/16 v26, -0x1

    const/16 v16, -0x1

    const/16 v19, -0x1

    const/4 v6, -0x1

    const/16 v27, -0x1

    const/16 v28, -0x1

    const/16 v21, -0x1

    const/16 v17, 0x0

    :goto_0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v37, v0

    move/from16 v0, v17

    move/from16 v1, v37

    if-ge v0, v1, :cond_b

    aget-object v5, p1, v17

    const-string v37, "display_name"

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_0

    const-string v37, "display_name"

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_2

    :cond_0
    move/from16 v12, v17

    :cond_1
    :goto_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    :cond_2
    const-string v37, "data3"

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_3

    move/from16 v23, v17

    goto :goto_1

    :cond_3
    const-string v37, "has_phone_number"

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_4

    move/from16 v16, v17

    goto :goto_1

    :cond_4
    const-string v37, "_id"

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_5

    move/from16 v19, v17

    goto :goto_1

    :cond_5
    const-string v37, "contact_id"

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_6

    move/from16 v6, v17

    goto :goto_1

    :cond_6
    const-string v37, "data1"

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_7

    move/from16 v25, v17

    goto :goto_1

    :cond_7
    const-string v37, "data2"

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_8

    move/from16 v26, v17

    goto :goto_1

    :cond_8
    const-string v37, "photo_uri"

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_9

    move/from16 v27, v17

    goto :goto_1

    :cond_9
    const-string v37, "photo_thumb_uri"

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_a

    move/from16 v28, v17

    goto :goto_1

    :cond_a
    const-string v37, "lookup"

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_1

    move/from16 v21, v17

    goto :goto_1

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/dialer/provider/DialerProvider;->getContext()Landroid/content/Context;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v37, "dialer_debug_display_nearby_place_distance"

    const/16 v38, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v38

    invoke-static {v8, v0, v1}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v10

    const-string v37, "dialer_enable_nearby_places_export"

    const/16 v38, 0x1

    move-object/from16 v0, v37

    move/from16 v1, v38

    invoke-static {v8, v0, v1}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v37

    if-eqz v37, :cond_d

    const/4 v15, 0x2

    :goto_2
    new-instance v9, Landroid/database/MatrixCursor;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v37, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v34

    const/16 v18, 0x1

    const/16 v17, 0x0

    :goto_3
    invoke-virtual/range {v34 .. v34}, Lorg/json/JSONArray;->length()I

    move-result v37

    move/from16 v0, v17

    move/from16 v1, v37

    if-ge v0, v1, :cond_1a

    :try_start_0
    move-object/from16 v0, v34

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v33

    const/16 v37, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/google/android/dialer/provider/DialerProvider;->decodeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/16 v37, 0x3

    move-object/from16 v0, v33

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v22

    const-string v37, "b"

    move-object/from16 v0, v22

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/google/android/dialer/provider/DialerProvider;->decodeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v37, "g"

    move-object/from16 v0, v22

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/google/android/dialer/provider/DialerProvider;->decodeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v37, "f"

    const/16 v38, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const-string v37, "d"

    const/16 v38, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    if-eqz v10, :cond_c

    const-string v37, "c"

    const/16 v38, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_c

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " ["

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " miles]"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :cond_c
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->isEmpty()Z

    move-result v37

    if-eqz v37, :cond_e

    :goto_4
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_3

    :cond_d
    const/4 v15, 0x0

    goto/16 :goto_2

    :cond_e
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v37, v0

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    if-ltz v12, :cond_f

    aput-object v11, v35, v12

    :cond_f
    if-ltz v23, :cond_10

    aput-object v4, v35, v23

    :cond_10
    if-ltz v16, :cond_11

    const/16 v37, 0x1

    invoke-static/range {v37 .. v37}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v37

    aput-object v37, v35, v16

    :cond_11
    const/16 v37, -0x1

    move/from16 v0, v37

    if-eq v6, v0, :cond_12

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    aput-object v37, v35, v6

    :cond_12
    if-ltz v25, :cond_13

    aput-object v24, v35, v25

    :cond_13
    if-ltz v26, :cond_14

    const/16 v37, 0xc

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    aput-object v37, v35, v26

    :cond_14
    if-nez v30, :cond_1b

    new-instance v32, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    const/16 v37, 0x0

    const/16 v38, 0x2

    const/16 v39, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, v37

    move/from16 v2, v38

    move/from16 v3, v39

    invoke-direct {v0, v11, v1, v2, v3}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-static/range {v32 .. v32}, Lcom/android/contacts/common/ContactPhotoManager;->getDefaultAvatarUriForContact(Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)Landroid/net/Uri;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v30

    :goto_5
    move-object/from16 v29, v30

    if-ltz v27, :cond_15

    aput-object v30, v35, v27

    :cond_15
    if-ltz v28, :cond_16

    aput-object v29, v35, v28

    :cond_16
    if-ltz v21, :cond_18

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ", "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    new-instance v37, Lorg/json/JSONObject;

    invoke-direct/range {v37 .. v37}, Lorg/json/JSONObject;-><init>()V

    const-string v38, "vnd.android.cursor.item/name"

    new-instance v39, Lorg/json/JSONObject;

    invoke-direct/range {v39 .. v39}, Lorg/json/JSONObject;-><init>()V

    const-string v40, "data1"

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-virtual {v0, v1, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v37

    const-string v38, "vnd.android.cursor.item/phone_v2"

    const/16 v39, 0x1

    move/from16 v0, v39

    new-array v0, v0, [Lorg/json/JSONObject;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    new-instance v41, Lorg/json/JSONObject;

    invoke-direct/range {v41 .. v41}, Lorg/json/JSONObject;-><init>()V

    const-string v42, "data1"

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v41

    const-string v42, "data2"

    const/16 v43, 0xc

    invoke-virtual/range {v41 .. v43}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v41

    aput-object v41, v39, v40

    invoke-static/range {v39 .. v39}, Lcom/google/android/dialer/util/JsonUtil;->newJsonArray([Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v37

    const-string v38, "vnd.android.cursor.item/postal-address_v2"

    const/16 v39, 0x1

    move/from16 v0, v39

    new-array v0, v0, [Lorg/json/JSONObject;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    new-instance v41, Lorg/json/JSONObject;

    invoke-direct/range {v41 .. v41}, Lorg/json/JSONObject;-><init>()V

    const-string v42, "data1"

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v41

    const-string v42, "data2"

    const/16 v43, 0x2

    invoke-virtual/range {v41 .. v43}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v41

    aput-object v41, v39, v40

    invoke-static/range {v39 .. v39}, Lcom/google/android/dialer/util/JsonUtil;->newJsonArray([Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v31, :cond_17

    const-string v37, "vnd.android.cursor.item/website"

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [Lorg/json/JSONObject;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    new-instance v40, Lorg/json/JSONObject;

    invoke-direct/range {v40 .. v40}, Lorg/json/JSONObject;-><init>()V

    const-string v41, "data1"

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v40

    const-string v41, "data2"

    const/16 v42, 0x3

    invoke-virtual/range {v40 .. v42}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v40

    aput-object v40, v38, v39

    invoke-static/range {v38 .. v38}, Lcom/google/android/dialer/util/JsonUtil;->newJsonArray([Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v38

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_17
    new-instance v37, Lorg/json/JSONObject;

    invoke-direct/range {v37 .. v37}, Lorg/json/JSONObject;-><init>()V

    const-string v38, "display_name"

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v37

    const-string v38, "display_name_source"

    const/16 v39, 0x1e

    invoke-virtual/range {v37 .. v39}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v37

    const-string v38, "exportSupport"

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v37

    const-string v38, "photo_uri"

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v37

    const-string v38, "vnd.android.cursor.item/contact"

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v35, v21

    :cond_18
    const/16 v37, -0x1

    move/from16 v0, v19

    move/from16 v1, v37

    if-eq v0, v1, :cond_19

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    aput-object v37, v35, v19

    :cond_19
    move-object/from16 v0, v35

    invoke-virtual {v9, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const/16 v37, -0x1

    move/from16 v0, p3

    move/from16 v1, v37

    if-eq v0, v1, :cond_1c

    invoke-virtual {v9}, Landroid/database/MatrixCursor;->getCount()I

    move-result v37

    move/from16 v0, v37

    move/from16 v1, p3

    if-lt v0, v1, :cond_1c

    :cond_1a
    return-object v9

    :cond_1b
    invoke-static/range {v30 .. v30}, Lcom/android/contacts/common/ContactPhotoManager;->appendBusinessContactType(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v30

    goto/16 :goto_5

    :cond_1c
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_4

    :catch_0
    move-exception v14

    const-string v37, "DialerProvider"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Skipped the suggestions at position "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-static {v0, v1, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4
.end method

.method private decodeHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private execute(Ljava/util/concurrent/Callable;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 9
    .param p2    # Ljava/lang/String;
    .param p3    # J
    .param p5    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    new-instance v2, Lcom/google/android/dialer/provider/DialerProvider$FutureCallable;

    invoke-direct {v2, p0, p1}, Lcom/google/android/dialer/provider/DialerProvider$FutureCallable;-><init>(Lcom/google/android/dialer/provider/DialerProvider;Ljava/util/concurrent/Callable;)V

    new-instance v1, Ljava/util/concurrent/FutureTask;

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-virtual {v2, v1}, Lcom/google/android/dialer/provider/DialerProvider$FutureCallable;->setFuture(Ljava/util/concurrent/FutureTask;)V

    iget-object v6, p0, Lcom/google/android/dialer/provider/DialerProvider;->mActiveTasks:Ljava/util/LinkedList;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/google/android/dialer/provider/DialerProvider;->mActiveTasks:Ljava/util/LinkedList;

    invoke-virtual {v5, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    const-string v5, "DialerProvider"

    const/4 v7, 0x2

    invoke-static {v5, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "DialerProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Currently running tasks: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/dialer/provider/DialerProvider;->mActiveTasks:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/google/android/dialer/provider/DialerProvider;->mActiveTasks:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    const/16 v7, 0x8

    if-le v5, v7, :cond_1

    const-string v5, "DialerProvider"

    const-string v7, "Too many tasks, canceling one"

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/google/android/dialer/provider/DialerProvider;->mActiveTasks:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/FutureTask;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_1
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v5, "DialerProvider"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "DialerProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Starting task "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v4, Ljava/lang/Thread;

    invoke-direct {v4, v1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    :try_start_2
    const-string v5, "DialerProvider"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "DialerProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Getting future "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v1, p3, p4, p5}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v5

    :goto_1
    return-object v5

    :catch_0
    move-exception v0

    const-string v5, "DialerProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Task was interrupted: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    :goto_2
    const/4 v5, 0x0

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v5, "DialerProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Task threw an exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v5, "DialerProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Task timed out: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    goto :goto_2

    :catch_3
    move-exception v0

    const-string v5, "DialerProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Task was cancelled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private executeHttpRequest(Landroid/net/Uri;)Ljava/lang/String;
    .locals 11
    .param p1    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v8, "DialerProvider"

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "DialerProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "executeHttpRequest("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v8, Ljava/net/URL;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    const-string v8, "User-Agent"

    iget-object v9, p0, Lcom/google/android/dialer/provider/DialerProvider;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/dialer/provider/DialerProvider;->getCharsetFromContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v8, 0x3e8

    :try_start_1
    new-array v0, v8, [B

    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-gtz v6, :cond_1

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    :try_start_2
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    return-object v8

    :catch_0
    move-exception v4

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v4

    :cond_1
    const/4 v8, 0x0

    :try_start_3
    invoke-virtual {v7, v0, v8, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v8

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    throw v8

    :catch_1
    move-exception v4

    const-string v8, "DialerProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid charset: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_1
.end method

.method private static getCharsetFromContentType(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0    # Ljava/lang/String;

    const-string v6, ";"

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "charset="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget v6, Lcom/google/android/dialer/provider/DialerProvider;->CHARSET_PREFIX_LEN:I

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    :goto_1
    return-object v6

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v6, "UTF-8"

    goto :goto_1
.end method

.method private getLastLocation()Landroid/location/Location;
    .locals 12

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/google/android/dialer/provider/DialerProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "location"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationManager;

    :try_start_0
    new-instance v7, Landroid/location/Criteria;

    invoke-direct {v7}, Landroid/location/Criteria;-><init>()V

    new-instance v8, Lcom/google/android/dialer/provider/DialerProvider$DialerLocationListener;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/google/android/dialer/provider/DialerProvider$DialerLocationListener;-><init>(Lcom/google/android/dialer/provider/DialerProvider;Lcom/google/android/dialer/provider/DialerProvider$1;)V

    sget-object v9, Lcom/google/android/dialer/provider/DialerProvider;->mLooper:Landroid/os/Looper;

    invoke-virtual {v3, v7, v8, v9}, Landroid/location/LocationManager;->requestSingleUpdate(Landroid/location/Criteria;Landroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-object v6

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz v6, :cond_3

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    invoke-virtual {v6}, Landroid/location/Location;->getTime()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-lez v7, :cond_2

    :cond_3
    move-object v6, v0

    goto :goto_1
.end method

.method private getRandomInteger(I)I
    .locals 4
    .param p1    # I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    int-to-double v2, p1

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private getRandomNoiseString()Ljava/lang/String;
    .locals 8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x20

    invoke-direct {p0, v4}, Lcom/google/android/dialer/provider/DialerProvider;->getRandomInteger(I)I

    move-result v4

    add-int/lit8 v3, v4, 0x4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x3fd3333333333333L

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    const/16 v4, 0xa

    invoke-direct {p0, v4}, Lcom/google/android/dialer/provider/DialerProvider;->getRandomInteger(I)I

    move-result v4

    add-int/lit8 v0, v4, 0x30

    :goto_1
    int-to-char v4, v0

    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x3fe0000000000000L

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    const/16 v4, 0x41

    :goto_2
    const/16 v5, 0x1a

    invoke-direct {p0, v5}, Lcom/google/android/dialer/provider/DialerProvider;->getRandomInteger(I)I

    move-result v5

    add-int v0, v4, v5

    goto :goto_1

    :cond_1
    const/16 v4, 0x61

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getSuggestResponseInJsonArrayFormat(Landroid/net/Uri;)Lorg/json/JSONArray;
    .locals 4
    .param p1    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {p0, p1}, Lcom/google/android/dialer/provider/DialerProvider;->executeHttpRequest(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "DialerProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to retrieve/parse the response from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleFilter([Ljava/lang/String;Ljava/lang/String;ILandroid/location/Location;)Landroid/database/Cursor;
    .locals 22
    .param p1    # [Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .param p4    # Landroid/location/Location;

    const-string v14, "DialerProvider"

    const/4 v15, 0x2

    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_0

    const-string v14, "DialerProvider"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "handleFilter("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p2, :cond_2

    const/4 v6, 0x0

    :cond_1
    :goto_0
    return-object v6

    :cond_2
    :try_start_0
    const-string v14, "UTF-8"

    move-object/from16 v0, p2

    invoke-static {v0, v14}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object p2

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/dialer/provider/DialerProvider;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v14, "dialer_nearby_places_min_query_len"

    const/4 v15, 0x2

    invoke-static {v5, v14, v15}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const-string v14, "dialer_nearby_places_max_query_len"

    const/16 v15, 0x32

    invoke-static {v5, v14, v15}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const-string v14, "dialer_nearby_places_directory_radius_meters"

    const/16 v15, 0x3e8

    invoke-static {v5, v14, v15}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v8, v10, :cond_3

    const/4 v6, 0x0

    goto :goto_0

    :cond_3
    if-le v8, v9, :cond_4

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_4
    :try_start_1
    const-string v14, "https://www.google.com/complete/search?gs_ri=dialer"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/google/android/dialer/provider/DialerProvider;->rewriteUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v14

    const-string v15, "q"

    move-object/from16 v0, p2

    invoke-virtual {v14, v15, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    const-string v15, "hl"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/dialer/provider/DialerProvider;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    const-string v15, "sll"

    sget-object v16, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v17, "%f,%f"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {p4 .. p4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-virtual/range {p4 .. p4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v16 .. v18}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    const-string v15, "radius"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    const-string v15, "gs_gbg"

    invoke-direct/range {p0 .. p0}, Lcom/google/android/dialer/provider/DialerProvider;->getRandomNoiseString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/google/android/dialer/provider/DialerProvider;->getSuggestResponseInJsonArrayFormat(Landroid/net/Uri;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v12

    const-string v14, "DialerProvider"

    const/4 v15, 0x2

    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_5

    const-string v14, "DialerProvider"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Results: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/dialer/provider/DialerProvider;->buildResultCursor([Ljava/lang/String;Lorg/json/JSONArray;I)Landroid/database/Cursor;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v6

    const-string v14, "DialerProvider"

    const/4 v15, 0x2

    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_1

    const-string v14, "DialerProvider"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "handleFilter("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "): "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " matches"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_0
    move-exception v7

    const-string v14, "DialerProvider"

    const-string v15, "Failed to execute query"

    invoke-static {v14, v15, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v6, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v7

    const-string v14, "DialerProvider"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Invalid response to query: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    goto/16 :goto_0

    :catch_2
    move-exception v14

    goto/16 :goto_1
.end method

.method private rewriteUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/dialer/provider/DialerProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/common/http/UrlRules;->getRules(Landroid/content/ContentResolver;)Lcom/google/android/common/http/UrlRules;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/common/http/UrlRules;->matchRule(Ljava/lang/String;)Lcom/google/android/common/http/UrlRules$Rule;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/common/http/UrlRules$Rule;->apply(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v3, "DialerProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Blocked by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/common/http/UrlRules$Rule;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Blocked by rule: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/common/http/UrlRules$Rule;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-virtual {v0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "DialerProvider"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "DialerProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rule "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/common/http/UrlRules$Rule;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1    # Landroid/net/Uri;
    .param p2    # Ljava/lang/String;
    .param p3    # [Ljava/lang/String;

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p1    # Landroid/net/Uri;

    sget-object v1, Lcom/google/android/dialer/provider/DialerProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :pswitch_0
    const-string v1, "vnd.android.cursor.item/contact"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1    # Landroid/net/Uri;
    .param p2    # Landroid/content/ContentValues;

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onCreate()Z
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/dialer/provider/DialerProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "GoogleDialer "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v2, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/dialer/provider/DialerProvider;->mUserAgent:Ljava/lang/String;

    const/4 v3, 0x1

    return v3

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 19
    .param p1    # Landroid/net/Uri;
    .param p2    # [Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # [Ljava/lang/String;
    .param p5    # Ljava/lang/String;

    const-string v2, "DialerProvider"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "DialerProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v2, Lcom/google/android/dialer/provider/DialerProvider;->sURIMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v17

    packed-switch v17, :pswitch_data_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/dialer/provider/DialerProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/dialer/util/GoogleLocationSettingHelper;->isGoogleLocationServicesEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v8}, Lcom/google/android/dialer/util/GoogleLocationSettingHelper;->isSystemLocationSettingEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    const-string v2, "DialerProvider"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "DialerProvider"

    const-string v3, "Location settings is disabled, ignoring query."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/dialer/provider/DialerProvider;->getLastLocation()Landroid/location/Location;

    move-result-object v7

    if-nez v7, :cond_5

    const-string v2, "DialerProvider"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "DialerProvider"

    const-string v3, "No location available, ignoring query."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "limit"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_6

    :try_start_0
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v18

    :goto_1
    move/from16 v6, v18

    new-instance v2, Lcom/google/android/dialer/provider/DialerProvider$1;

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/google/android/dialer/provider/DialerProvider$1;-><init>(Lcom/google/android/dialer/provider/DialerProvider;[Ljava/lang/String;Ljava/lang/String;ILandroid/location/Location;)V

    const-string v11, "FilterThread"

    const-wide/16 v12, 0x2710

    sget-object v14, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v9, p0

    move-object v10, v2

    invoke-direct/range {v9 .. v14}, Lcom/google/android/dialer/provider/DialerProvider;->execute(Ljava/util/concurrent/Callable;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    goto :goto_0

    :cond_6
    const/16 v18, -0x1

    goto :goto_1

    :catch_0
    move-exception v15

    const-string v2, "DialerProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query: invalid limit parameter: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, -0x1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1    # Landroid/net/Uri;
    .param p2    # Landroid/content/ContentValues;
    .param p3    # Ljava/lang/String;
    .param p4    # [Ljava/lang/String;

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
