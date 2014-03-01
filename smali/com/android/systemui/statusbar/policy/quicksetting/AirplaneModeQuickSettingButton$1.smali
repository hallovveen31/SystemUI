.class Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$1;
.super Landroid/content/BroadcastReceiver;
.source "AirplaneModeQuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 72
    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->isNetworkSupported:Z

    if-nez v2, :cond_3

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 74
    const-string v2, "state"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 75
    .local v0, enabled:Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mAirplaneMode:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;)Z

    move-result v2

    if-eq v0, v2, :cond_0

    .line 76
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;

    #setter for: Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mAirplaneMode:Z
    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->access$002(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;Z)Z

    .line 79
    :cond_0
    const-string v2, "STATUSBAR-AirplaneModeQuickSettingButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AirplaneMode onReceive("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mAirplaneMode:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;

    if-eqz v0, :cond_2

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->setActivateStatus(I)V

    .line 84
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;

    #setter for: Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mChangingMode:Z
    invoke-static {v1, v5}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->access$102(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;Z)Z

    .line 100
    .end local v0           #enabled:Z
    :cond_1
    :goto_1
    return-void

    .line 81
    .restart local v0       #enabled:Z
    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    .line 86
    .end local v0           #enabled:Z
    :cond_3
    const-string v2, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 90
    const-string v2, "PHONE_IN_ECM_STATE"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mIsWaitingForEcmExit:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->access$200(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;

    #setter for: Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mIsWaitingForEcmExit:Z
    invoke-static {v2, v5}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->access$202(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;Z)Z

    .line 93
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;

    #calls: Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->unsafe(Z)V
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->access$300(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;Z)V

    goto :goto_1

    .line 95
    :cond_4
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V

    goto :goto_1
.end method
