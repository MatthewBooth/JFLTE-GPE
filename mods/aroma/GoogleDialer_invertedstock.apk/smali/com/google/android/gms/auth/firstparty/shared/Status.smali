.class public final enum Lcom/google/android/gms/auth/firstparty/shared/Status;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/auth/firstparty/shared/Status;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ACCOUNT_DELETED:Lcom/google/android/gms/auth/firstparty/shared/Status;

.field public static final enum ACCOUNT_DISABLED:Lcom/google/android/gms/auth/firstparty/shared/Status;

.field public static final enum ALREADY_HAS_GMAIL:Lcom/google/android/gms/auth/firstparty/shared/Status;

.field public static final enum BAD_AUTHENTICATION:Lcom/google/android/gms/auth/firstparty/shared/Status;

.field public static final enum BAD_PASSWORD:Lcom/google/android/gms/auth/firstparty/shared/Status;

.field public static final enum BAD_REQUEST:Lcom/google/android/gms/auth/firstparty/shared/Status;

.field public static final enum BAD_USERNAME:Lcom/google/android/gms/auth/firstparty/shared/Status;

.field public static final enum CAPTCHA:Lcom/google/android/gms/auth/firstparty/shared/Status;

.field public static final enum CLIENT_LOGIN_DISABLED:Lcom/google/android/gms/auth/firstparty/shared/Status;

.field public static final enum DELETED_GMAIL:Lcom/google/android/gms/auth/firstparty/shared/Status;

.field public static final enum DEVICE_MANAGEMENT_REQUIRED:Lcom/google/android/gms/auth/firstparty/shared/Status;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum DM_ADMIN_BLOCKED:Lcom/google/android/gms/auth/firstparty/shared/Status;

.field public static final enum DM_ADMIN_PENDING_APPROVAL:Lcom/google/android/gms/auth/firstparty/shared/Status;

.field public static final enum DM_DEACTIVATED:Lcom/google/android/gms/auth/firstparty/shared/Status;

.field public static final enum DM_INTERNAL_ERROR:Lcom/google/android/gms/auth/firstparty/shared/Status;

.field public static final enum DM_REQUIRED:Lcom/google/android/gms/auth/firstparty/shared/Status;

.field public static final enum DM_STALE_SYNC_REQUIRED:Lcom/google/android/gms/auth/firstparty/shared/Status;

.field public static final enum DM_SYNC_DISABLED:Lcom/google/android/gms/auth/firstparty/shared/Status;

.field public static final enum EXISTING_USERNAME:Lcom/google/android/gms/auth/firstparty/shared/Status;

.field public static EXTRA_KEY_STATUS:Ljava/lang/String;

.field public static final enum GPLUS_INTERSTITIAL:Lcom/google/android/gms/auth/firstparty/shared/Status;

.field public static final enum GPLUS_INVALID_CHAR:Lcom/google/android/gms/auth/firstparty/shared/Status;

.field public static final enum GPLUS_NICKNAME:Lcom/google/android/gms/auth/firstparty/shared/Status;

.field public static final enum GPLUS_OTHER:Lcom/google/android/gms/auth/firstparty/shared/Status;

.field public static final enum GPLUS_PROFILE_ERROR:Lcom/google/android/gms/auth/firstparty/shared/Status;

.field public static final enum INVALID_SCOPE:Lcom/google/android/gms/auth/firstparty/shared/Status;

.field private static final synthetic If:[Lcom/google/android/gms/auth/firstparty/shared/Status;

.field public static JSON_KEY_STATUS:Ljava/lang/String;

.field public static final enum LOGIN_FAIL:Lcom/google/android/gms/auth/firstparty/shared/Status;

.field public static final enum NEEDS_2F:Lcom/google/android/gms/auth/firstparty/shared/Status;

.field public static final enum NEEDS_BROWSER:Lcom/google/android/gms/auth/firstparty/shared/Status;

.field public static final enum NEED_PERMISSION:Lcom/google/android/gms/auth/firstparty/shared/Status;

.field public static final enum NETWORK_ERROR:Lcom/google/android/gms/auth/firstparty/shared/Status;

.field public static final enum NOT_LOGGED_IN:Lcom/google/android/gms/auth/firstparty/shared/Status;

.field public static final enum NOT_VERIFIED:Lcom/google/android/gms/auth/firstparty/shared/Status;

.field public static final enum NO_GMAIL:Lcom/google/android/gms/auth/firstparty/shared/Status;

.field public static final enum PERMISSION_DENIED:Lcom/google/android/gms/auth/firstparty/shared/Status;

.field public static final enum REQUEST_DENIED:Lcom/google/android/gms/auth/firstparty/shared/Status;

.field public static final enum SERVER_ERROR:Lcom/google/android/gms/auth/firstparty/shared/Status;

.field public static final enum SERVICE_DISABLED:Lcom/google/android/gms/auth/firstparty/shared/Status;

.field public static final enum SERVICE_UNAVAILABLE:Lcom/google/android/gms/auth/firstparty/shared/Status;

.field public static final enum SOCKET_TIMEOUT:Lcom/google/android/gms/auth/firstparty/shared/Status;

.field public static final enum SUCCESS:Lcom/google/android/gms/auth/firstparty/shared/Status;

.field public static final enum TERMS_NOT_AGREED:Lcom/google/android/gms/auth/firstparty/shared/Status;

.field public static final enum UNKNOWN:Lcom/google/android/gms/auth/firstparty/shared/Status;

.field public static final enum UNKNOWN_ERROR:Lcom/google/android/gms/auth/firstparty/shared/Status;

.field public static final enum USERNAME_UNAVAILABLE:Lcom/google/android/gms/auth/firstparty/shared/Status;

.field public static final enum USER_CANCEL:Lcom/google/android/gms/auth/firstparty/shared/Status;


# instance fields
.field private final Ie:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/Status;

    const-string v1, "SUCCESS"

    const-string v2, "Ok"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/gms/auth/firstparty/shared/Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/Status;->SUCCESS:Lcom/google/android/gms/auth/firstparty/shared/Status;

    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/Status;

    const-string v1, "BAD_AUTHENTICATION"

    const-string v2, "BadAuthentication"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/gms/auth/firstparty/shared/Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/Status;->BAD_AUTHENTICATION:Lcom/google/android/gms/auth/firstparty/shared/Status;

    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/Status;

    const-string v1, "NEEDS_2F"

    const-string v2, "InvalidSecondFactor"

    invoke-direct {v0, v1, v6, v2}, Lcom/google/android/gms/auth/firstparty/shared/Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/Status;->NEEDS_2F:Lcom/google/android/gms/auth/firstparty/shared/Status;

    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/Status;

    const-string v1, "NOT_VERIFIED"

    const-string v2, "NotVerified"

    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/gms/auth/firstparty/shared/Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/Status;->NOT_VERIFIED:Lcom/google/android/gms/auth/firstparty/shared/Status;

    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/Status;

    const-string v1, "TERMS_NOT_AGREED"

    const-string v2, "TermsNotAgreed"

    invoke-direct {v0, v1, v8, v2}, Lcom/google/android/gms/auth/firstparty/shared/Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/Status;->TERMS_NOT_AGREED:Lcom/google/android/gms/auth/firstparty/shared/Status;

    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/Status;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x5

    const-string v3, "Unknown"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/firstparty/shared/Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/Status;->UNKNOWN:Lcom/google/android/gms/auth/firstparty/shared/Status;

    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/Status;

    const-string v1, "UNKNOWN_ERROR"

    const/4 v2, 0x6

    const-string v3, "UNKNOWN_ERR"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/firstparty/shared/Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/Status;->UNKNOWN_ERROR:Lcom/google/android/gms/auth/firstparty/shared/Status;

    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/Status;

    const-string v1, "ACCOUNT_DELETED"

    const/4 v2, 0x7

    const-string v3, "AccountDeleted"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/firstparty/shared/Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/Status;->ACCOUNT_DELETED:Lcom/google/android/gms/auth/firstparty/shared/Status;

    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/Status;

    const-string v1, "ACCOUNT_DISABLED"

    const/16 v2, 0x8

    const-string v3, "AccountDisabled"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/firstparty/shared/Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/Status;->ACCOUNT_DISABLED:Lcom/google/android/gms/auth/firstparty/shared/Status;

    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/Status;

    const-string v1, "SERVICE_DISABLED"

    const/16 v2, 0x9

    const-string v3, "ServiceDisabled"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/firstparty/shared/Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/Status;->SERVICE_DISABLED:Lcom/google/android/gms/auth/firstparty/shared/Status;

    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/Status;

    const-string v1, "SERVICE_UNAVAILABLE"

    const/16 v2, 0xa

    const-string v3, "ServiceUnavailable"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/firstparty/shared/Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/Status;->SERVICE_UNAVAILABLE:Lcom/google/android/gms/auth/firstparty/shared/Status;

    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/Status;

    const-string v1, "CAPTCHA"

    const/16 v2, 0xb

    const-string v3, "CaptchaRequired"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/firstparty/shared/Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/Status;->CAPTCHA:Lcom/google/android/gms/auth/firstparty/shared/Status;

    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/Status;

    const-string v1, "NETWORK_ERROR"

    const/16 v2, 0xc

    const-string v3, "NetworkError"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/firstparty/shared/Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/Status;->NETWORK_ERROR:Lcom/google/android/gms/auth/firstparty/shared/Status;

    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/Status;

    const-string v1, "USER_CANCEL"

    const/16 v2, 0xd

    const-string v3, "UserCancel"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/firstparty/shared/Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/Status;->USER_CANCEL:Lcom/google/android/gms/auth/firstparty/shared/Status;

    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/Status;

    const-string v1, "PERMISSION_DENIED"

    const/16 v2, 0xe

    const-string v3, "PermissionDenied"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/firstparty/shared/Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/Status;->PERMISSION_DENIED:Lcom/google/android/gms/auth/firstparty/shared/Status;

    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/Status;

    const-string v1, "DEVICE_MANAGEMENT_REQUIRED"

    const/16 v2, 0xf

    const-string v3, "DeviceManagementRequiredOrSyncDisabled"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/firstparty/shared/Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/Status;->DEVICE_MANAGEMENT_REQUIRED:Lcom/google/android/gms/auth/firstparty/shared/Status;

    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/Status;

    const-string v1, "DM_INTERNAL_ERROR"

    const/16 v2, 0x10

    const-string v3, "DeviceManagementInternalError"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/firstparty/shared/Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/Status;->DM_INTERNAL_ERROR:Lcom/google/android/gms/auth/firstparty/shared/Status;

    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/Status;

    const-string v1, "DM_SYNC_DISABLED"

    const/16 v2, 0x11

    const-string v3, "DeviceManagementSyncDisabled"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/firstparty/shared/Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/Status;->DM_SYNC_DISABLED:Lcom/google/android/gms/auth/firstparty/shared/Status;

    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/Status;

    const-string v1, "DM_ADMIN_BLOCKED"

    const/16 v2, 0x12

    const-string v3, "DeviceManagementAdminBlocked"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/firstparty/shared/Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/Status;->DM_ADMIN_BLOCKED:Lcom/google/android/gms/auth/firstparty/shared/Status;

    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/Status;

    const-string v1, "DM_ADMIN_PENDING_APPROVAL"

    const/16 v2, 0x13

    const-string v3, "DeviceManagementAdminPendingApproval"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/firstparty/shared/Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/Status;->DM_ADMIN_PENDING_APPROVAL:Lcom/google/android/gms/auth/firstparty/shared/Status;

    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/Status;

    const-string v1, "DM_STALE_SYNC_REQUIRED"

    const/16 v2, 0x14

    const-string v3, "DeviceManagementStaleSyncRequired"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/firstparty/shared/Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/Status;->DM_STALE_SYNC_REQUIRED:Lcom/google/android/gms/auth/firstparty/shared/Status;

    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/Status;

    const-string v1, "DM_DEACTIVATED"

    const/16 v2, 0x15

    const-string v3, "DeviceManagementDeactivated"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/firstparty/shared/Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/Status;->DM_DEACTIVATED:Lcom/google/android/gms/auth/firstparty/shared/Status;

    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/Status;

    const-string v1, "DM_REQUIRED"

    const/16 v2, 0x16

    const-string v3, "DeviceManagementRequired"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/firstparty/shared/Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/Status;->DM_REQUIRED:Lcom/google/android/gms/auth/firstparty/shared/Status;

    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/Status;

    const-string v1, "CLIENT_LOGIN_DISABLED"

    const/16 v2, 0x17

    const-string v3, "ClientLoginDisabled"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/firstparty/shared/Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/Status;->CLIENT_LOGIN_DISABLED:Lcom/google/android/gms/auth/firstparty/shared/Status;

    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/Status;

    const-string v1, "NEED_PERMISSION"

    const/16 v2, 0x18

    const-string v3, "NeedPermission"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/firstparty/shared/Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/Status;->NEED_PERMISSION:Lcom/google/android/gms/auth/firstparty/shared/Status;

    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/Status;

    const-string v1, "BAD_PASSWORD"

    const/16 v2, 0x19

    const-string v3, "WeakPassword"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/firstparty/shared/Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/Status;->BAD_PASSWORD:Lcom/google/android/gms/auth/firstparty/shared/Status;

    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/Status;

    const-string v1, "ALREADY_HAS_GMAIL"

    const/16 v2, 0x1a

    const-string v3, "ALREADY_HAS_GMAIL"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/firstparty/shared/Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/Status;->ALREADY_HAS_GMAIL:Lcom/google/android/gms/auth/firstparty/shared/Status;

    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/Status;

    const-string v1, "BAD_REQUEST"

    const/16 v2, 0x1b

    const-string v3, "BadRequest"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/firstparty/shared/Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/Status;->BAD_REQUEST:Lcom/google/android/gms/auth/firstparty/shared/Status;

    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/Status;

    const-string v1, "BAD_USERNAME"

    const/16 v2, 0x1c

    const-string v3, "BadUsername"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/firstparty/shared/Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/Status;->BAD_USERNAME:Lcom/google/android/gms/auth/firstparty/shared/Status;

    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/Status;

    const-string v1, "LOGIN_FAIL"

    const/16 v2, 0x1d

    const-string v3, "LoginFail"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/firstparty/shared/Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/Status;->LOGIN_FAIL:Lcom/google/android/gms/auth/firstparty/shared/Status;

    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/Status;

    const-string v1, "NOT_LOGGED_IN"

    const/16 v2, 0x1e

    const-string v3, "NotLoggedIn"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/firstparty/shared/Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/Status;->NOT_LOGGED_IN:Lcom/google/android/gms/auth/firstparty/shared/Status;

    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/Status;

    const-string v1, "NO_GMAIL"

    const/16 v2, 0x1f

    const-string v3, "NoGmail"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/firstparty/shared/Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/Status;->NO_GMAIL:Lcom/google/android/gms/auth/firstparty/shared/Status;

    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/Status;

    const-string v1, "REQUEST_DENIED"

    const/16 v2, 0x20

    const-string v3, "RequestDenied"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/firstparty/shared/Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/Status;->REQUEST_DENIED:Lcom/google/android/gms/auth/firstparty/shared/Status;

    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/Status;

    const-string v1, "SERVER_ERROR"

    const/16 v2, 0x21

    const-string v3, "ServerError"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/firstparty/shared/Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/Status;->SERVER_ERROR:Lcom/google/android/gms/auth/firstparty/shared/Status;

    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/Status;

    const-string v1, "USERNAME_UNAVAILABLE"

    const/16 v2, 0x22

    const-string v3, "UsernameUnavailable"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/firstparty/shared/Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/Status;->USERNAME_UNAVAILABLE:Lcom/google/android/gms/auth/firstparty/shared/Status;

    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/Status;

    const-string v1, "DELETED_GMAIL"

    const/16 v2, 0x23

    const-string v3, "DeletedGmail"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/firstparty/shared/Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/Status;->DELETED_GMAIL:Lcom/google/android/gms/auth/firstparty/shared/Status;

    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/Status;

    const-string v1, "SOCKET_TIMEOUT"

    const/16 v2, 0x24

    const-string v3, "SocketTimeout"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/firstparty/shared/Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/Status;->SOCKET_TIMEOUT:Lcom/google/android/gms/auth/firstparty/shared/Status;

    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/Status;

    const-string v1, "EXISTING_USERNAME"

    const/16 v2, 0x25

    const-string v3, "ExistingUsername"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/firstparty/shared/Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/Status;->EXISTING_USERNAME:Lcom/google/android/gms/auth/firstparty/shared/Status;

    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/Status;

    const-string v1, "NEEDS_BROWSER"

    const/16 v2, 0x26

    const-string v3, "NeedsBrowser"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/firstparty/shared/Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/Status;->NEEDS_BROWSER:Lcom/google/android/gms/auth/firstparty/shared/Status;

    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/Status;

    const-string v1, "GPLUS_OTHER"

    const/16 v2, 0x27

    const-string v3, "GPlusOther"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/firstparty/shared/Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/Status;->GPLUS_OTHER:Lcom/google/android/gms/auth/firstparty/shared/Status;

    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/Status;

    const-string v1, "GPLUS_NICKNAME"

    const/16 v2, 0x28

    const-string v3, "GPlusNickname"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/firstparty/shared/Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/Status;->GPLUS_NICKNAME:Lcom/google/android/gms/auth/firstparty/shared/Status;

    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/Status;

    const-string v1, "GPLUS_INVALID_CHAR"

    const/16 v2, 0x29

    const-string v3, "GPlusInvalidChar"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/firstparty/shared/Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/Status;->GPLUS_INVALID_CHAR:Lcom/google/android/gms/auth/firstparty/shared/Status;

    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/Status;

    const-string v1, "GPLUS_INTERSTITIAL"

    const/16 v2, 0x2a

    const-string v3, "GPlusInterstitial"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/firstparty/shared/Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/Status;->GPLUS_INTERSTITIAL:Lcom/google/android/gms/auth/firstparty/shared/Status;

    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/Status;

    const-string v1, "GPLUS_PROFILE_ERROR"

    const/16 v2, 0x2b

    const-string v3, "ProfileUpgradeError"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/firstparty/shared/Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/Status;->GPLUS_PROFILE_ERROR:Lcom/google/android/gms/auth/firstparty/shared/Status;

    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/Status;

    const-string v1, "INVALID_SCOPE"

    const/16 v2, 0x2c

    const-string v3, "INVALID_SCOPE"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/firstparty/shared/Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/Status;->INVALID_SCOPE:Lcom/google/android/gms/auth/firstparty/shared/Status;

    const/16 v0, 0x2d

    new-array v0, v0, [Lcom/google/android/gms/auth/firstparty/shared/Status;

    sget-object v1, Lcom/google/android/gms/auth/firstparty/shared/Status;->SUCCESS:Lcom/google/android/gms/auth/firstparty/shared/Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/auth/firstparty/shared/Status;->BAD_AUTHENTICATION:Lcom/google/android/gms/auth/firstparty/shared/Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/auth/firstparty/shared/Status;->NEEDS_2F:Lcom/google/android/gms/auth/firstparty/shared/Status;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gms/auth/firstparty/shared/Status;->NOT_VERIFIED:Lcom/google/android/gms/auth/firstparty/shared/Status;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/gms/auth/firstparty/shared/Status;->TERMS_NOT_AGREED:Lcom/google/android/gms/auth/firstparty/shared/Status;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/Status;->UNKNOWN:Lcom/google/android/gms/auth/firstparty/shared/Status;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/Status;->UNKNOWN_ERROR:Lcom/google/android/gms/auth/firstparty/shared/Status;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/Status;->ACCOUNT_DELETED:Lcom/google/android/gms/auth/firstparty/shared/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/Status;->ACCOUNT_DISABLED:Lcom/google/android/gms/auth/firstparty/shared/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/Status;->SERVICE_DISABLED:Lcom/google/android/gms/auth/firstparty/shared/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/Status;->SERVICE_UNAVAILABLE:Lcom/google/android/gms/auth/firstparty/shared/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/Status;->CAPTCHA:Lcom/google/android/gms/auth/firstparty/shared/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/Status;->NETWORK_ERROR:Lcom/google/android/gms/auth/firstparty/shared/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/Status;->USER_CANCEL:Lcom/google/android/gms/auth/firstparty/shared/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/Status;->PERMISSION_DENIED:Lcom/google/android/gms/auth/firstparty/shared/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/Status;->DEVICE_MANAGEMENT_REQUIRED:Lcom/google/android/gms/auth/firstparty/shared/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/Status;->DM_INTERNAL_ERROR:Lcom/google/android/gms/auth/firstparty/shared/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/Status;->DM_SYNC_DISABLED:Lcom/google/android/gms/auth/firstparty/shared/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/Status;->DM_ADMIN_BLOCKED:Lcom/google/android/gms/auth/firstparty/shared/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/Status;->DM_ADMIN_PENDING_APPROVAL:Lcom/google/android/gms/auth/firstparty/shared/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/Status;->DM_STALE_SYNC_REQUIRED:Lcom/google/android/gms/auth/firstparty/shared/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/Status;->DM_DEACTIVATED:Lcom/google/android/gms/auth/firstparty/shared/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/Status;->DM_REQUIRED:Lcom/google/android/gms/auth/firstparty/shared/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/Status;->CLIENT_LOGIN_DISABLED:Lcom/google/android/gms/auth/firstparty/shared/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/Status;->NEED_PERMISSION:Lcom/google/android/gms/auth/firstparty/shared/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/Status;->BAD_PASSWORD:Lcom/google/android/gms/auth/firstparty/shared/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/Status;->ALREADY_HAS_GMAIL:Lcom/google/android/gms/auth/firstparty/shared/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/Status;->BAD_REQUEST:Lcom/google/android/gms/auth/firstparty/shared/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/Status;->BAD_USERNAME:Lcom/google/android/gms/auth/firstparty/shared/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/Status;->LOGIN_FAIL:Lcom/google/android/gms/auth/firstparty/shared/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/Status;->NOT_LOGGED_IN:Lcom/google/android/gms/auth/firstparty/shared/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/Status;->NO_GMAIL:Lcom/google/android/gms/auth/firstparty/shared/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/Status;->REQUEST_DENIED:Lcom/google/android/gms/auth/firstparty/shared/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/Status;->SERVER_ERROR:Lcom/google/android/gms/auth/firstparty/shared/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/Status;->USERNAME_UNAVAILABLE:Lcom/google/android/gms/auth/firstparty/shared/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/Status;->DELETED_GMAIL:Lcom/google/android/gms/auth/firstparty/shared/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/Status;->SOCKET_TIMEOUT:Lcom/google/android/gms/auth/firstparty/shared/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/Status;->EXISTING_USERNAME:Lcom/google/android/gms/auth/firstparty/shared/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/Status;->NEEDS_BROWSER:Lcom/google/android/gms/auth/firstparty/shared/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/Status;->GPLUS_OTHER:Lcom/google/android/gms/auth/firstparty/shared/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/Status;->GPLUS_NICKNAME:Lcom/google/android/gms/auth/firstparty/shared/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/Status;->GPLUS_INVALID_CHAR:Lcom/google/android/gms/auth/firstparty/shared/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/Status;->GPLUS_INTERSTITIAL:Lcom/google/android/gms/auth/firstparty/shared/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/Status;->GPLUS_PROFILE_ERROR:Lcom/google/android/gms/auth/firstparty/shared/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/Status;->INVALID_SCOPE:Lcom/google/android/gms/auth/firstparty/shared/Status;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/Status;->If:[Lcom/google/android/gms/auth/firstparty/shared/Status;

    const-string v0, "Error"

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/Status;->EXTRA_KEY_STATUS:Ljava/lang/String;

    const-string v0, "status"

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/Status;->JSON_KEY_STATUS:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/shared/Status;->Ie:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/Status;
    .locals 1
    .param p0    # Ljava/lang/String;

    const-class v0, Lcom/google/android/gms/auth/firstparty/shared/Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/shared/Status;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gms/auth/firstparty/shared/Status;
    .locals 1

    sget-object v0, Lcom/google/android/gms/auth/firstparty/shared/Status;->If:[Lcom/google/android/gms/auth/firstparty/shared/Status;

    invoke-virtual {v0}, [Lcom/google/android/gms/auth/firstparty/shared/Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/auth/firstparty/shared/Status;

    return-object v0
.end method


# virtual methods
.method public getWire()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/shared/Status;->Ie:Ljava/lang/String;

    return-object v0
.end method
