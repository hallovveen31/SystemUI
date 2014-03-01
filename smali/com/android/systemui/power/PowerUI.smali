.class public Lcom/android/systemui/power/PowerUI;
.super Lcom/android/systemui/SystemUI;
.source "PowerUI.java"


# static fields
.field static final ABNORMAL_CHARGE_SHARED_PREFS:Ljava/lang/String; = "com.android.systemui.power_abnormal_charge"

.field static final ACTION_FAIL_TO_DETECT_FACE_BEFORE_DIM:Ljava/lang/String; = "com.android.server.PowerManagerService.action.FAILED_TO_DETECT_FACE_BEFORE_DIM"

.field static final ACTION_FTA_OFF:Ljava/lang/String; = "com.sec.factory.app.factorytest.FTA_OFF"

.field static final ACTION_FTA_ON:Ljava/lang/String; = "com.sec.factory.app.factorytest.FTA_ON"

.field static final ACTION_LOW_BATTERY_WARNING:Ljava/lang/String; = "com.android.systemui.power.action.LOW_BATTERY_WARNING"

.field static final BATTERY_CHARGETYPE_SLOW:I = 0x2

.field static final BATTERY_ONLINE_INCOMPATIBLE_CHARGER:I = 0x0

.field static final BATTERY_ONLINE_NONE:I = 0x1

.field static final BATTERY_ONLINE_TA:I = 0x3

.field static final BATTERY_ONLINE_USB:I = 0x4

.field static final BATTERY_ONLINE_WIRELESS_CHARGER:I = 0xa

.field static final BATTERY_PLUGGED_NONE:I = 0x0

.field static final DEBUG:Z = false

.field static final DEVICE_TYPE_PHONE:I = 0x1

.field static final DEVICE_TYPE_TABLET:I = 0x2

.field private static final EXTRA_CHARGE_TYPE:Ljava/lang/String; = "charge_type"

.field private static final EXTRA_CURRENT_AVG:Ljava/lang/String; = "current_avg"

.field private static final EXTRA_ONLINE:Ljava/lang/String; = "online"

.field static final FACE_DETECTION_FAILURE_DURATION:I = 0xbb8

.field static final FULLBATTERY_SCREEN_TIMEOUT:I = 0x4e20

.field static final INCOMPATIBLE_CHARGER_DO_NOT_SHOW:Ljava/lang/String; = "DoNotShowIncompatibleChargerWarning"

.field static final LOWBATTERY_SCREEN_TIMEOUT:I = 0x3a98

.field static final NOT_CHARGE_PERIOD:I = 0xea60

.field static final OVER_CURRENT_THRESHOLD:I = 0x0

.field static final SLOW_CHARGE_DO_NOT_SHOW:Ljava/lang/String; = "DoNotShowSlowChargeWarning"

.field static final SOUND_PATH_BATTERY_CAUTION:Ljava/lang/String; = "system/media/audio/ui/TW_Battery_caution.ogg"

.field static final SOUND_PATH_CHARGER_CONNECTION:Ljava/lang/String; = "system/media/audio/ui/Charger_Connection.ogg"

.field static final SOUND_TYPE_BATTERY_CAUTION:I = 0x3

.field static final SOUND_TYPE_CHARGER_CONNECTION:I = 0x1

.field static final SOUND_TYPE_LOW_BATTERY:I = 0x2

.field static final TAG:Ljava/lang/String; = "PowerUI"

.field static final WIRELESS_CHARGE_DURATION:I = 0xfa0


# instance fields
.field mAbnormalChargeDialog:Landroid/app/AlertDialog;

.field mAbnormalChargeNotification:Landroid/app/Notification;

.field mAbnormalChargeTextView:Landroid/widget/TextView;

.field mBatteryChargetype:I

.field mBatteryCurrentavg:I

.field mBatteryHealth:I

.field mBatteryLevel:I

.field mBatteryLevelTextView:Landroid/widget/TextView;

.field mBatteryOnline:I

.field mBatteryStatus:I

.field mDeviceType:I

.field mFTAMode:Z

.field mFaceDetectionFailureNotification:Landroid/app/Notification;

.field mFaceDetectionFailureTask:Ljava/lang/Runnable;

.field mFullBatteryNotification:Landroid/app/Notification;

.field mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mInvalidCharger:I

.field mInvalidChargerDialog:Landroid/app/AlertDialog;

.field mLowBatteryAlertCloseLevel:I

.field mLowBatteryDialog:Landroid/app/AlertDialog;

.field mLowBatteryReminderLevels:[I

.field mNotChargeDialog:Landroid/app/AlertDialog;

.field mNotChargePartialLock:Landroid/os/PowerManager$WakeLock;

.field mNotChargeScreenDimLock:Landroid/os/PowerManager$WakeLock;

.field mNotChargeTask:Ljava/lang/Runnable;

.field mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

.field mPlugType:I

.field mVZW:Z

.field mWirelessChargeDialog:Landroid/app/AlertDialog;

.field mWirelessChargeTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 113
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    .line 115
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 116
    iput v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 117
    iput v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    .line 118
    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 119
    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    .line 120
    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    .line 121
    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargetype:I

    .line 122
    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryCurrentavg:I

    .line 123
    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    .line 126
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    .line 146
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    .line 147
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mVZW:Z

    .line 221
    new-instance v0, Lcom/android/systemui/power/PowerUI$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$1;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 658
    new-instance v0, Lcom/android/systemui/power/PowerUI$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$6;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mNotChargeTask:Ljava/lang/Runnable;

    .line 713
    new-instance v0, Lcom/android/systemui/power/PowerUI$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$8;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWirelessChargeTask:Ljava/lang/Runnable;

    .line 917
    new-instance v0, Lcom/android/systemui/power/PowerUI$11;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$11;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/power/PowerUI;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v0

    return v0
.end method

.method private findBatteryLevelBucket(I)I
    .locals 4
    .parameter "level"

    .prologue
    const/4 v2, 0x0

    .line 206
    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    if-lt p1, v3, :cond_1

    .line 207
    const/4 v2, 0x1

    .line 215
    :cond_0
    :goto_0
    return v2

    .line 209
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v3, v3, v2

    if-gt p1, v3, :cond_0

    .line 212
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    array-length v0, v2

    .line 213
    .local v0, N:I
    add-int/lit8 v1, v0, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_3

    .line 214
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v2, v2, v1

    if-gt p1, v2, :cond_2

    .line 215
    rsub-int/lit8 v2, v1, -0x1

    goto :goto_0

    .line 213
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 218
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "not possible!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method cancelAbnormalChargeNotification()V
    .locals 3

    .prologue
    .line 972
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargeNotification:Landroid/app/Notification;

    if-eqz v1, :cond_0

    .line 973
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 976
    .local v0, notificationManager:Landroid/app/NotificationManager;
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargeNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 978
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargeNotification:Landroid/app/Notification;

    .line 980
    .end local v0           #notificationManager:Landroid/app/NotificationManager;
    :cond_0
    return-void
.end method

.method cancelFaceDetectionFailureNotification()V
    .locals 3

    .prologue
    .line 907
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    if-eqz v1, :cond_0

    .line 908
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 911
    .local v0, notificationManager:Landroid/app/NotificationManager;
    const v1, 0x7f0a0121

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 913
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    .line 915
    .end local v0           #notificationManager:Landroid/app/NotificationManager;
    :cond_0
    return-void
.end method

.method cancelFullBatteryNotification()V
    .locals 3

    .prologue
    .line 863
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    if-eqz v1, :cond_0

    .line 864
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 867
    .local v0, notificationManager:Landroid/app/NotificationManager;
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 869
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    .line 871
    .end local v0           #notificationManager:Landroid/app/NotificationManager;
    :cond_0
    return-void
.end method

.method dismissAbnormalChargeWarning()V
    .locals 1

    .prologue
    .line 720
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 723
    :cond_0
    return-void
.end method

.method dismissInvalidChargerDialog()V
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 567
    :cond_0
    return-void
.end method

.method dismissLowBatteryWarning()V
    .locals 3

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 427
    const-string v0, "PowerUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closing low battery warning: level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 430
    :cond_0
    return-void
.end method

.method dismissNotChargeDialog()V
    .locals 2

    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mNotChargeTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 596
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mNotChargeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mNotChargeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 599
    :cond_0
    return-void
.end method

.method dismissWirelessChargeDialog()V
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWirelessChargeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWirelessChargeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 668
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 1081
    const-string v0, "mLowBatteryAlertCloseLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1082
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1083
    const-string v0, "mLowBatteryReminderLevels="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1084
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1085
    const-string v0, "mInvalidChargerDialog="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1086
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1087
    const-string v0, "mLowBatteryDialog="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1088
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_1

    const-string v0, "null"

    :goto_1
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1089
    const-string v0, "mBatteryLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1090
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1091
    const-string v0, "mBatteryStatus="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1092
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1093
    const-string v0, "mPlugType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1094
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1095
    const-string v0, "mInvalidCharger="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1096
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1097
    const-string v0, "bucket: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1098
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-direct {p0, v0}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1099
    return-void

    .line 1086
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1088
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method isOverCurrent()Z
    .locals 2

    .prologue
    .line 1071
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryCurrentavg:I

    if-ltz v0, :cond_0

    .line 1072
    const-string v0, "PowerUI"

    const-string v1, "isOverCurrent : not overcurrent"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    const/4 v0, 0x0

    .line 1076
    :goto_0
    return v0

    .line 1075
    :cond_0
    const-string v0, "PowerUI"

    const-string v1, "isOverCurrent : overcurrent"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    const/4 v0, 0x1

    goto :goto_0
.end method

.method notifyAbnormalChargeNotification(I)V
    .locals 10
    .parameter "messageId"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const v7, 0x7f0a0128

    .line 927
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 929
    .local v1, notificationManager:Landroid/app/NotificationManager;
    if-nez v1, :cond_0

    .line 930
    const-string v5, "PowerUI"

    const-string v6, "notifyAbnormalChargeNotification : fail to get NotificationManager reference"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    :goto_0
    return-void

    .line 936
    :cond_0
    if-ne v7, p1, :cond_2

    .line 937
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0125

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 938
    .local v4, title:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 944
    .local v3, text:Ljava/lang/CharSequence;
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargeNotification:Landroid/app/Notification;

    if-nez v5, :cond_1

    .line 945
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargeNotification:Landroid/app/Notification;

    .line 946
    if-ne v7, p1, :cond_4

    .line 947
    iget v5, p0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    if-ne v9, v5, :cond_3

    .line 948
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargeNotification:Landroid/app/Notification;

    const v6, 0x7f020254

    iput v6, v5, Landroid/app/Notification;->icon:I

    .line 949
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargeNotification:Landroid/app/Notification;

    iget v6, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    iput v6, v5, Landroid/app/Notification;->iconLevel:I

    .line 957
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargeNotification:Landroid/app/Notification;

    const/4 v6, -0x2

    iput v6, v5, Landroid/app/Notification;->priority:I

    .line 958
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargeNotification:Landroid/app/Notification;

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Landroid/app/Notification;->when:J

    .line 959
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargeNotification:Landroid/app/Notification;

    iput v9, v5, Landroid/app/Notification;->flags:I

    .line 960
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargeNotification:Landroid/app/Notification;

    iput-object v3, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 963
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 964
    .local v0, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v5, v8, v0, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 966
    .local v2, pi:Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargeNotification:Landroid/app/Notification;

    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v4, v3, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 968
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargeNotification:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->icon:I

    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargeNotification:Landroid/app/Notification;

    invoke-virtual {v1, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 940
    .end local v0           #intent:Landroid/content/Intent;
    .end local v2           #pi:Landroid/app/PendingIntent;
    .end local v3           #text:Ljava/lang/CharSequence;
    .end local v4           #title:Ljava/lang/CharSequence;
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0122

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 941
    .restart local v4       #title:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0124

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #text:Ljava/lang/CharSequence;
    goto :goto_1

    .line 951
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargeNotification:Landroid/app/Notification;

    const v6, 0x7f0200b0

    iput v6, v5, Landroid/app/Notification;->icon:I

    .line 952
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargeNotification:Landroid/app/Notification;

    iget v6, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    iput v6, v5, Landroid/app/Notification;->iconLevel:I

    goto :goto_2

    .line 955
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargeNotification:Landroid/app/Notification;

    const v6, 0x7f0200ba

    iput v6, v5, Landroid/app/Notification;->icon:I

    goto :goto_2
.end method

.method notifyFaceDetectionFailureNotification()V
    .locals 10

    .prologue
    const v9, 0x7f0a0121

    const/4 v8, 0x0

    .line 874
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    if-eqz v5, :cond_0

    .line 875
    const-string v5, "PowerUI"

    const-string v6, "Face detection is already failed."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    :goto_0
    return-void

    .line 879
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 881
    .local v1, notificationManager:Landroid/app/NotificationManager;
    if-nez v1, :cond_1

    .line 882
    const-string v5, "PowerUI"

    const-string v6, "notifyFaceDetectionFailureNotification : fail to get NotificationManager reference"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 886
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0113

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 887
    .local v4, title:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 889
    .local v3, text:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    if-nez v5, :cond_2

    .line 890
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    .line 891
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    const v6, 0x7f0201a6

    iput v6, v5, Landroid/app/Notification;->icon:I

    .line 892
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Landroid/app/Notification;->when:J

    .line 893
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    iput-object v3, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 896
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 897
    .local v0, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v5, v8, v0, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 899
    .local v2, pi:Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v4, v3, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 901
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    invoke-virtual {v1, v9, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 903
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureTask:Ljava/lang/Runnable;

    const-wide/16 v7, 0xbb8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method notifyFullBatteryNotification()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 827
    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v8, "notification"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 829
    .local v2, notificationManager:Landroid/app/NotificationManager;
    if-nez v2, :cond_0

    .line 830
    const-string v7, "PowerUI"

    const-string v8, "notifyFullBatteryNotification : fail to get NotificationManager reference"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    :goto_0
    return-void

    .line 834
    :cond_0
    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v8, 0x7f0a0113

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 835
    .local v6, title:Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v8, 0x7f0a0114

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 837
    .local v5, text:Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    if-nez v7, :cond_1

    .line 838
    new-instance v7, Landroid/app/Notification;

    invoke-direct {v7}, Landroid/app/Notification;-><init>()V

    iput-object v7, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    .line 839
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    const v8, 0x7f0200b9

    iput v8, v7, Landroid/app/Notification;->icon:I

    .line 840
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    const-wide/16 v8, 0x0

    iput-wide v8, v7, Landroid/app/Notification;->when:J

    .line 841
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    const/4 v8, 0x2

    iput v8, v7, Landroid/app/Notification;->flags:I

    .line 842
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    iput-object v5, v7, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 845
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 846
    .local v1, intent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v7, v10, v1, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 848
    .local v3, pi:Landroid/app/PendingIntent;
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    iget-object v8, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8, v6, v5, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 850
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    iget v7, v7, Landroid/app/Notification;->icon:I

    iget-object v8, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    invoke-virtual {v2, v7, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 852
    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v8, "power"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 853
    .local v4, powerManager:Landroid/os/PowerManager;
    if-nez v4, :cond_2

    .line 854
    const-string v7, "PowerUI"

    const-string v8, "notifyFullBatteryNotification : fail to get PowerManager reference"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 857
    :cond_2
    const v7, 0x10000006

    const-string v8, "PowerUI"

    invoke-virtual {v4, v7, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 859
    .local v0, fullBatteryScreenDimLock:Landroid/os/PowerManager$WakeLock;
    const-wide/16 v7, 0x4e20

    invoke-virtual {v0, v7, v8}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto :goto_0
.end method

.method playSound(I)V
    .locals 10
    .parameter "soundType"

    .prologue
    .line 983
    const-string v6, "PowerUI"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "playSound : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    if-nez v6, :cond_0

    .line 986
    const-string v6, "PowerUI"

    const-string v7, "playSound : NotificationPlayer is null"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    new-instance v6, Lcom/android/systemui/media/NotificationPlayer;

    const-string v7, "PowerUI"

    invoke-direct {v6, v7}, Lcom/android/systemui/media/NotificationPlayer;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/systemui/power/PowerUI;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    .line 989
    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    if-nez v6, :cond_0

    .line 990
    const-string v6, "PowerUI"

    const-string v7, "playSound : fail to new NotificationPlayer"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    :goto_0
    return-void

    .line 996
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v7, "audio"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 998
    .local v0, audioManager:Landroid/media/AudioManager;
    if-eqz v0, :cond_1

    .line 999
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    .line 1005
    .local v3, ringerMode:I
    :goto_1
    const/4 v6, 0x2

    if-ne v6, v3, :cond_2

    .line 1007
    packed-switch p1, :pswitch_data_0

    .line 1018
    :try_start_0
    const-string v6, "system/media/audio/ui/TW_Battery_caution.ogg"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1022
    .local v4, soundUri:Landroid/net/Uri;
    :goto_2
    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/4 v9, 0x5

    invoke-virtual {v6, v7, v4, v8, v9}, Lcom/android/systemui/media/NotificationPlayer;->play(Landroid/content/Context;Landroid/net/Uri;ZI)V

    .line 1023
    const-string v6, "PowerUI"

    const-string v7, "RINGER_MODE_NORMAL"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1051
    .end local v4           #soundUri:Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 1052
    .local v1, exception:Ljava/lang/Exception;
    const-string v6, "PowerUI"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "playSound : Exception = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1001
    .end local v1           #exception:Ljava/lang/Exception;
    .end local v3           #ringerMode:I
    :cond_1
    const/4 v3, 0x2

    .restart local v3       #ringerMode:I
    goto :goto_1

    .line 1009
    :pswitch_0
    :try_start_1
    const-string v6, "system/media/audio/ui/Charger_Connection.ogg"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1010
    .restart local v4       #soundUri:Landroid/net/Uri;
    goto :goto_2

    .line 1012
    .end local v4           #soundUri:Landroid/net/Uri;
    :pswitch_1
    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "low_battery_sound"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1013
    .restart local v4       #soundUri:Landroid/net/Uri;
    goto :goto_2

    .line 1015
    .end local v4           #soundUri:Landroid/net/Uri;
    :pswitch_2
    const-string v6, "system/media/audio/ui/TW_Battery_caution.ogg"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1016
    .restart local v4       #soundUri:Landroid/net/Uri;
    goto :goto_2

    .line 1024
    .end local v4           #soundUri:Landroid/net/Uri;
    :cond_2
    const/4 v6, 0x1

    if-ne v6, v3, :cond_4

    .line 1026
    packed-switch p1, :pswitch_data_1

    .line 1035
    const/16 v2, 0xb

    .line 1039
    .local v2, hapticFeedback:I
    :goto_3
    new-instance v5, Landroid/os/SystemVibrator;

    invoke-direct {v5}, Landroid/os/SystemVibrator;-><init>()V

    .line 1040
    .local v5, systemVibrator:Landroid/os/SystemVibrator;
    if-eqz v5, :cond_3

    .line 1041
    invoke-virtual {v5, v2}, Landroid/os/SystemVibrator;->vibrateImmVibe(I)V

    .line 1045
    :goto_4
    const-string v6, "PowerUI"

    const-string v7, "RINGER_MODE_VIBRATE"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1028
    .end local v2           #hapticFeedback:I
    .end local v5           #systemVibrator:Landroid/os/SystemVibrator;
    :pswitch_3
    const/16 v2, 0xa

    .line 1029
    .restart local v2       #hapticFeedback:I
    goto :goto_3

    .line 1032
    .end local v2           #hapticFeedback:I
    :pswitch_4
    const/16 v2, 0xb

    .line 1033
    .restart local v2       #hapticFeedback:I
    goto :goto_3

    .line 1043
    .restart local v5       #systemVibrator:Landroid/os/SystemVibrator;
    :cond_3
    const-string v6, "PowerUI"

    const-string v7, "playSound : fail to new SystemVibrator"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1046
    .end local v2           #hapticFeedback:I
    .end local v5           #systemVibrator:Landroid/os/SystemVibrator;
    :cond_4
    if-nez v3, :cond_5

    .line 1047
    const-string v6, "PowerUI"

    const-string v7, "RINGER_MODE_SILENT"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1049
    :cond_5
    const-string v6, "PowerUI"

    const-string v7, "unknown RINGER_MODE"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1007
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1026
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method showAbnormalChargeWarning(I)V
    .locals 14
    .parameter "messageId"

    .prologue
    const v13, 0x7f0a0126

    const/4 v12, 0x2

    const/high16 v11, -0x100

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 726
    iget-object v9, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "SHOULD_SHUT_DOWN"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v8, v9, :cond_0

    move v4, v8

    .line 728
    .local v4, isFactoryMode:Z
    :goto_0
    if-eqz v4, :cond_1

    .line 729
    const-string v7, "PowerUI"

    const-string v8, "don\'t show Abnormal charging warning in Factory mode"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    :goto_1
    return-void

    .end local v4           #isFactoryMode:Z
    :cond_0
    move v4, v7

    .line 726
    goto :goto_0

    .line 733
    .restart local v4       #isFactoryMode:Z
    :cond_1
    iget-boolean v9, p0, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    if-eqz v9, :cond_2

    .line 734
    const-string v7, "PowerUI"

    const-string v8, "FTA Mode is ON so don\'t show Abnormal charging warning"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 738
    :cond_2
    const-string v9, "PowerUI"

    const-string v10, "showAbnormalChargeWarning()"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->dismissLowBatteryWarning()V

    .line 744
    iget-object v9, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v10, "com.android.systemui.power_abnormal_charge"

    invoke-virtual {v9, v10, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 745
    .local v0, abnormalChargeSharedPrefs:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_5

    .line 746
    if-ne v13, p1, :cond_4

    .line 747
    const-string v9, "DoNotShowSlowChargeWarning"

    invoke-interface {v0, v9, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 748
    const-string v7, "PowerUI"

    const-string v8, "Slow charging warning doesn\'t show again"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 750
    :cond_3
    const/4 v7, 0x3

    iget v9, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-eq v7, v9, :cond_5

    const/4 v7, 0x4

    iget v9, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-eq v7, v9, :cond_5

    const/16 v7, 0xa

    iget v9, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-eq v7, v9, :cond_5

    .line 751
    const-string v7, "PowerUI"

    const-string v8, "Slow charging warning doesn\'t show while Dock connects"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 755
    :cond_4
    const-string v9, "DoNotShowIncompatibleChargerWarning"

    invoke-interface {v0, v9, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 756
    const-string v7, "PowerUI"

    const-string v8, "Incompatible charger warning doesn\'t show again"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 762
    :cond_5
    if-ne v13, p1, :cond_7

    .line 763
    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v9, 0x7f0a0125

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 765
    .local v5, title:Ljava/lang/CharSequence;
    iget v7, p0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    if-ne v12, v7, :cond_6

    .line 766
    const p1, 0x7f0a0127

    .line 772
    :cond_6
    :goto_2
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargeTextView:Landroid/widget/TextView;

    if-eqz v7, :cond_8

    .line 773
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargeTextView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v8, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 774
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7, v5}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 769
    .end local v5           #title:Ljava/lang/CharSequence;
    :cond_7
    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v9, 0x7f0a0122

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #title:Ljava/lang/CharSequence;
    goto :goto_2

    .line 776
    :cond_8
    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const/high16 v9, 0x7f03

    const/4 v10, 0x0

    invoke-static {v7, v9, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 777
    .local v6, v:Landroid/view/View;
    const v7, 0x7f0d0005

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargeTextView:Landroid/widget/TextView;

    .line 779
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargeTextView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v9, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 781
    move v3, p1

    .line 784
    .local v3, finalMessageId:I
    iget v7, p0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    if-ne v8, v7, :cond_9

    .line 785
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 793
    .local v1, b:Landroid/app/AlertDialog$Builder;
    :goto_3
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 794
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 795
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 796
    const v7, 0x1010355

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 797
    const/high16 v7, 0x104

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 798
    const v7, 0x104000a

    new-instance v8, Lcom/android/systemui/power/PowerUI$9;

    invoke-direct {v8, p0, v6, v0, v3}, Lcom/android/systemui/power/PowerUI$9;-><init>(Lcom/android/systemui/power/PowerUI;Landroid/view/View;Landroid/content/SharedPreferences;I)V

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 813
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 814
    .local v2, d:Landroid/app/AlertDialog;
    new-instance v7, Lcom/android/systemui/power/PowerUI$10;

    invoke-direct {v7, p0}, Lcom/android/systemui/power/PowerUI$10;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 820
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x7d9

    invoke-virtual {v7, v8}, Landroid/view/Window;->setType(I)V

    .line 821
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 822
    iput-object v2, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargeDialog:Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 786
    .end local v1           #b:Landroid/app/AlertDialog$Builder;
    .end local v2           #d:Landroid/app/AlertDialog;
    :cond_9
    iget v7, p0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    if-ne v12, v7, :cond_a

    .line 787
    new-instance v1, Landroid/app/AlertDialog$Builder;

    new-instance v7, Landroid/view/ContextThemeWrapper;

    iget-object v9, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v10, 0x103012b

    invoke-direct {v7, v9, v10}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 788
    .restart local v1       #b:Landroid/app/AlertDialog$Builder;
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargeTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 789
    const v7, 0x7f0d0006

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    check-cast v7, Landroid/widget/CheckBox;

    invoke-virtual {v7, v11}, Landroid/widget/CheckBox;->setTextColor(I)V

    goto :goto_3

    .line 791
    .end local v1           #b:Landroid/app/AlertDialog$Builder;
    :cond_a
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .restart local v1       #b:Landroid/app/AlertDialog$Builder;
    goto :goto_3
.end method

.method showInvalidChargerDialog()V
    .locals 4

    .prologue
    .line 570
    const-string v2, "PowerUI"

    const-string v3, "showing invalid charger dialog"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->dismissLowBatteryWarning()V

    .line 574
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 575
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 576
    const v2, 0x7f0a0070

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 577
    const v2, 0x1010355

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 578
    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 580
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 581
    .local v1, d:Landroid/app/AlertDialog;
    new-instance v2, Lcom/android/systemui/power/PowerUI$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/power/PowerUI$4;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 588
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 589
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 590
    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    .line 591
    return-void
.end method

.method showLowBatteryWarning()V
    .locals 19

    .prologue
    .line 433
    const-string v16, "PowerUI"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    if-nez v15, :cond_0

    const-string v15, "showing"

    :goto_0
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, " low battery warning: level="

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, " ["

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, "]"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "SHOULD_SHUT_DOWN"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    const/4 v7, 0x1

    .line 442
    .local v7, isFactoryMode:Z
    :goto_1
    if-eqz v7, :cond_2

    .line 443
    const-string v15, "PowerUI"

    const-string v16, "don\'t show Low battery warning in Factory mode"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :goto_2
    return-void

    .line 433
    .end local v7           #isFactoryMode:Z
    :cond_0
    const-string v15, "updating"

    goto :goto_0

    .line 440
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 447
    .restart local v7       #isFactoryMode:Z
    :cond_2
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v3

    .line 451
    .local v3, bucket:I
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    if-eqz v15, :cond_3

    const/4 v15, -0x2

    if-eq v15, v3, :cond_3

    .line 452
    const-string v15, "PowerUI"

    const-string v16, "FTA Mode is ON and Not critical Low battery"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 456
    :cond_3
    const/4 v15, -0x2

    if-ne v15, v3, :cond_6

    .line 457
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v16, 0x7f0a0118

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 459
    .local v13, title:Ljava/lang/CharSequence;
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "LOW_BATTERY_DUMP"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    const/4 v8, 0x1

    .line 460
    .local v8, isLowBatteryDumpOn:Z
    :goto_3
    if-eqz v8, :cond_4

    .line 461
    const-string v15, "PowerUI"

    const-string v16, "Dump for Low battery"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    new-instance v16, Landroid/content/Intent;

    const-string v17, "com.android.systemui.power.action.LOW_BATTERY_WARNING"

    invoke-direct/range {v16 .. v17}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 468
    .end local v8           #isLowBatteryDumpOn:Z
    :cond_4
    :goto_4
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    .line 469
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v16, 0x7f0a011a

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 474
    .local v9, levelText:Ljava/lang/CharSequence;
    :goto_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    if-eqz v15, :cond_8

    .line 475
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    invoke-virtual {v15, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 476
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v15, v13}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 527
    :goto_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 528
    .local v4, cr:Landroid/content/ContentResolver;
    const-string v15, "low_battery_sound"

    invoke-static {v4, v15}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 529
    .local v12, soundPath:Ljava/lang/String;
    const/4 v15, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/systemui/power/PowerUI;->playSound(I)V

    .line 531
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v16, "power"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/PowerManager;

    .line 532
    .local v11, powerManager:Landroid/os/PowerManager;
    if-nez v11, :cond_c

    .line 533
    const-string v15, "PowerUI"

    const-string v16, "showLowBatteryWarning : fail to get PowerManager reference"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 459
    .end local v4           #cr:Landroid/content/ContentResolver;
    .end local v9           #levelText:Ljava/lang/CharSequence;
    .end local v11           #powerManager:Landroid/os/PowerManager;
    .end local v12           #soundPath:Ljava/lang/String;
    :cond_5
    const/4 v8, 0x0

    goto :goto_3

    .line 465
    .end local v13           #title:Ljava/lang/CharSequence;
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v16, 0x7f0a0117

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #title:Ljava/lang/CharSequence;
    goto :goto_4

    .line 471
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v16, 0x7f0a0119

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .restart local v9       #levelText:Ljava/lang/CharSequence;
    goto :goto_5

    .line 478
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v16, 0x7f030001

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 479
    .local v14, v:Landroid/view/View;
    const v15, 0x7f0d0007

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    .line 481
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    invoke-virtual {v15, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_a

    .line 485
    new-instance v2, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v2, v15}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 493
    .local v2, b:Landroid/app/AlertDialog$Builder;
    :goto_7
    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 495
    invoke-virtual {v2, v13}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 496
    invoke-virtual {v2, v14}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 497
    const v15, 0x1010355

    invoke-virtual {v2, v15}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 498
    const v15, 0x104000a

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 500
    new-instance v6, Landroid/content/Intent;

    const-string v15, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-direct {v6, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 501
    .local v6, intent:Landroid/content/Intent;
    const/high16 v15, 0x5880

    invoke-virtual {v6, v15}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 505
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    invoke-virtual {v6, v15}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v15

    if-eqz v15, :cond_9

    .line 506
    const v15, 0x7f0a0071

    new-instance v16, Lcom/android/systemui/power/PowerUI$2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcom/android/systemui/power/PowerUI$2;-><init>(Lcom/android/systemui/power/PowerUI;Landroid/content/Intent;)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 515
    :cond_9
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 516
    .local v5, d:Landroid/app/AlertDialog;
    new-instance v15, Lcom/android/systemui/power/PowerUI$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/systemui/power/PowerUI$3;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v5, v15}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 522
    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    const/16 v16, 0x7d9

    invoke-virtual/range {v15 .. v16}, Landroid/view/Window;->setType(I)V

    .line 523
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 524
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Landroid/app/AlertDialog;

    goto/16 :goto_6

    .line 486
    .end local v2           #b:Landroid/app/AlertDialog$Builder;
    .end local v5           #d:Landroid/app/AlertDialog;
    .end local v6           #intent:Landroid/content/Intent;
    :cond_a
    const/4 v15, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_b

    .line 487
    new-instance v2, Landroid/app/AlertDialog$Builder;

    new-instance v15, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x103012b

    invoke-direct/range {v15 .. v17}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v2, v15}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 488
    .restart local v2       #b:Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    const/high16 v16, -0x100

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setTextColor(I)V

    .line 489
    const v15, 0x7f0d0008

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    check-cast v15, Landroid/widget/ImageView;

    const v16, 0x7f020004

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_7

    .line 491
    .end local v2           #b:Landroid/app/AlertDialog$Builder;
    :cond_b
    new-instance v2, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v2, v15}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .restart local v2       #b:Landroid/app/AlertDialog$Builder;
    goto/16 :goto_7

    .line 536
    .end local v2           #b:Landroid/app/AlertDialog$Builder;
    .end local v14           #v:Landroid/view/View;
    .restart local v4       #cr:Landroid/content/ContentResolver;
    .restart local v11       #powerManager:Landroid/os/PowerManager;
    .restart local v12       #soundPath:Ljava/lang/String;
    :cond_c
    const v15, 0x10000006

    const-string v16, "PowerUI"

    move-object/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v10

    .line 538
    .local v10, lowBatteryScreenDimLock:Landroid/os/PowerManager$WakeLock;
    const-wide/16 v15, 0x3a98

    move-wide v0, v15

    invoke-virtual {v10, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto/16 :goto_2
.end method

.method showNotChargeDialog()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    .line 602
    const-string v5, "PowerUI"

    const-string v6, "showNotChargeDialog()"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iget v5, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-ne v8, v5, :cond_0

    .line 606
    const v2, 0x7f0a0111

    .line 617
    .local v2, messageId:I
    :goto_0
    const/4 v5, 0x1

    iget v6, p0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    if-ne v5, v6, :cond_3

    .line 618
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 624
    .local v0, b:Landroid/app/AlertDialog$Builder;
    :goto_1
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 625
    const v5, 0x7f0a010f

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 626
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 627
    const v5, 0x1010355

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 628
    const v5, 0x104000a

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 630
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 631
    .local v1, d:Landroid/app/AlertDialog;
    new-instance v5, Lcom/android/systemui/power/PowerUI$5;

    invoke-direct {v5, p0}, Lcom/android/systemui/power/PowerUI$5;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 641
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d9

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 642
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 643
    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mNotChargeDialog:Landroid/app/AlertDialog;

    .line 645
    invoke-virtual {p0, v8}, Lcom/android/systemui/power/PowerUI;->playSound(I)V

    .line 647
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v6, "power"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 648
    .local v4, powerManager:Landroid/os/PowerManager;
    if-nez v4, :cond_5

    .line 649
    const-string v5, "PowerUI"

    const-string v6, "showNotChargeDialog : fail to get PowerManager reference"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    .end local v1           #d:Landroid/app/AlertDialog;
    .end local v2           #messageId:I
    .end local v4           #powerManager:Landroid/os/PowerManager;
    :goto_2
    return-void

    .line 607
    :cond_0
    const/4 v5, 0x7

    iget v6, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-ne v5, v6, :cond_1

    .line 608
    const v2, 0x7f0a0112

    .restart local v2       #messageId:I
    goto :goto_0

    .line 609
    .end local v2           #messageId:I
    :cond_1
    const/4 v5, 0x6

    iget v6, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-ne v5, v6, :cond_2

    .line 610
    const v2, 0x7f0a0110

    .restart local v2       #messageId:I
    goto :goto_0

    .line 612
    .end local v2           #messageId:I
    :cond_2
    const-string v5, "PowerUI"

    const-string v6, "status is NotCharging but health is wrong value"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 619
    .restart local v2       #messageId:I
    :cond_3
    const/4 v5, 0x2

    iget v6, p0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    if-ne v5, v6, :cond_4

    .line 620
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v5, Landroid/view/ContextThemeWrapper;

    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v7, 0x103012b

    invoke-direct {v5, v6, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .restart local v0       #b:Landroid/app/AlertDialog$Builder;
    goto :goto_1

    .line 622
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    :cond_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .restart local v0       #b:Landroid/app/AlertDialog$Builder;
    goto/16 :goto_1

    .line 652
    .restart local v1       #d:Landroid/app/AlertDialog;
    .restart local v4       #powerManager:Landroid/os/PowerManager;
    :cond_5
    const v5, 0x10000006

    const-string v6, "PowerUI"

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    .line 654
    .local v3, notChargeScreenDimLock:Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 655
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_2
.end method

.method showWirelessChargeDialog(I)V
    .locals 6
    .parameter "messageId"

    .prologue
    .line 671
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mWirelessChargeDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    .line 672
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mWirelessChargeTask:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 673
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mWirelessChargeDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 708
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mWirelessChargeTask:Ljava/lang/Runnable;

    const-wide/16 v4, 0xfa0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 710
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->turnOnScreen()V

    .line 711
    :goto_1
    return-void

    .line 675
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    if-eqz v2, :cond_1

    .line 676
    const-string v2, "PowerUI"

    const-string v3, "FTA Mode is ON and don\'t show wireless charging popup"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 681
    :cond_1
    const/4 v2, 0x1

    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    if-ne v2, v3, :cond_2

    .line 682
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 688
    .local v0, b:Landroid/app/AlertDialog$Builder;
    :goto_2
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 689
    const v2, 0x7f0a011d

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 690
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 691
    const v2, 0x1010355

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 692
    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 694
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 695
    .local v1, d:Landroid/app/AlertDialog;
    new-instance v2, Lcom/android/systemui/power/PowerUI$7;

    invoke-direct {v2, p0}, Lcom/android/systemui/power/PowerUI$7;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 703
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 704
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 705
    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mWirelessChargeDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 683
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    .end local v1           #d:Landroid/app/AlertDialog;
    :cond_2
    const/4 v2, 0x2

    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    if-ne v2, v3, :cond_3

    .line 684
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v4, 0x103012b

    invoke-direct {v2, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .restart local v0       #b:Landroid/app/AlertDialog$Builder;
    goto :goto_2

    .line 686
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .restart local v0       #b:Landroid/app/AlertDialog$Builder;
    goto :goto_2
.end method

.method public start()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 151
    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    .line 153
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e0018

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    aput v4, v3, v7

    .line 155
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e0017

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    aput v4, v3, v6

    .line 158
    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 159
    .local v2, powerManager:Landroid/os/PowerManager;
    if-nez v2, :cond_0

    .line 160
    const-string v3, "PowerUI"

    const-string v4, "start : fail to get PowerManager reference"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :goto_0
    const-string v3, "ro.build.characteristics"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, characteristics:Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v3, "tablet"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 168
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    .line 172
    :goto_1
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start : Device type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const-string v3, "VZW"

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 175
    iput-boolean v6, p0, Lcom/android/systemui/power/PowerUI;->mVZW:Z

    .line 179
    :goto_2
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start : VZW customer = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/power/PowerUI;->mVZW:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    new-instance v3, Lcom/android/systemui/media/NotificationPlayer;

    const-string v4, "PowerUI"

    invoke-direct {v3, v4}, Lcom/android/systemui/media/NotificationPlayer;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/systemui/power/PowerUI;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    .line 182
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/systemui/media/NotificationPlayer;->setUsesWakeLock(Landroid/content/Context;)V

    .line 185
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 186
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    const-string v3, "com.android.server.PowerManagerService.action.FAILED_TO_DETECT_FACE_BEFORE_DIM"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    const-string v3, "com.sec.factory.app.factorytest.FTA_ON"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    const-string v3, "com.sec.factory.app.factorytest.FTA_OFF"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 193
    return-void

    .line 162
    .end local v0           #characteristics:Ljava/lang/String;
    .end local v1           #filter:Landroid/content/IntentFilter;
    :cond_0
    const/4 v3, 0x6

    const-string v4, "PowerUI"

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/power/PowerUI;->mNotChargeScreenDimLock:Landroid/os/PowerManager$WakeLock;

    .line 163
    const-string v3, "PowerUI"

    invoke-virtual {v2, v6, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/power/PowerUI;->mNotChargePartialLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_0

    .line 170
    .restart local v0       #characteristics:Ljava/lang/String;
    :cond_1
    iput v6, p0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    goto/16 :goto_1

    .line 177
    :cond_2
    iput-boolean v7, p0, Lcom/android/systemui/power/PowerUI;->mVZW:Z

    goto :goto_2
.end method

.method turnOnScreen()V
    .locals 6

    .prologue
    .line 1057
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 1058
    .local v1, powerManager:Landroid/os/IPowerManager;
    if-nez v1, :cond_0

    .line 1059
    const-string v2, "PowerUI"

    const-string v3, "turnOnScreen : fail to get PowerManager reference"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    :goto_0
    return-void

    .line 1064
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/os/IPowerManager;->userActivityWithForce(JZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1065
    :catch_0
    move-exception v0

    .line 1066
    .local v0, exception:Landroid/os/RemoteException;
    const-string v2, "PowerUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "turnOnScreen : Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
