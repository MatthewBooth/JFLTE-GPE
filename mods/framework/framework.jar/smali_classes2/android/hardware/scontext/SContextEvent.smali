.class public Landroid/hardware/scontext/SContextEvent;
.super Ljava/lang/Object;
.source "SContextEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/scontext/SContextEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAirMotionContext:Landroid/hardware/scontext/SContextAirMotion;

.field private mApproachContext:Landroid/hardware/scontext/SContextApproach;

.field private mAutoRotationContext:Landroid/hardware/scontext/SContextAutoRotation;

.field private mCallPoseContext:Landroid/hardware/scontext/SContextCallPose;

.field private mCurrentStatusForPositioningContext:Landroid/hardware/scontext/SContextCurrentStatusForPositioning;

.field private mEnvironmentContext:Landroid/hardware/scontext/SContextEnvironment;

.field private mFlipCoverActionContext:Landroid/hardware/scontext/SContextFlipCoverAction;

.field private mGyroTemperatureContext:Landroid/hardware/scontext/SContextGyroTemperature;

.field private mMotionContext:Landroid/hardware/scontext/SContextMotion;

.field private mMovementContext:Landroid/hardware/scontext/SContextMovement;

.field private mMovementForPositioningContext:Landroid/hardware/scontext/SContextMovementForPositioning;

.field private mPedometerContext:Landroid/hardware/scontext/SContextPedometer;

.field private mPutDownMotionContext:Landroid/hardware/scontext/SContextPutDownMotion;

.field private mShakeMotionContext:Landroid/hardware/scontext/SContextShakeMotion;

.field private mStepCountAlertContext:Landroid/hardware/scontext/SContextStepCountAlert;

.field private mWakeUpVoiceContext:Landroid/hardware/scontext/SContextWakeUpVoice;

.field public scontext:Landroid/hardware/scontext/SContext;

.field public timestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/scontext/SContextEvent$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextEvent$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/hardware/scontext/SContext;

    invoke-direct {v0}, Landroid/hardware/scontext/SContext;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextEvent;->timestamp:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1    # Landroid/os/Parcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextEvent;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1    # Landroid/os/Parcel;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextEvent;->timestamp:J

    const-class v0, Landroid/hardware/scontext/SContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContext;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    const-class v0, Landroid/hardware/scontext/SContextApproach;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextApproach;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mApproachContext:Landroid/hardware/scontext/SContextApproach;

    const-class v0, Landroid/hardware/scontext/SContextPedometer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextPedometer;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mPedometerContext:Landroid/hardware/scontext/SContextPedometer;

    const-class v0, Landroid/hardware/scontext/SContextStepCountAlert;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextStepCountAlert;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mStepCountAlertContext:Landroid/hardware/scontext/SContextStepCountAlert;

    const-class v0, Landroid/hardware/scontext/SContextMotion;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextMotion;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mMotionContext:Landroid/hardware/scontext/SContextMotion;

    const-class v0, Landroid/hardware/scontext/SContextMovement;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextMovement;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mMovementContext:Landroid/hardware/scontext/SContextMovement;

    const-class v0, Landroid/hardware/scontext/SContextAutoRotation;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextAutoRotation;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mAutoRotationContext:Landroid/hardware/scontext/SContextAutoRotation;

    const-class v0, Landroid/hardware/scontext/SContextAirMotion;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextAirMotion;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mAirMotionContext:Landroid/hardware/scontext/SContextAirMotion;

    const-class v0, Landroid/hardware/scontext/SContextEnvironment;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextEnvironment;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEnvironmentContext:Landroid/hardware/scontext/SContextEnvironment;

    const-class v0, Landroid/hardware/scontext/SContextMovementForPositioning;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextMovementForPositioning;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mMovementForPositioningContext:Landroid/hardware/scontext/SContextMovementForPositioning;

    const-class v0, Landroid/hardware/scontext/SContextCurrentStatusForPositioning;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextCurrentStatusForPositioning;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mCurrentStatusForPositioningContext:Landroid/hardware/scontext/SContextCurrentStatusForPositioning;

    const-class v0, Landroid/hardware/scontext/SContextCallPose;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextCallPose;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mCallPoseContext:Landroid/hardware/scontext/SContextCallPose;

    const-class v0, Landroid/hardware/scontext/SContextShakeMotion;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextShakeMotion;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mShakeMotionContext:Landroid/hardware/scontext/SContextShakeMotion;

    const-class v0, Landroid/hardware/scontext/SContextFlipCoverAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextFlipCoverAction;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mFlipCoverActionContext:Landroid/hardware/scontext/SContextFlipCoverAction;

    const-class v0, Landroid/hardware/scontext/SContextGyroTemperature;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextGyroTemperature;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mGyroTemperatureContext:Landroid/hardware/scontext/SContextGyroTemperature;

    const-class v0, Landroid/hardware/scontext/SContextPutDownMotion;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextPutDownMotion;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mPutDownMotionContext:Landroid/hardware/scontext/SContextPutDownMotion;

    const-class v0, Landroid/hardware/scontext/SContextWakeUpVoice;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextWakeUpVoice;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mWakeUpVoiceContext:Landroid/hardware/scontext/SContextWakeUpVoice;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAirMotionContext()Landroid/hardware/scontext/SContextAirMotion;
    .locals 1

    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mAirMotionContext:Landroid/hardware/scontext/SContextAirMotion;

    return-object v0
.end method

.method public getApproachContext()Landroid/hardware/scontext/SContextApproach;
    .locals 1

    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mApproachContext:Landroid/hardware/scontext/SContextApproach;

    return-object v0
.end method

.method public getAutoRotationContext()Landroid/hardware/scontext/SContextAutoRotation;
    .locals 1

    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mAutoRotationContext:Landroid/hardware/scontext/SContextAutoRotation;

    return-object v0
.end method

.method public getCallPoseContext()Landroid/hardware/scontext/SContextCallPose;
    .locals 1

    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mCallPoseContext:Landroid/hardware/scontext/SContextCallPose;

    return-object v0
.end method

.method public getCurrentStatusForPositioningContext()Landroid/hardware/scontext/SContextCurrentStatusForPositioning;
    .locals 1

    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mCurrentStatusForPositioningContext:Landroid/hardware/scontext/SContextCurrentStatusForPositioning;

    return-object v0
.end method

.method public getEnvironmentContext()Landroid/hardware/scontext/SContextEnvironment;
    .locals 1

    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEnvironmentContext:Landroid/hardware/scontext/SContextEnvironment;

    return-object v0
.end method

.method public getFlipCoverActionContext()Landroid/hardware/scontext/SContextFlipCoverAction;
    .locals 1

    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mFlipCoverActionContext:Landroid/hardware/scontext/SContextFlipCoverAction;

    return-object v0
.end method

.method public getGyroTemperatureContext()Landroid/hardware/scontext/SContextGyroTemperature;
    .locals 1

    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mGyroTemperatureContext:Landroid/hardware/scontext/SContextGyroTemperature;

    return-object v0
.end method

.method public getMotionContext()Landroid/hardware/scontext/SContextMotion;
    .locals 1

    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mMotionContext:Landroid/hardware/scontext/SContextMotion;

    return-object v0
.end method

.method public getMovementContext()Landroid/hardware/scontext/SContextMovement;
    .locals 1

    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mMovementContext:Landroid/hardware/scontext/SContextMovement;

    return-object v0
.end method

.method public getMovementForPositioningContext()Landroid/hardware/scontext/SContextMovementForPositioning;
    .locals 1

    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mMovementForPositioningContext:Landroid/hardware/scontext/SContextMovementForPositioning;

    return-object v0
.end method

.method public getPedometerContext()Landroid/hardware/scontext/SContextPedometer;
    .locals 1

    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mPedometerContext:Landroid/hardware/scontext/SContextPedometer;

    return-object v0
.end method

.method public getPutDownMotionContext()Landroid/hardware/scontext/SContextPutDownMotion;
    .locals 1

    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mPutDownMotionContext:Landroid/hardware/scontext/SContextPutDownMotion;

    return-object v0
.end method

.method public getShakeMotionContext()Landroid/hardware/scontext/SContextShakeMotion;
    .locals 1

    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mShakeMotionContext:Landroid/hardware/scontext/SContextShakeMotion;

    return-object v0
.end method

.method public getStepCountAlertContext()Landroid/hardware/scontext/SContextStepCountAlert;
    .locals 1

    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mStepCountAlertContext:Landroid/hardware/scontext/SContextStepCountAlert;

    return-object v0
.end method

.method public getWakeUpVoiceContext()Landroid/hardware/scontext/SContextWakeUpVoice;
    .locals 1

    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mWakeUpVoiceContext:Landroid/hardware/scontext/SContextWakeUpVoice;

    return-object v0
.end method

.method setAirMotionContext(Landroid/hardware/scontext/SContextAirMotion;)V
    .locals 0
    .param p1    # Landroid/hardware/scontext/SContextAirMotion;

    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mAirMotionContext:Landroid/hardware/scontext/SContextAirMotion;

    return-void
.end method

.method setApproachContext(Landroid/hardware/scontext/SContextApproach;)V
    .locals 0
    .param p1    # Landroid/hardware/scontext/SContextApproach;

    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mApproachContext:Landroid/hardware/scontext/SContextApproach;

    return-void
.end method

.method setAutoRotationContext(Landroid/hardware/scontext/SContextAutoRotation;)V
    .locals 0
    .param p1    # Landroid/hardware/scontext/SContextAutoRotation;

    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mAutoRotationContext:Landroid/hardware/scontext/SContextAutoRotation;

    return-void
.end method

.method setCallPoseContext(Landroid/hardware/scontext/SContextCallPose;)V
    .locals 0
    .param p1    # Landroid/hardware/scontext/SContextCallPose;

    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mCallPoseContext:Landroid/hardware/scontext/SContextCallPose;

    return-void
.end method

.method setCurrentStatusForPositioningContext(Landroid/hardware/scontext/SContextCurrentStatusForPositioning;)V
    .locals 0
    .param p1    # Landroid/hardware/scontext/SContextCurrentStatusForPositioning;

    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mCurrentStatusForPositioningContext:Landroid/hardware/scontext/SContextCurrentStatusForPositioning;

    return-void
.end method

.method setEnvironmentContext(Landroid/hardware/scontext/SContextEnvironment;)V
    .locals 0
    .param p1    # Landroid/hardware/scontext/SContextEnvironment;

    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mEnvironmentContext:Landroid/hardware/scontext/SContextEnvironment;

    return-void
.end method

.method setFlipCoverActionContext(Landroid/hardware/scontext/SContextFlipCoverAction;)V
    .locals 0
    .param p1    # Landroid/hardware/scontext/SContextFlipCoverAction;

    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mFlipCoverActionContext:Landroid/hardware/scontext/SContextFlipCoverAction;

    return-void
.end method

.method setGyroTemperatureContext(Landroid/hardware/scontext/SContextGyroTemperature;)V
    .locals 0
    .param p1    # Landroid/hardware/scontext/SContextGyroTemperature;

    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mGyroTemperatureContext:Landroid/hardware/scontext/SContextGyroTemperature;

    return-void
.end method

.method setMotionContext(Landroid/hardware/scontext/SContextMotion;)V
    .locals 0
    .param p1    # Landroid/hardware/scontext/SContextMotion;

    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mMotionContext:Landroid/hardware/scontext/SContextMotion;

    return-void
.end method

.method setMovementContext(Landroid/hardware/scontext/SContextMovement;)V
    .locals 0
    .param p1    # Landroid/hardware/scontext/SContextMovement;

    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mMovementContext:Landroid/hardware/scontext/SContextMovement;

    return-void
.end method

.method setMovementForPositioningContext(Landroid/hardware/scontext/SContextMovementForPositioning;)V
    .locals 0
    .param p1    # Landroid/hardware/scontext/SContextMovementForPositioning;

    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mMovementForPositioningContext:Landroid/hardware/scontext/SContextMovementForPositioning;

    return-void
.end method

.method setPedometerContext(Landroid/hardware/scontext/SContextPedometer;)V
    .locals 0
    .param p1    # Landroid/hardware/scontext/SContextPedometer;

    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mPedometerContext:Landroid/hardware/scontext/SContextPedometer;

    return-void
.end method

.method setPutDownMotionContext(Landroid/hardware/scontext/SContextPutDownMotion;)V
    .locals 0
    .param p1    # Landroid/hardware/scontext/SContextPutDownMotion;

    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mPutDownMotionContext:Landroid/hardware/scontext/SContextPutDownMotion;

    return-void
.end method

.method setShakeMotionContext(Landroid/hardware/scontext/SContextShakeMotion;)V
    .locals 0
    .param p1    # Landroid/hardware/scontext/SContextShakeMotion;

    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mShakeMotionContext:Landroid/hardware/scontext/SContextShakeMotion;

    return-void
.end method

.method setStepCountAlertContext(Landroid/hardware/scontext/SContextStepCountAlert;)V
    .locals 0
    .param p1    # Landroid/hardware/scontext/SContextStepCountAlert;

    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mStepCountAlertContext:Landroid/hardware/scontext/SContextStepCountAlert;

    return-void
.end method

.method setWakeUpVoiceContext(Landroid/hardware/scontext/SContextWakeUpVoice;)V
    .locals 0
    .param p1    # Landroid/hardware/scontext/SContextWakeUpVoice;

    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mWakeUpVoiceContext:Landroid/hardware/scontext/SContextWakeUpVoice;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    iget-wide v0, p0, Landroid/hardware/scontext/SContextEvent;->timestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mApproachContext:Landroid/hardware/scontext/SContextApproach;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mPedometerContext:Landroid/hardware/scontext/SContextPedometer;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mStepCountAlertContext:Landroid/hardware/scontext/SContextStepCountAlert;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mMotionContext:Landroid/hardware/scontext/SContextMotion;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mMovementContext:Landroid/hardware/scontext/SContextMovement;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mAutoRotationContext:Landroid/hardware/scontext/SContextAutoRotation;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mAirMotionContext:Landroid/hardware/scontext/SContextAirMotion;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEnvironmentContext:Landroid/hardware/scontext/SContextEnvironment;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mMovementForPositioningContext:Landroid/hardware/scontext/SContextMovementForPositioning;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mCurrentStatusForPositioningContext:Landroid/hardware/scontext/SContextCurrentStatusForPositioning;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mCallPoseContext:Landroid/hardware/scontext/SContextCallPose;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mShakeMotionContext:Landroid/hardware/scontext/SContextShakeMotion;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mFlipCoverActionContext:Landroid/hardware/scontext/SContextFlipCoverAction;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mGyroTemperatureContext:Landroid/hardware/scontext/SContextGyroTemperature;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mPutDownMotionContext:Landroid/hardware/scontext/SContextPutDownMotion;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mWakeUpVoiceContext:Landroid/hardware/scontext/SContextWakeUpVoice;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
