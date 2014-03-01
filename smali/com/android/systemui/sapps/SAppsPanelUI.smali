.class public Lcom/android/systemui/sapps/SAppsPanelUI;
.super Lcom/android/systemui/SystemUI;
.source "SAppsPanelUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/sapps/SAppsPanelUI$SpenSettingObserver;,
        Lcom/android/systemui/sapps/SAppsPanelUI$TouchOutsideListener;
    }
.end annotation


# static fields
.field private static final ACTION_FACTORY_SIM_MODE:Ljava/lang/String; = "android.intent.action.SET_FACTORY_SIM_MODE"

.field private static final ACTION_PEN_INSERT:Ljava/lang/String; = "com.samsung.pen.INSERT"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final FEATURE_APP_PANEL:Z = false

.field private static final FEATURE_CALL_MEMO:Z = false

.field private static final KEY_PEN_SETTINGS:Ljava/lang/String; = "pen_applications"

.field private static final KEY_QUICK_PANEL_LAUNCH:Ljava/lang/String; = "Quick_Panel_Launch"

.field private static final NOTIFICATION_ID:I = 0x1389

.field private static final PEN_SETTINGS_NONE:Ljava/lang/String; = "None"

.field private static final PEN_SETTINGS_TRAY:Ljava/lang/String; = "Shortcuts toolbar"

.field private static final TAG:Ljava/lang/String; = "SAppsPanelUI"


# instance fields
.field private isDeviceBootedFirstTime:Z

.field private isFactorySimMode:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallScreenState:I

.field mCloseSAppsPanel:Ljava/lang/reflect/Method;

.field private mIsNotificationVisible:Z

.field private mNotificationManager:Landroid/app/NotificationManager;

.field mOpenSAppsPanel:Ljava/lang/reflect/Method;

.field private mPackageBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mPanelClosed:Z

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

.field mSAppsTrayClass:Ljava/lang/Class;

.field private mSpenSetting:Ljava/lang/String;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 71
    const-string v0, "KOR"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/sapps/SAppsPanelUI;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 58
    iput v1, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mCallScreenState:I

    .line 59
    iput-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mOpenSAppsPanel:Ljava/lang/reflect/Method;

    .line 60
    iput-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mCloseSAppsPanel:Ljava/lang/reflect/Method;

    .line 61
    iput-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsTrayClass:Ljava/lang/Class;

    .line 62
    iput-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 63
    iput-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mWindowManager:Landroid/view/IWindowManager;

    .line 64
    iput-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mNotificationManager:Landroid/app/NotificationManager;

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mPanelClosed:Z

    .line 69
    iput-boolean v1, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->isFactorySimMode:Z

    .line 177
    new-instance v0, Lcom/android/systemui/sapps/SAppsPanelUI$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/sapps/SAppsPanelUI$2;-><init>(Lcom/android/systemui/sapps/SAppsPanelUI;)V

    iput-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 200
    new-instance v0, Lcom/android/systemui/sapps/SAppsPanelUI$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/sapps/SAppsPanelUI$3;-><init>(Lcom/android/systemui/sapps/SAppsPanelUI;)V

    iput-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mPackageBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 236
    new-instance v0, Lcom/android/systemui/sapps/SAppsPanelUI$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/sapps/SAppsPanelUI$4;-><init>(Lcom/android/systemui/sapps/SAppsPanelUI;)V

    iput-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 441
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 55
    sget-boolean v0, Lcom/android/systemui/sapps/SAppsPanelUI;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/sapps/SAppsPanelUI;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/systemui/sapps/SAppsPanelUI;->showNotification(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/sapps/SAppsPanelUI;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->isDeviceBootedFirstTime:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/sapps/SAppsPanelUI;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/systemui/sapps/SAppsPanelUI;->launchSPenApps(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/systemui/sapps/SAppsPanelUI;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->isFactorySimMode:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/sapps/SAppsPanelUI;)Lcom/android/systemui/sapps/SAppsPanel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/sapps/SAppsPanelUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/systemui/sapps/SAppsPanelUI;->initTray()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/systemui/sapps/SAppsPanelUI;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mCallScreenState:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/sapps/SAppsPanelUI;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mIsNotificationVisible:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/sapps/SAppsPanelUI;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSpenSetting:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/sapps/SAppsPanelUI;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/systemui/sapps/SAppsPanelUI;->getNotificationMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private dimissKeyguard()V
    .locals 3

    .prologue
    .line 338
    sget-boolean v1, Lcom/android/systemui/sapps/SAppsPanelUI;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SAppsPanelUI"

    const-string v2, "dismissKeygurad() "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->dismissKeyguard()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :goto_0
    return-void

    .line 341
    :catch_0
    move-exception v0

    .line 343
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private getNotificationMsg(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "value"

    .prologue
    const/4 v6, 0x0

    .line 421
    new-instance v2, Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v4, 0x7f0a012f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 423
    .local v2, msg:Ljava/lang/StringBuffer;
    if-eqz p1, :cond_0

    const-string v3, "None"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 424
    :cond_0
    const-string v3, "%s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0130

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 438
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 425
    :cond_1
    const-string v3, "Shortcuts toolbar"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 426
    const-string v3, "%s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0131

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 429
    :cond_2
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 430
    .local v1, component:[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    aget-object v4, v1, v6

    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/sapps/SAppsPanel;->getApplicationName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, appName:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    aget-object v4, v1, v6

    invoke-virtual {v3, v4}, Lcom/android/systemui/sapps/SAppsPanel;->isAppDisabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 432
    new-instance v2, Ljava/lang/StringBuffer;

    .end local v2           #msg:Ljava/lang/StringBuffer;
    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .restart local v2       #msg:Ljava/lang/StringBuffer;
    goto :goto_0

    .line 434
    :cond_3
    const-string v3, "%s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4, v0}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private hideNotification()V
    .locals 2

    .prologue
    .line 416
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mIsNotificationVisible:Z

    .line 417
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x1389

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 418
    return-void
.end method

.method private initTray()V
    .locals 5

    .prologue
    .line 127
    const-string v2, "SAppsPanelUI"

    const-string v3, "initTray()"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v3, 0x7f03000c

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/sapps/SAppsPanel;

    iput-object v2, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    .line 130
    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 131
    .local v1, res:Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/systemui/sapps/SAppsPanel;->setPanelVisibility(I)V

    .line 132
    iget-object v2, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    new-instance v3, Lcom/android/systemui/sapps/SAppsPanelUI$TouchOutsideListener;

    iget-object v4, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/sapps/SAppsPanelUI$TouchOutsideListener;-><init>(Lcom/android/systemui/sapps/SAppsPanelUI;Lcom/android/systemui/sapps/SAppsPanel;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/sapps/SAppsPanel;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 133
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7de

    const v3, 0x1c20100

    const/4 v4, -0x3

    invoke-direct {v0, v2, v3, v4}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    .line 143
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x15

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 144
    const v2, 0x7f0c0050

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 145
    const v2, 0x7f0c0051

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 147
    const-string v2, "SAppsPanel"

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 148
    const/16 v2, 0x31

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 151
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    invoke-virtual {v2, v3, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    iget-object v2, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    invoke-virtual {v2, p0}, Lcom/android/systemui/sapps/SAppsPanel;->setCallView(Lcom/android/systemui/sapps/SAppsPanelUI;)V

    .line 153
    iget-object v2, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    new-instance v3, Lcom/android/systemui/sapps/SAppsPanelUI$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/sapps/SAppsPanelUI$1;-><init>(Lcom/android/systemui/sapps/SAppsPanelUI;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/sapps/SAppsPanel;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 164
    return-void
.end method

.method private isSecureKeyguard(Z)Z
    .locals 5
    .parameter "isKeyGuardLocked"

    .prologue
    .line 348
    if-nez p1, :cond_1

    const/4 v1, 0x0

    .line 357
    :cond_0
    :goto_0
    return v1

    .line 349
    :cond_1
    const/4 v1, 0x0

    .line 351
    .local v1, secure:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v2}, Landroid/view/IWindowManager;->isKeyguardSecure()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 356
    :goto_1
    sget-boolean v2, Lcom/android/systemui/sapps/SAppsPanelUI;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "SAppsPanelUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSecureKeyguard(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 352
    :catch_0
    move-exception v0

    .line 354
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private launchSPenApps(Landroid/content/Intent;)V
    .locals 9
    .parameter "penIntent"

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 249
    const-string v5, "penInsert"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 250
    .local v4, penInsert:Z
    const-string v5, "isFactoryMode"

    invoke-virtual {p1, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 251
    .local v0, isFactoryMode:Z
    const-string v5, "isScreenOn"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 252
    .local v3, isScreenOn:Z
    const-string v5, "isKeyguardLocked"

    invoke-virtual {p1, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 253
    .local v1, isKeyguardLocked:Z
    const-string v5, "Quick_Panel_Launch"

    invoke-virtual {p1, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 254
    .local v2, isQuickPanelLaunch:Z
    sget-boolean v5, Lcom/android/systemui/sapps/SAppsPanelUI;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 255
    const-string v5, "SAppsPanelUI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "launchSpenApps() :: penIntent.values::"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mCallScreenState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->isFactorySimMode:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_applications"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSpenSetting:Ljava/lang/String;

    .line 261
    if-eqz v4, :cond_1

    if-nez v2, :cond_1

    .line 266
    :cond_1
    if-nez v0, :cond_4

    iget-boolean v5, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->isFactorySimMode:Z

    if-nez v5, :cond_4

    .line 267
    if-nez v2, :cond_2

    .line 274
    :cond_2
    iget v5, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mCallScreenState:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 281
    :cond_3
    iget v5, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mCallScreenState:I

    if-nez v5, :cond_4

    invoke-direct {p0, v1}, Lcom/android/systemui/sapps/SAppsPanelUI;->isSecureKeyguard(Z)Z

    move-result v5

    if-nez v5, :cond_4

    .line 333
    :cond_4
    iget-boolean v5, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->isDeviceBootedFirstTime:Z

    if-eqz v5, :cond_5

    iput-boolean v8, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->isDeviceBootedFirstTime:Z

    .line 334
    :cond_5
    return-void
.end method

.method private showNotification(Ljava/lang/String;)V
    .locals 10
    .parameter "notificationText"

    .prologue
    const v9, 0x7f0a012e

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 403
    iput-boolean v8, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mIsNotificationVisible:Z

    .line 404
    new-instance v1, Landroid/app/Notification;

    const v3, 0x7f02008b

    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 406
    .local v1, notification:Landroid/app/Notification;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.pen.INSERT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 407
    .local v2, notificationIntent:Landroid/content/Intent;
    const-string v3, "Quick_Panel_Launch"

    invoke-virtual {v2, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 408
    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v3, v7, v2, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 410
    .local v0, contentIntent:Landroid/app/PendingIntent;
    const/4 v3, 0x2

    iput v3, v1, Landroid/app/Notification;->flags:I

    .line 411
    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4, p1, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 412
    iget-object v3, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v4, 0x1389

    invoke-virtual {v3, v4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 413
    return-void
.end method


# virtual methods
.method public closeSAppsPanel(Z)V
    .locals 3
    .parameter "animate"

    .prologue
    .line 361
    sget-boolean v0, Lcom/android/systemui/sapps/SAppsPanelUI;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SAppsPanelUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeSAppsPanel() : mPanelClosed ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mPanelClosed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    invoke-virtual {v0}, Lcom/android/systemui/sapps/SAppsPanel;->getPanelVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mPanelClosed:Z

    if-nez v0, :cond_1

    .line 363
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mPanelClosed:Z

    .line 364
    if-nez p1, :cond_2

    .line 365
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/sapps/SAppsPanel;->setPanelVisibility(I)V

    .line 378
    :cond_1
    :goto_0
    return-void

    .line 367
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsTrayClass:Ljava/lang/Class;

    iget-object v1, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mCloseSAppsPanel:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    if-eqz v0, :cond_1

    .line 370
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mCloseSAppsPanel:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 372
    :catch_0
    move-exception v0

    goto :goto_0

    .line 373
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    const/4 v0, 0x1

    .line 169
    invoke-super {p0, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 171
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_1

    .line 172
    .local v0, isPortrait:Z
    :goto_0
    sget-boolean v1, Lcom/android/systemui/sapps/SAppsPanelUI;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 173
    const-string v1, "SAppsPanelUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " --- onConfigurationChanged() --- isPortait = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_0
    return-void

    .line 171
    .end local v0           #isPortrait:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public openSAppsPanel()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 381
    sget-boolean v0, Lcom/android/systemui/sapps/SAppsPanelUI;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SAppsPanelUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openSAppsPanel() : mPanelClosed ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mPanelClosed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    invoke-virtual {v0}, Lcom/android/systemui/sapps/SAppsPanel;->getPanelVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 384
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    invoke-virtual {v0, v3}, Lcom/android/systemui/sapps/SAppsPanel;->setPanelVisibility(I)V

    .line 385
    iput-boolean v3, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mPanelClosed:Z

    .line 386
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsTrayClass:Ljava/lang/Class;

    iget-object v1, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mOpenSAppsPanel:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mOpenSAppsPanel:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    invoke-virtual {v0, v4}, Lcom/android/systemui/sapps/SAppsPanel;->setFocusable(Z)V

    .line 396
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    invoke-virtual {v0, v4}, Lcom/android/systemui/sapps/SAppsPanel;->setFocusableInTouchMode(Z)V

    .line 397
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    invoke-virtual {v0}, Lcom/android/systemui/sapps/SAppsPanel;->requestFocus()Z

    .line 400
    :cond_2
    return-void

    .line 392
    :catch_0
    move-exception v0

    goto :goto_0

    .line 391
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public start()V
    .locals 7

    .prologue
    .line 86
    sget-boolean v4, Lcom/android/systemui/sapps/SAppsPanelUI;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 87
    const-string v4, "SAppsPanelUI"

    const-string v5, "start() ::  SPenApps initiation START"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/sapps/SAppsPanelUI;->initTray()V

    .line 92
    :try_start_0
    const-string v4, "com.android.systemui.sapps.SAppsPanel"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsTrayClass:Ljava/lang/Class;

    .line 93
    iget-object v4, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsTrayClass:Ljava/lang/Class;

    const-string v5, "closeSAppsPanel"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mCloseSAppsPanel:Ljava/lang/reflect/Method;

    .line 94
    iget-object v4, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsTrayClass:Ljava/lang/Class;

    const-string v5, "openSAppsPanel"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mOpenSAppsPanel:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 101
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v4, :cond_1

    .line 102
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 103
    iget-object v4, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v6, 0x20

    invoke-virtual {v4, v5, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 105
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mWindowManager:Landroid/view/IWindowManager;

    if-nez v4, :cond_2

    .line 106
    const-string v4, "window"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mWindowManager:Landroid/view/IWindowManager;

    .line 108
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v4, :cond_3

    .line 109
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    iput-object v4, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mNotificationManager:Landroid/app/NotificationManager;

    .line 110
    :cond_3
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 111
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v4, "com.samsung.pen.INSERT"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    const-string v4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    const-string v4, "android.intent.action.SET_FACTORY_SIM_MODE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 118
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.PACKAGE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 119
    .local v3, packageFilter:Landroid/content/IntentFilter;
    const-string v4, "package"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 120
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mPackageBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 122
    new-instance v0, Lcom/android/systemui/sapps/SAppsPanelUI$SpenSettingObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/sapps/SAppsPanelUI$SpenSettingObserver;-><init>(Lcom/android/systemui/sapps/SAppsPanelUI;)V

    .line 123
    .local v0, contentObserver:Lcom/android/systemui/sapps/SAppsPanelUI$SpenSettingObserver;
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 124
    return-void

    .line 95
    .end local v0           #contentObserver:Lcom/android/systemui/sapps/SAppsPanelUI$SpenSettingObserver;
    .end local v2           #filter:Landroid/content/IntentFilter;
    .end local v3           #packageFilter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v1

    .line 96
    .local v1, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 97
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 98
    .local v1, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto/16 :goto_0
.end method
