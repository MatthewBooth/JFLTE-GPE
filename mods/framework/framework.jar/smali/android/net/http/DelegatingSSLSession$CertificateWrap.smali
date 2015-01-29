.class public Landroid/net/http/DelegatingSSLSession$CertificateWrap;
.super Landroid/net/http/DelegatingSSLSession;
.source "DelegatingSSLSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/http/DelegatingSSLSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CertificateWrap"
.end annotation


# instance fields
.field private final mCertificate:Ljava/security/cert/Certificate;


# direct methods
.method public constructor <init>(Ljava/security/cert/Certificate;)V
    .locals 0
    .param p1    # Ljava/security/cert/Certificate;

    invoke-direct {p0}, Landroid/net/http/DelegatingSSLSession;-><init>()V

    iput-object p1, p0, Landroid/net/http/DelegatingSSLSession$CertificateWrap;->mCertificate:Ljava/security/cert/Certificate;

    return-void
.end method


# virtual methods
.method public getPeerCertificates()[Ljava/security/cert/Certificate;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/security/cert/Certificate;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/net/http/DelegatingSSLSession$CertificateWrap;->mCertificate:Ljava/security/cert/Certificate;

    aput-object v2, v0, v1

    return-object v0
.end method
