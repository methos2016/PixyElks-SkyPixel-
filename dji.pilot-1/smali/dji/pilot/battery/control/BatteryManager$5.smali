.class Ldji/pilot/battery/control/BatteryManager$5;
.super Ljava/lang/Object;
.source "BatteryManager.java"

# interfaces
.implements Ldji/midware/interfaces/DJIDataCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldji/pilot/battery/control/BatteryManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldji/pilot/battery/control/BatteryManager;


# direct methods
.method constructor <init>(Ldji/pilot/battery/control/BatteryManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ldji/pilot/battery/control/BatteryManager$5;->this$0:Ldji/pilot/battery/control/BatteryManager;

    .line 990
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ldji/midware/data/config/P3/Ccode;)V
    .locals 3
    .param p1, "ccode"    # Ldji/midware/data/config/P3/Ccode;

    .prologue
    const/4 v2, 0x0

    .line 999
    iget-object v0, p0, Ldji/pilot/battery/control/BatteryManager$5;->this$0:Ldji/pilot/battery/control/BatteryManager;

    # getter for: Ldji/pilot/battery/control/BatteryManager;->mBMHandler:Ldji/pilot/battery/control/BatteryManager$BMHandler;
    invoke-static {v0}, Ldji/pilot/battery/control/BatteryManager;->access$9(Ldji/pilot/battery/control/BatteryManager;)Ldji/pilot/battery/control/BatteryManager$BMHandler;

    move-result-object v0

    const/16 v1, 0x1005

    invoke-virtual {v0, v1, v2, v2}, Ldji/pilot/battery/control/BatteryManager$BMHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1000
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 3
    .param p1, "model"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 994
    iget-object v0, p0, Ldji/pilot/battery/control/BatteryManager$5;->this$0:Ldji/pilot/battery/control/BatteryManager;

    # getter for: Ldji/pilot/battery/control/BatteryManager;->mBMHandler:Ldji/pilot/battery/control/BatteryManager$BMHandler;
    invoke-static {v0}, Ldji/pilot/battery/control/BatteryManager;->access$9(Ldji/pilot/battery/control/BatteryManager;)Ldji/pilot/battery/control/BatteryManager$BMHandler;

    move-result-object v0

    const/16 v1, 0x1004

    invoke-virtual {v0, v1, v2, v2}, Ldji/pilot/battery/control/BatteryManager$BMHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 995
    return-void
.end method
