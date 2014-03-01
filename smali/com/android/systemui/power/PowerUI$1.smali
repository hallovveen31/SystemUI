.class Lcom/android/systemui/power/PowerUI$1;
.super Landroid/content/BroadcastReceiver;
.source "PowerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/PowerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerUI;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerUI;)V
    .locals 0
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 224
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 225
    .local v3, action:Ljava/lang/String;
    const-string v16, "android.intent.action.BATTERY_CHANGED"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1d

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v7, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 227
    .local v7, oldBatteryLevel:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    const-string v17, "level"

    const/16 v18, 0x64

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v9, v0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 229
    .local v9, oldBatteryStatus:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    const-string v17, "status"

    const/16 v18, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    .line 232
    .local v6, oldBatteryHealth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    const-string v17, "health"

    const/16 v18, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v12, v0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 235
    .local v12, oldPlugType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    const-string v17, "plugged"

    const/16 v18, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v11, v0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    .line 237
    .local v11, oldInvalidCharger:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    const-string v17, "invalid_charger"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v8, v0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    .line 239
    .local v8, oldBatteryOnline:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    const-string v17, "online"

    const/16 v18, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/systemui/power/PowerUI;->mBatteryChargetype:I

    .line 241
    .local v5, oldBatteryChargetype:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    const-string v17, "charge_type"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/systemui/power/PowerUI;->mBatteryChargetype:I

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    const-string v17, "current_avg"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/systemui/power/PowerUI;->mBatteryCurrentavg:I

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    move/from16 v16, v0

    if-eqz v16, :cond_a

    const/4 v14, 0x1

    .line 245
    .local v14, plugged:Z
    :goto_0
    if-eqz v12, :cond_b

    const/4 v13, 0x1

    .line 247
    .local v13, oldPlugged:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    #calls: Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I
    invoke-static {v0, v7}, Lcom/android/systemui/power/PowerUI;->access$000(Lcom/android/systemui/power/PowerUI;I)I

    move-result v10

    .line 248
    .local v10, oldBucket:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    move/from16 v17, v0

    #calls: Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I
    invoke-static/range {v16 .. v17}, Lcom/android/systemui/power/PowerUI;->access$000(Lcom/android/systemui/power/PowerUI;I)I

    move-result v4

    .line 292
    .local v4, bucket:I
    if-nez v14, :cond_c

    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_c

    if-gez v4, :cond_c

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/power/PowerUI;->showLowBatteryWarning()V

    .line 317
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v9, v0, :cond_3

    .line 318
    const/16 v16, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_11

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/power/PowerUI;->notifyFullBatteryNotification()V

    .line 324
    :cond_1
    :goto_3
    const/16 v16, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_14

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mNotChargeScreenDimLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mNotChargePartialLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v16, v0

    if-nez v16, :cond_13

    .line 326
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const-string v17, "power"

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/PowerManager;

    .line 327
    .local v15, powerManager:Landroid/os/PowerManager;
    if-nez v15, :cond_12

    .line 328
    const-string v16, "PowerUI"

    const-string v17, "onReceive : fail to get PowerManager reference"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    .end local v15           #powerManager:Landroid/os/PowerManager;
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/power/PowerUI;->showNotChargeDialog()V

    .line 351
    :cond_3
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v6, v0, :cond_5

    .line 352
    const/16 v16, 0x5

    move/from16 v0, v16

    if-eq v0, v6, :cond_4

    const/16 v16, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 353
    :cond_4
    const-string v16, "PowerUI"

    const-string v17, "Overvoltage (recovered) so turn on the screen."

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const-string v16, "KOR"

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_5

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/power/PowerUI;->turnOnScreen()V

    .line 360
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v12, v0, :cond_7

    .line 361
    if-eqz v12, :cond_6

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v0, v12, :cond_7

    .line 362
    :cond_6
    if-nez v12, :cond_7

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Lcom/android/systemui/power/PowerUI;->playSound(I)V

    .line 368
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v8, v0, :cond_8

    .line 369
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v0, v8, :cond_15

    const/16 v16, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_15

    .line 370
    const-string v16, "PowerUI"

    const-string v17, "start Wireless charging"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    const v17, 0x7f0a011e

    invoke-virtual/range {v16 .. v17}, Lcom/android/systemui/power/PowerUI;->showWirelessChargeDialog(I)V

    .line 393
    :cond_8
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/systemui/power/PowerUI;->mVZW:Z

    move/from16 v16, v0

    if-eqz v16, :cond_9

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryChargetype:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v5, v0, :cond_9

    .line 395
    const/16 v16, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryChargetype:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1c

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    const v17, 0x7f0a0126

    invoke-virtual/range {v16 .. v17}, Lcom/android/systemui/power/PowerUI;->showAbnormalChargeWarning(I)V

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    const v17, 0x7f0a0128

    invoke-virtual/range {v16 .. v17}, Lcom/android/systemui/power/PowerUI;->notifyAbnormalChargeNotification(I)V

    .line 422
    .end local v4           #bucket:I
    .end local v5           #oldBatteryChargetype:I
    .end local v6           #oldBatteryHealth:I
    .end local v7           #oldBatteryLevel:I
    .end local v8           #oldBatteryOnline:I
    .end local v9           #oldBatteryStatus:I
    .end local v10           #oldBucket:I
    .end local v11           #oldInvalidCharger:I
    .end local v12           #oldPlugType:I
    .end local v13           #oldPlugged:Z
    .end local v14           #plugged:Z
    :cond_9
    :goto_7
    return-void

    .line 244
    .restart local v5       #oldBatteryChargetype:I
    .restart local v6       #oldBatteryHealth:I
    .restart local v7       #oldBatteryLevel:I
    .restart local v8       #oldBatteryOnline:I
    .restart local v9       #oldBatteryStatus:I
    .restart local v11       #oldInvalidCharger:I
    .restart local v12       #oldPlugType:I
    :cond_a
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 245
    .restart local v14       #plugged:Z
    :cond_b
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 297
    .restart local v4       #bucket:I
    .restart local v10       #oldBucket:I
    .restart local v13       #oldPlugged:Z
    :cond_c
    if-ge v4, v10, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_e

    if-gez v4, :cond_e

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/power/PowerUI;->isOverCurrent()Z

    move-result v16

    if-eqz v16, :cond_d

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/power/PowerUI;->showLowBatteryWarning()V

    goto/16 :goto_2

    .line 302
    :cond_d
    if-nez v14, :cond_0

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/power/PowerUI;->showLowBatteryWarning()V

    goto/16 :goto_2

    .line 305
    :cond_e
    if-le v4, v10, :cond_f

    if-lez v4, :cond_f

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/power/PowerUI;->dismissLowBatteryWarning()V

    goto/16 :goto_2

    .line 307
    :cond_f
    if-eqz v14, :cond_0

    if-nez v13, :cond_0

    if-gez v4, :cond_0

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/power/PowerUI;->isOverCurrent()Z

    move-result v16

    if-nez v16, :cond_10

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/power/PowerUI;->dismissLowBatteryWarning()V

    goto/16 :goto_2

    .line 312
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/power/PowerUI;->showLowBatteryWarning()V

    goto/16 :goto_2

    .line 320
    :cond_11
    const/16 v16, 0x5

    move/from16 v0, v16

    if-ne v0, v9, :cond_1

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/power/PowerUI;->cancelFullBatteryNotification()V

    goto/16 :goto_3

    .line 330
    .restart local v15       #powerManager:Landroid/os/PowerManager;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    const/16 v17, 0x6

    const-string v18, "PowerUI"

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/systemui/power/PowerUI;->mNotChargeScreenDimLock:Landroid/os/PowerManager$WakeLock;

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    const-string v18, "PowerUI"

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/systemui/power/PowerUI;->mNotChargePartialLock:Landroid/os/PowerManager$WakeLock;

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mNotChargeScreenDimLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mNotChargePartialLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto/16 :goto_4

    .line 336
    .end local v15           #powerManager:Landroid/os/PowerManager;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mNotChargeScreenDimLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mNotChargePartialLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto/16 :goto_4

    .line 341
    :cond_14
    const/16 v16, 0x4

    move/from16 v0, v16

    if-ne v0, v9, :cond_3

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/power/PowerUI;->dismissNotChargeDialog()V

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mNotChargeScreenDimLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v16, v0

    if-eqz v16, :cond_3

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mNotChargeScreenDimLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mNotChargePartialLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_5

    .line 372
    :cond_15
    const/16 v16, 0xa

    move/from16 v0, v16

    if-ne v0, v8, :cond_17

    const/16 v16, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_16

    const/16 v16, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_17

    .line 374
    :cond_16
    const-string v16, "PowerUI"

    const-string v17, "switch from wireless to cable"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    const v17, 0x7f0a011f

    invoke-virtual/range {v16 .. v17}, Lcom/android/systemui/power/PowerUI;->showWirelessChargeDialog(I)V

    goto/16 :goto_6

    .line 376
    :cond_17
    const/16 v16, 0x3

    move/from16 v0, v16

    if-eq v0, v8, :cond_18

    const/16 v16, 0x4

    move/from16 v0, v16

    if-ne v0, v8, :cond_19

    :cond_18
    const/16 v16, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_19

    .line 378
    const-string v16, "PowerUI"

    const-string v17, "switch from cable to wireless"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    const v17, 0x7f0a0120

    invoke-virtual/range {v16 .. v17}, Lcom/android/systemui/power/PowerUI;->showWirelessChargeDialog(I)V

    goto/16 :goto_6

    .line 380
    :cond_19
    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v0, v8, :cond_1a

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1a

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/power/PowerUI;->dismissWirelessChargeDialog()V

    goto/16 :goto_6

    .line 382
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/systemui/power/PowerUI;->mVZW:Z

    move/from16 v16, v0

    if-eqz v16, :cond_8

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    move/from16 v16, v0

    if-nez v16, :cond_1b

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    const v17, 0x7f0a0123

    invoke-virtual/range {v16 .. v17}, Lcom/android/systemui/power/PowerUI;->showAbnormalChargeWarning(I)V

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    const v17, 0x7f0a0123

    invoke-virtual/range {v16 .. v17}, Lcom/android/systemui/power/PowerUI;->notifyAbnormalChargeNotification(I)V

    goto/16 :goto_6

    .line 386
    :cond_1b
    if-nez v8, :cond_8

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/power/PowerUI;->dismissAbnormalChargeWarning()V

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/power/PowerUI;->cancelAbnormalChargeNotification()V

    goto/16 :goto_6

    .line 398
    :cond_1c
    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v0, v5, :cond_9

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/power/PowerUI;->dismissAbnormalChargeWarning()V

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/power/PowerUI;->cancelAbnormalChargeNotification()V

    goto/16 :goto_7

    .line 404
    .end local v4           #bucket:I
    .end local v5           #oldBatteryChargetype:I
    .end local v6           #oldBatteryHealth:I
    .end local v7           #oldBatteryLevel:I
    .end local v8           #oldBatteryOnline:I
    .end local v9           #oldBatteryStatus:I
    .end local v10           #oldBucket:I
    .end local v11           #oldInvalidCharger:I
    .end local v12           #oldPlugType:I
    .end local v13           #oldPlugged:Z
    .end local v14           #plugged:Z
    :cond_1d
    const-string v16, "android.intent.action.LOCALE_CHANGED"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1e

    .line 405
    const/16 v16, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    move-object/from16 v16, v0

    if-eqz v16, :cond_9

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/power/PowerUI;->cancelFullBatteryNotification()V

    .line 407
    const-string v16, "PowerUI"

    const-string v17, "Language is changed so notify FullBatteryNotification again"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/power/PowerUI;->notifyFullBatteryNotification()V

    goto/16 :goto_7

    .line 410
    :cond_1e
    const-string v16, "com.android.server.PowerManagerService.action.FAILED_TO_DETECT_FACE_BEFORE_DIM"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1f

    .line 411
    const-string v16, "PowerUI"

    const-string v17, "Face detection is failed before dimming"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/power/PowerUI;->notifyFaceDetectionFailureNotification()V

    goto/16 :goto_7

    .line 413
    :cond_1f
    const-string v16, "com.sec.factory.app.factorytest.FTA_ON"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_20

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    .line 415
    const-string v16, "PowerUI"

    const-string v17, "FTA mode ON"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 416
    :cond_20
    const-string v16, "com.sec.factory.app.factorytest.FTA_OFF"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_21

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    .line 418
    const-string v16, "PowerUI"

    const-string v17, "FTA mode OFF"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 420
    :cond_21
    const-string v16, "PowerUI"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "unknown intent: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7
.end method
