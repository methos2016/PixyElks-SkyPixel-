.class Ldji/pilot/publics/objects/DJIBaseActivity$6$1;
.super Ljava/lang/Object;
.source "DJIBaseActivity.java"

# interfaces
.implements Ldji/midware/interfaces/DJIDataCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldji/pilot/publics/objects/DJIBaseActivity$6;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ldji/pilot/publics/objects/DJIBaseActivity$6;


# direct methods
.method constructor <init>(Ldji/pilot/publics/objects/DJIBaseActivity$6;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ldji/pilot/publics/objects/DJIBaseActivity$6$1;->this$1:Ldji/pilot/publics/objects/DJIBaseActivity$6;

    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ldji/midware/data/config/P3/Ccode;)V
    .locals 5
    .param p1, "ccode"    # Ldji/midware/data/config/P3/Ccode;

    .prologue
    .line 452
    invoke-static {}, Ldji/log/DJILogHelper;->getInstance()Ldji/log/DJILogHelper;

    move-result-object v0

    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ControlCmd start "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Ldji/log/DJILogHelper;->LOGD(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 453
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 5
    .param p1, "model"    # Ljava/lang/Object;

    .prologue
    .line 447
    invoke-static {}, Ldji/log/DJILogHelper;->getInstance()Ldji/log/DJILogHelper;

    move-result-object v0

    const-string v1, ""

    const-string v2, "ControlCmd start success"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Ldji/log/DJILogHelper;->LOGD(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 448
    return-void
.end method
