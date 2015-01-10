.class Lcom/android/server/am/ActivityManagerService$MainHandler$1;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService$MainHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/ActivityManagerService$MainHandler;

.field final synthetic val$memInfos:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService$MainHandler;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;->this$1:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;->val$memInfos:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 38

    new-instance v24, Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;->val$memInfos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move-object/from16 v0, v24

    invoke-direct {v0, v5}, Landroid/util/SparseArray;-><init>(I)V

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;->val$memInfos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v19

    :goto_0
    move/from16 v0, v23

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;->val$memInfos:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessMemInfo;

    iget v5, v4, Lcom/android/server/am/ProcessMemInfo;->pid:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v23, v23, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;->this$1:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;->this$1:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v5, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v11

    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;->this$1:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v5}, Lcom/android/internal/os/ProcessCpuTracker;->countStats()I

    move-result v19

    const/16 v23, 0x0

    :goto_1
    move/from16 v0, v23

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;->this$1:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v29

    move-object/from16 v0, v29

    iget-wide v12, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    const-wide/16 v14, 0x0

    cmp-long v5, v12, v14

    if-lez v5, :cond_1

    move-object/from16 v0, v29

    iget v5, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/Debug;->getPss(I[J)J

    move-result-wide v32

    const-wide/16 v12, 0x0

    cmp-long v5, v32, v12

    if-lez v5, :cond_1

    move-object/from16 v0, v29

    iget v5, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v5

    if-gez v5, :cond_1

    new-instance v4, Lcom/android/server/am/ProcessMemInfo;

    move-object/from16 v0, v29

    iget-object v5, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    move-object/from16 v0, v29

    iget v6, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    const/16 v7, -0x11

    const/4 v8, -0x1

    const-string v9, "native"

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/android/server/am/ProcessMemInfo;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    move-wide/from16 v0, v32

    iput-wide v0, v4, Lcom/android/server/am/ProcessMemInfo;->pss:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;->val$memInfos:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v23, v23, 0x1

    goto :goto_1

    :cond_2
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v36, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;->val$memInfos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v19

    :goto_2
    move/from16 v0, v23

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;->val$memInfos:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessMemInfo;

    iget-wide v10, v4, Lcom/android/server/am/ProcessMemInfo;->pss:J

    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-nez v5, :cond_3

    iget v5, v4, Lcom/android/server/am/ProcessMemInfo;->pid:I

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/Debug;->getPss(I[J)J

    move-result-wide v10

    iput-wide v10, v4, Lcom/android/server/am/ProcessMemInfo;->pss:J

    :cond_3
    iget-wide v10, v4, Lcom/android/server/am/ProcessMemInfo;->pss:J

    add-long v36, v36, v10

    add-int/lit8 v23, v23, 0x1

    goto :goto_2

    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;->val$memInfos:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/server/am/ActivityManagerService$MainHandler$1$1;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/server/am/ActivityManagerService$MainHandler$1$1;-><init>(Lcom/android/server/am/ActivityManagerService$MainHandler$1;)V

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v35, Ljava/lang/StringBuilder;

    const/16 v5, 0x80

    move-object/from16 v0, v35

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v34, Ljava/lang/StringBuilder;

    const/16 v5, 0x80

    move-object/from16 v0, v34

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Low on memory -- "

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "total"

    const/4 v6, 0x0

    move-object/from16 v0, v35

    move-wide/from16 v1, v36

    invoke-static {v0, v1, v2, v5, v6}, Lcom/android/server/am/ActivityManagerService;->appendMemBucket(Ljava/lang/StringBuilder;JLjava/lang/String;Z)V

    const-string v5, "total"

    const/4 v6, 0x1

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-static {v0, v1, v2, v5, v6}, Lcom/android/server/am/ActivityManagerService;->appendMemBucket(Ljava/lang/StringBuilder;JLjava/lang/String;Z)V

    new-instance v28, Ljava/lang/StringBuilder;

    const/16 v5, 0x400

    move-object/from16 v0, v28

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Low on memory:\n"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v22, 0x1

    const/high16 v27, -0x80000000

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;->val$memInfos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v19

    :goto_3
    move/from16 v0, v23

    move/from16 v1, v19

    if-ge v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;->val$memInfos:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessMemInfo;

    iget v5, v4, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    const/16 v6, -0x11

    if-eq v5, v6, :cond_e

    iget v5, v4, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    const/4 v6, 0x5

    if-lt v5, v6, :cond_5

    iget v5, v4, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    const/4 v6, 0x6

    if-eq v5, v6, :cond_5

    iget v5, v4, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_e

    :cond_5
    iget v5, v4, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    move/from16 v0, v27

    if-eq v0, v5, :cond_c

    iget v0, v4, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    move/from16 v27, v0

    iget v5, v4, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-gtz v5, :cond_6

    const-string v5, " / "

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget v5, v4, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-ltz v5, :cond_b

    if-eqz v22, :cond_7

    const-string v5, ":"

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v22, 0x0

    :cond_7
    const-string v5, "\n\t at "

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    iget v5, v4, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-gtz v5, :cond_8

    iget-wide v10, v4, Lcom/android/server/am/ProcessMemInfo;->pss:J

    iget-object v5, v4, Lcom/android/server/am/ProcessMemInfo;->name:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, v35

    invoke-static {v0, v10, v11, v5, v6}, Lcom/android/server/am/ActivityManagerService;->appendMemBucket(Ljava/lang/StringBuilder;JLjava/lang/String;Z)V

    :cond_8
    iget-wide v10, v4, Lcom/android/server/am/ProcessMemInfo;->pss:J

    iget-object v5, v4, Lcom/android/server/am/ProcessMemInfo;->name:Ljava/lang/String;

    const/4 v6, 0x1

    move-object/from16 v0, v34

    invoke-static {v0, v10, v11, v5, v6}, Lcom/android/server/am/ActivityManagerService;->appendMemBucket(Ljava/lang/StringBuilder;JLjava/lang/String;Z)V

    iget v5, v4, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-ltz v5, :cond_e

    add-int/lit8 v5, v23, 0x1

    move/from16 v0, v19

    if-ge v5, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;->val$memInfos:Ljava/util/ArrayList;

    add-int/lit8 v6, v23, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessMemInfo;

    iget v5, v5, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    move/from16 v0, v27

    if-eq v5, v0, :cond_e

    :cond_9
    const-string v5, "("

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v26, 0x0

    :goto_5
    sget-object v5, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_ADJ:[I

    array-length v5, v5

    move/from16 v0, v26

    if-ge v0, v5, :cond_d

    sget-object v5, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_ADJ:[I

    aget v5, v5, v26

    iget v6, v4, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-ne v5, v6, :cond_a

    sget-object v5, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_LABEL:[Ljava/lang/String;

    aget-object v5, v5, v26

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_ADJ:[I

    aget v5, v5, v26

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_a
    add-int/lit8 v26, v26, 0x1

    goto :goto_5

    :cond_b
    const-string v5, "$"

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_c
    const-string v5, " "

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "$"

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_d
    const-string v5, ")"

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    const-string v5, "  "

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v4, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    invoke-static {v5}, Lcom/android/server/am/ProcessList;->makeOomAdjString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v5, v4, Lcom/android/server/am/ProcessMemInfo;->procState:I

    invoke-static {v5}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v10, v4, Lcom/android/server/am/ProcessMemInfo;->pss:J

    move-object/from16 v0, v28

    invoke-static {v0, v10, v11}, Lcom/android/server/am/ProcessList;->appendRamKb(Ljava/lang/StringBuilder;J)V

    const-string v5, " kB: "

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v4, Lcom/android/server/am/ProcessMemInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v4, Lcom/android/server/am/ProcessMemInfo;->pid:I

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") "

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v4, Lcom/android/server/am/ProcessMemInfo;->adjType:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0xa

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v5, v4, Lcom/android/server/am/ProcessMemInfo;->adjReason:Ljava/lang/String;

    if-eqz v5, :cond_f

    const-string v5, "                      "

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v4, Lcom/android/server/am/ProcessMemInfo;->adjReason:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0xa

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_f
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_3

    :cond_10
    const-string v5, "           "

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v28

    move-wide/from16 v1, v36

    invoke-static {v0, v1, v2}, Lcom/android/server/am/ProcessList;->appendRamKb(Ljava/lang/StringBuilder;J)V

    const-string v5, " kB: TOTAL\n"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x9

    new-array v0, v5, [J

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/os/Debug;->getMemInfo([J)V

    const-string v5, "  MemInfo: "

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x5

    aget-wide v10, v25, v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " kB slab, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x4

    aget-wide v10, v25, v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " kB shmem, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    aget-wide v10, v25, v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " kB buffers, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x3

    aget-wide v10, v25, v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " kB cached, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    aget-wide v10, v25, v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " kB free\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x8

    aget-wide v10, v25, v5

    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-eqz v5, :cond_11

    const-string v5, "  ZRAM: "

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x8

    aget-wide v10, v25, v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " kB RAM, "

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x6

    aget-wide v10, v25, v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " kB swap total, "

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x7

    aget-wide v10, v25, v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " kB swap free\n"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    const-string v5, "ActivityManager"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v21, Ljava/lang/StringBuilder;

    const/16 v5, 0x400

    move-object/from16 v0, v21

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v5, 0xa

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v5, 0xa

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v5, 0xa

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v20, Ljava/io/StringWriter;

    invoke-direct/range {v20 .. v20}, Ljava/io/StringWriter;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;->this$1:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v13, v5, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    :try_start_2
    new-instance v7, Lcom/android/internal/util/FastPrintWriter;

    const/4 v5, 0x0

    const/16 v6, 0x100

    move-object/from16 v0, v20

    invoke-direct {v7, v0, v5, v6}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    const/4 v5, 0x0

    new-array v8, v5, [Ljava/lang/String;

    invoke-virtual {v7}, Ljava/io/PrintWriter;->println()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;->this$1:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/am/ActivityManagerService;->dumpProcessesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/PrintWriter;->println()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;->this$1:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/am/ActiveServices;->dumpServicesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZLjava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/PrintWriter;->println()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;->this$1:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/am/ActivityManagerService;->dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZLjava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/PrintWriter;->flush()V

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual/range {v20 .. v20}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;->this$1:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v9, v5, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-string v10, "lowmem"

    const/4 v11, 0x0

    const-string v12, "system_server"

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v9 .. v18}, Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;->this$1:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v6, v5, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v30

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;->this$1:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-wide v10, v5, Lcom/android/server/am/ActivityManagerService;->mLastMemUsageReportTime:J

    cmp-long v5, v10, v30

    if-gez v5, :cond_12

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;->this$1:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-wide/from16 v0, v30

    iput-wide v0, v5, Lcom/android/server/am/ActivityManagerService;->mLastMemUsageReportTime:J

    :cond_12
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return-void

    :catchall_1
    move-exception v5

    :try_start_4
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5

    :catchall_2
    move-exception v5

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v5
.end method
