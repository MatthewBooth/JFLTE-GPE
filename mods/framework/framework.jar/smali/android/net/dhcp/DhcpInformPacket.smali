.class Landroid/net/dhcp/DhcpInformPacket;
.super Landroid/net/dhcp/DhcpPacket;
.source "DhcpInformPacket.java"


# direct methods
.method constructor <init>(ILjava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;[B)V
    .locals 8
    .param p1    # I
    .param p2    # Ljava/net/InetAddress;
    .param p3    # Ljava/net/InetAddress;
    .param p4    # Ljava/net/InetAddress;
    .param p5    # Ljava/net/InetAddress;
    .param p6    # [B

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/net/dhcp/DhcpPacket;-><init>(ILjava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;[BZ)V

    return-void
.end method


# virtual methods
.method public buildPacket(ISS)Ljava/nio/ByteBuffer;
    .locals 9
    .param p1    # I
    .param p2    # S
    .param p3    # S

    const/16 v0, 0x5dc

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    iget-object v2, p0, Landroid/net/dhcp/DhcpInformPacket;->mClientIp:Ljava/net/InetAddress;

    iget-object v3, p0, Landroid/net/dhcp/DhcpInformPacket;->mYourIp:Ljava/net/InetAddress;

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v8}, Landroid/net/dhcp/DhcpInformPacket;->fillInPacket(ILjava/net/InetAddress;Ljava/net/InetAddress;SSLjava/nio/ByteBuffer;BZ)V

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v6
.end method

.method public doNextOp(Landroid/net/dhcp/DhcpStateMachine;)V
    .locals 4
    .param p1    # Landroid/net/dhcp/DhcpStateMachine;

    iget-object v1, p0, Landroid/net/dhcp/DhcpInformPacket;->mRequestedIp:Ljava/net/InetAddress;

    if-nez v1, :cond_0

    iget-object v0, p0, Landroid/net/dhcp/DhcpInformPacket;->mClientIp:Ljava/net/InetAddress;

    :goto_0
    iget v1, p0, Landroid/net/dhcp/DhcpInformPacket;->mTransId:I

    iget-object v2, p0, Landroid/net/dhcp/DhcpInformPacket;->mClientMac:[B

    iget-object v3, p0, Landroid/net/dhcp/DhcpInformPacket;->mRequestedParams:[B

    invoke-interface {p1, v1, v2, v0, v3}, Landroid/net/dhcp/DhcpStateMachine;->onInformReceived(I[BLjava/net/InetAddress;[B)V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/net/dhcp/DhcpInformPacket;->mRequestedIp:Ljava/net/InetAddress;

    goto :goto_0
.end method

.method finishPacket(Ljava/nio/ByteBuffer;)V
    .locals 5
    .param p1    # Ljava/nio/ByteBuffer;

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x7

    new-array v0, v1, [B

    aput-byte v4, v0, v3

    iget-object v1, p0, Landroid/net/dhcp/DhcpInformPacket;->mClientMac:[B

    const/4 v2, 0x6

    invoke-static {v1, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/16 v1, 0x35

    const/4 v2, 0x3

    invoke-virtual {p0, p1, v1, v2}, Landroid/net/dhcp/DhcpInformPacket;->addTlv(Ljava/nio/ByteBuffer;BB)V

    const/16 v1, 0x37

    iget-object v2, p0, Landroid/net/dhcp/DhcpInformPacket;->mRequestedParams:[B

    invoke-virtual {p0, p1, v1, v2}, Landroid/net/dhcp/DhcpInformPacket;->addTlv(Ljava/nio/ByteBuffer;B[B)V

    invoke-virtual {p0, p1}, Landroid/net/dhcp/DhcpInformPacket;->addTlvEnd(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-super {p0}, Landroid/net/dhcp/DhcpPacket;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INFORM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
