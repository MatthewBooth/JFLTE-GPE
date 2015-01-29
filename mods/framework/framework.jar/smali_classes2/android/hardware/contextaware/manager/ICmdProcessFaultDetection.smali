.class public interface abstract Landroid/hardware/contextaware/manager/ICmdProcessFaultDetection;
.super Ljava/lang/Object;
.source "ICmdProcessFaultDetection.java"


# static fields
.field public static final I2C_COMM_ERROR:I = -0x5

.field public static final INSUFFICIENT_REQUIREMENT:I = -0x14

.field public static final NOT_RECEIVE_ACK:I = -0xb

.field public static final SENSORHUBMANAGER_NULL_EXEPTION:I = -0x3e7


# virtual methods
.method public abstract getContextTypeOfFaultDetection()Ljava/lang/String;
.end method

.method public abstract getFaultDetectionResult()Landroid/os/Bundle;
.end method

.method public abstract getFaultDetectionResultValueNames()[Ljava/lang/String;
.end method
