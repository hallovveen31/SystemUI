.class public Lcom/android/systemui/statusbar/tablet/TabletStatusBar;
.super Lcom/android/systemui/statusbar/BaseStatusBar;
.source "TabletStatusBar.java"

# interfaces
.implements Lcom/android/systemui/statusbar/tablet/InputMethodsPanel$OnHardKeyboardEnabledChangeListener;
.implements Lcom/android/systemui/recent/RecentsPanelView$OnRecentsPanelVisibilityChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/tablet/TabletStatusBar$BrightnessEnableObserver;,
        Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;,
        Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;,
        Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;
    }
.end annotation


# static fields
.field static final ACTION_LAUNCHER_EXTRA:Ljava/lang/String; = "sec.android.intent.extra.LAUNCHER_ACTION"

.field private static final DB_BRIGHTNESS_ENABLE:Ljava/lang/String; = "notification_panel_brightness_adjustment"

.field public static final DEBUG:Z = false

.field public static final DEBUG_COMPAT_HELP:Z = false

.field private static final FAKE_SPACE_BAR:Z = false

.field private static final HIDE_ICONS_BELOW_SCORE:I = -0xa

.field private static final LOW_BATTERY_THRESHOLD:I = 0x5

.field public static final MSG_CLOSE_COMPAT_MODE_PANEL:I = 0x41b

.field public static final MSG_CLOSE_INPUT_METHODS_PANEL:I = 0x411

.field public static final MSG_CLOSE_MINI_MODE_APPS_PANEL:I = 0x425

.field public static final MSG_CLOSE_MULTI_WINDOW_SPLIT_PANEL:I = 0x442

.field public static final MSG_CLOSE_NOTIFICATION_PANEL:I = 0x3e9

.field public static final MSG_CLOSE_NOTIFICATION_PEEK:I = 0x3eb

.field public static final MSG_HIDE_CHROME:I = 0x407

.field public static final MSG_OPEN_COMPAT_MODE_PANEL:I = 0x41a

.field public static final MSG_OPEN_INPUT_METHODS_PANEL:I = 0x410

.field public static final MSG_OPEN_MINI_MODE_APPS_PANEL:I = 0x424

.field public static final MSG_OPEN_NOTIFICATION_PANEL:I = 0x3e8

.field public static final MSG_OPEN_NOTIFICATION_PEEK:I = 0x3ea

.field public static final MSG_SHOW_CHROME:I = 0x406

.field public static final MSG_STOP_TICKER:I = 0x7d0

.field static final NAME_LAUNCHER_ALL_APPS_EXTRA:Ljava/lang/String; = "com.android.launcher2.ALL_APPS"

.field static final NOTIFICATION_PEEK_FADE_DELAY:I = 0xbb8

.field static final NOTIFICATION_PEEK_HOLD_THRESH:I = 0xc8

.field private static final NOTIFICATION_PRIORITY_MULTIPLIER:I = 0xa

.field private static final NUM_TRAYOPEN_SOUND_CHANNELS:I = 0x1

.field public static final TAG:Ljava/lang/String; = "TabletStatusBar"

.field private static final TIMEOUT:I = 0xfa0


# instance fields
.field private doNotDisturbIconShow:Z

.field private lp:Landroid/view/WindowManager$LayoutParams;

.field private mAltBackButtonEnabledForIme:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field mBackButton:Landroid/widget/ImageView;

.field mBarContents:Landroid/view/ViewGroup;

.field mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

.field private mBrightnessEnableObserver:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$BrightnessEnableObserver;

.field private mBrightnessEnablebyBattery:Z

.field private mBrightnessEnablebySettings:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mButtonOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mCarrierLabel:Landroid/widget/TextView;

.field mCloseMiniAppsPanel:Ljava/lang/reflect/Method;

.field mCompatModeButton:Lcom/android/systemui/statusbar/policy/CompatModeButton;

.field private mCompatModePanel:Lcom/android/systemui/statusbar/tablet/CompatModePanel;

.field mCompatibilityHelpDialog:Landroid/view/View;

.field private mContentResolver:Landroid/content/ContentResolver;

.field mDisabled:I

.field mDoNotDisturb:Lcom/android/systemui/statusbar/DoNotDisturb;

.field mFakeSpaceBar:Landroid/view/View;

.field mFeedbackIconArea:Landroid/view/ViewGroup;

.field private mGetSumSizeMethod:Ljava/lang/reflect/Method;

.field mHomeButton:Landroid/view/View;

.field private mHomeSearchActionListener:Landroid/view/View$OnTouchListener;

.field mIconHPadding:I

.field mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

.field mIconSize:I

.field mInputMethodSwitchButton:Lcom/android/systemui/statusbar/tablet/InputMethodButton;

.field private mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

.field private mIsExistPalmMethod:Z

.field mIsMiniAppPanelLoadedProperly:Z

.field private mIsPalmN:Z

.field private mIsPalmT:Z

.field private mIsWfdConnected:Z

.field mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

.field private mMaxNotificationIcons:I

.field mMenuButton:Landroid/view/View;

.field mMenuNavIconWidth:I

.field private mMiniModeAppsPanel:Landroid/view/ViewGroup;

.field private mMiniModeAppsPanelInAnim:Landroid/view/animation/Animation;

.field private mMiniModeAppsPanelOutAnim:Landroid/view/animation/Animation;

.field mMiniModeTrayClass:Ljava/lang/Class;

.field mMiniModeTrayEnabled:Z

.field private mMiniModeTrayView:Landroid/view/View;

.field private mMultiWindowEnabled:Z

.field mNaturalBarHeight:I

.field mNavIconWidth:I

.field mNavigationArea:Landroid/view/ViewGroup;

.field private mNavigationIconHints:I

.field mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field mNotificationArea:Landroid/view/View;

.field mNotificationDNDDummyEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

.field mNotificationDNDMode:Z

.field mNotificationFlingVelocity:I

.field mNotificationIconArea:Lcom/android/systemui/statusbar/tablet/NotificationIconArea;

.field mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

.field mNotificationPanelParams:Landroid/view/WindowManager$LayoutParams;

.field mNotificationPeekIndex:I

.field mNotificationPeekKey:Landroid/os/IBinder;

.field mNotificationPeekRow:Landroid/view/ViewGroup;

.field mNotificationPeekScrubLeft:Landroid/animation/LayoutTransition;

.field mNotificationPeekScrubRight:Landroid/animation/LayoutTransition;

.field mNotificationPeekTapDuration:I

.field mNotificationPeekWindow:Lcom/android/systemui/statusbar/tablet/NotificationPeekPanel;

.field mNotificationTrigger:Landroid/view/View;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field mOpenMiniAppsPanel:Ljava/lang/reflect/Method;

.field mOperaterLogoView:Landroid/widget/ImageView;

.field private mPlmnDefault:Ljava/lang/String;

.field mQuickLaunchButton:Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;

.field mRecentButton:Landroid/view/View;

.field mShadow:Landroid/view/View;

.field private mShowSearchHoldoff:I

.field private mShowSearchPanel:Ljava/lang/Runnable;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolId:[I

.field mSpaceBarKeyEvent:Landroid/view/KeyEvent;

.field mSplitPanel:Lcom/android/systemui/multiwindow/SplitPanelView;

.field private mStatusBarContainerView:Landroid/view/View;

.field private mStatusBarInAnim:Landroid/view/animation/Animation;

.field private mStatusBarOutAnim:Landroid/view/animation/Animation;

.field mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mSystemUiVisibility:I

.field mTicker:Lcom/android/systemui/statusbar/tablet/TabletTicker;

.field private mVibrator:Landroid/os/Vibrator;

.field private mWfdReceiver:Landroid/content/BroadcastReceiver;

.field mWindowManager:Landroid/view/IWindowManager;

.field private sb:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 135
    invoke-direct {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;-><init>()V

    .line 180
    iput v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNaturalBarHeight:I

    .line 181
    iput v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconSize:I

    .line 182
    iput v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconHPadding:I

    .line 183
    iput v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavIconWidth:I

    .line 184
    iput v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMenuNavIconWidth:I

    .line 185
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMaxNotificationIcons:I

    .line 236
    iput-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSpaceBarKeyEvent:Landroid/view/KeyEvent;

    .line 238
    iput-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatibilityHelpDialog:Landroid/view/View;

    .line 240
    iput-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mOperaterLogoView:Landroid/widget/ImageView;

    .line 243
    iput v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mDisabled:I

    .line 249
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMultiWindowEnabled:Z

    .line 251
    iput-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mWfdReceiver:Landroid/content/BroadcastReceiver;

    .line 252
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsWfdConnected:Z

    .line 256
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeTrayEnabled:Z

    .line 257
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsMiniAppPanelLoadedProperly:Z

    .line 258
    iput-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeTrayClass:Ljava/lang/Class;

    .line 261
    iput-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mOpenMiniAppsPanel:Ljava/lang/reflect/Method;

    .line 262
    iput-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCloseMiniAppsPanel:Ljava/lang/reflect/Method;

    .line 264
    iput-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;

    .line 278
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSoundPoolId:[I

    .line 281
    iput v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSystemUiVisibility:I

    .line 283
    iput v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavigationIconHints:I

    .line 285
    iput v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mShowSearchHoldoff:I

    .line 288
    iput-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 303
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->doNotDisturbIconShow:Z

    .line 319
    new-instance v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$1;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mShowSearchPanel:Ljava/lang/Runnable;

    .line 325
    new-instance v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$2;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHomeSearchActionListener:Landroid/view/View$OnTouchListener;

    .line 2059
    new-instance v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$10;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$10;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 2071
    new-instance v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$11;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$11;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mButtonOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 2151
    new-instance v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$12;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$12;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 2756
    new-instance v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$13;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$13;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 2986
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mShowSearchPanel:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsWfdConnected:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/internal/statusbar/IStatusBarService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/NotificationData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/NotificationData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/NotificationData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 135
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mShowSearchHoldoff:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->visibilityChanged(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/NotificationData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/NotificationData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/tablet/CompatModePanel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModePanel:Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    return-object v0
.end method

.method static synthetic access$2672(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iget v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSystemUiVisibility:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSystemUiVisibility:I

    return v0
.end method

.method static synthetic access$2676(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iget v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSystemUiVisibility:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSystemUiVisibility:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->notifyUiVisibilityChanged()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->visibilityChanged(Z)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanelInAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarOutAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarContainerView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeTrayView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMultiWindowEnabled:Z

    return v0
.end method

.method static synthetic access$3600(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanelOutAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarInAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->hideCompatibilityHelp()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsPalmT:Z

    return v0
.end method

.method static synthetic access$3902(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsPalmT:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsPalmN:Z

    return v0
.end method

.method static synthetic access$4002(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsPalmN:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->visibilityChanged(Z)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->visibilityChanged(Z)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/recent/RecentsPanelView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    return-object v0
.end method

.method static synthetic access$5602(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBrightnessEnablebyBattery:Z

    return p1
.end method

.method static synthetic access$5700(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBrightnessEnablebySettings:Z

    return v0
.end method

.method static synthetic access$5702(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBrightnessEnablebySettings:Z

    return p1
.end method

.method static synthetic access$5800(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->setBrightnessControllerVisivility(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->playTraySound()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method private addStatusBarWindow()V
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 353
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->makeStatusBarView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->sb:Landroid/view/View;

    .line 355
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7e3

    const v4, 0x800048

    const/4 v5, 0x4

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->lp:Landroid/view/WindowManager$LayoutParams;

    .line 373
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->lp:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->getStatusBarGravity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 374
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->lp:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "SystemBar"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 375
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->lp:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 378
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->isSystemBarHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 379
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->sb:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->lp:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 380
    const-string v0, "TabletStatusBar"

    const-string v1, "Added status bar view"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_0
    return-void
.end method

.method private getNotificationPanelHeight()I
    .locals 5

    .prologue
    .line 834
    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 835
    .local v1, res:Landroid/content/res/Resources;
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 836
    .local v0, d:Landroid/view/Display;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 837
    .local v2, size:Landroid/graphics/Point;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 838
    const v3, 0x7f0c00a8

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget v4, v2, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    return v3
.end method

.method private hasTicker(Landroid/app/Notification;)Z
    .locals 1
    .parameter "n"

    .prologue
    .line 1762
    iget-object v0, p1, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hideCompatibilityHelp()V
    .locals 2

    .prologue
    .line 1984
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatibilityHelpDialog:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1985
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatibilityHelpDialog:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    .line 1986
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatibilityHelpDialog:Landroid/view/View;

    .line 1988
    :cond_0
    return-void
.end method

.method private initTraySound()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 857
    new-instance v0, Landroid/media/SoundPool;

    invoke-direct {v0, v1, v1, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSoundPool:Landroid/media/SoundPool;

    .line 858
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSoundPoolId:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v3, 0x7f060003

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v4

    .line 860
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mAudioManager:Landroid/media/AudioManager;

    .line 861
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mVibrator:Landroid/os/Vibrator;

    .line 862
    return-void
.end method

.method private isImmersive()Z
    .locals 2

    .prologue
    .line 2039
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->isTopActivityImmersive()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2043
    :goto_0
    return v1

    .line 2041
    :catch_0
    move-exception v0

    .line 2043
    .local v0, ex:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadNotificationPanel()V
    .locals 13

    .prologue
    .line 2698
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v0

    .line 2700
    .local v0, N:I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2702
    .local v8, toShow:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->isDeviceProvisioned()Z

    move-result v5

    .line 2704
    .local v5, provisioned:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 2705
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    sub-int v11, v0, v3

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v10, v11}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    .line 2706
    .local v2, ent:Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-nez v5, :cond_0

    iget-object v10, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    invoke-virtual {p0, v10}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->showNotificationEvenIfUnprovisioned(Lcom/android/internal/statusbar/StatusBarNotification;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2707
    :cond_0
    iget-object v10, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2704
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2711
    .end local v2           #ent:Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2712
    .local v7, toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v3, 0x0

    :goto_1
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildCount()I

    move-result v10

    if-ge v3, v10, :cond_4

    .line 2713
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v10, v3}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2714
    .local v1, child:Landroid/view/View;
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 2715
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2712
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2719
    .end local v1           #child:Landroid/view/View;
    :cond_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 2720
    .local v6, remove:Landroid/view/View;
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v10, v6}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->removeView(Landroid/view/View;)V

    goto :goto_2

    .line 2723
    .end local v6           #remove:Landroid/view/View;
    :cond_5
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_7

    .line 2724
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 2725
    .local v9, v:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-nez v10, :cond_6

    .line 2727
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    sub-int/2addr v11, v3

    iget-object v12, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildCount()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-virtual {v10, v9, v11}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->addView(Landroid/view/View;I)V

    .line 2723
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2731
    .end local v9           #v:Landroid/view/View;
    :cond_7
    iget-object v10, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->setNotificationCount(I)V

    .line 2732
    iget-object v10, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->isDeviceProvisioned()Z

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->setSettingsEnabled(Z)V

    .line 2733
    return-void
.end method

.method private notifyUiVisibilityChanged()V
    .locals 2

    .prologue
    .line 1888
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mWindowManager:Landroid/view/IWindowManager;

    iget v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSystemUiVisibility:I

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->statusBarVisibilityChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1891
    :goto_0
    return-void

    .line 1889
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private playTraySound()V
    .locals 8

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 866
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v7

    .line 868
    .local v7, mRingerMode:I
    packed-switch v7, :pswitch_data_0

    .line 877
    :goto_0
    return-void

    .line 870
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    int-to-float v1, v1

    div-float v2, v0, v1

    .line 871
    .local v2, adjustmentValue:F
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSoundPoolId:[I

    aget v1, v1, v4

    const/high16 v6, 0x3f80

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0

    .line 868
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private reloadAllNotificationIcons()V
    .locals 1

    .prologue
    .line 2472
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    if-nez v0, :cond_0

    .line 2475
    :goto_0
    return-void

    .line 2473
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;->removeAllViews()V

    .line 2474
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->updateNotificationIcons()V

    goto :goto_0
.end method

.method private setBrightnessControllerVisivility(Z)V
    .locals 3
    .parameter "b"

    .prologue
    .line 2975
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v2, 0x7f0d00eb

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2977
    .local v0, brightnessController:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2978
    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBrightnessEnablebyBattery:Z

    if-eqz v1, :cond_1

    .line 2979
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2984
    :cond_0
    :goto_0
    return-void

    .line 2981
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setNavigationVisibility(I)V
    .locals 12
    .parameter "visibility"

    .prologue
    const/4 v9, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1727
    const/high16 v8, 0x20

    and-int/2addr v8, p1

    if-eqz v8, :cond_3

    move v2, v6

    .line 1728
    .local v2, disableHome:Z
    :goto_0
    const/high16 v8, 0x100

    and-int/2addr v8, p1

    if-eqz v8, :cond_4

    move v3, v6

    .line 1729
    .local v3, disableRecent:Z
    :goto_1
    const/high16 v8, 0x40

    and-int/2addr v8, p1

    if-eqz v8, :cond_5

    move v0, v6

    .line 1730
    .local v0, disableBack:Z
    :goto_2
    const-string v8, "TabletStatusBar"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setNavigationVisibility: visibility-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    sget-boolean v8, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v8, :cond_2

    .line 1733
    const/high16 v8, 0x200

    and-int/2addr v8, p1

    if-eqz v8, :cond_6

    move v1, v6

    .line 1734
    .local v1, disableCapture:Z
    :goto_3
    iget-object v10, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mQuickLaunchButton:Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;

    if-nez v3, :cond_0

    if-nez v1, :cond_0

    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mQuickLaunchButton:Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->isQuickLaunchNoneMode()Z

    move-result v8

    if-eqz v8, :cond_7

    :cond_0
    const/16 v8, 0x8

    :goto_4
    invoke-virtual {v10, v8}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->setVisibility(I)V

    .line 1739
    sget-boolean v8, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v8, :cond_2

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeTrayEnabled:Z

    if-eqz v8, :cond_2

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsMiniAppPanelLoadedProperly:Z

    if-eqz v8, :cond_2

    .line 1740
    const/high16 v8, 0x400

    and-int/2addr v8, p1

    if-eqz v8, :cond_8

    move v4, v6

    .line 1741
    .local v4, disableTray:Z
    :goto_5
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    const v10, 0x7f0d011a

    invoke-virtual {v8, v10}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 1742
    .local v5, mCue:Landroid/view/View;
    if-eqz v5, :cond_2

    .line 1743
    const-string v8, "TabletStatusBar"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setNavigationVisibility: disableRecent-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " disableTray-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " mIsWfdConnected-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsWfdConnected:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    if-nez v3, :cond_1

    if-nez v4, :cond_1

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsWfdConnected:Z

    if-eqz v8, :cond_9

    :cond_1
    move v8, v9

    :goto_6
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1753
    .end local v1           #disableCapture:Z
    .end local v4           #disableTray:Z
    .end local v5           #mCue:Landroid/view/View;
    :cond_2
    iget-object v10, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBackButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    move v8, v9

    :goto_7
    invoke-virtual {v10, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1754
    iget-object v10, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHomeButton:Landroid/view/View;

    if-eqz v2, :cond_b

    move v8, v9

    :goto_8
    invoke-virtual {v10, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1755
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentButton:Landroid/view/View;

    if-eqz v3, :cond_c

    :goto_9
    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1757
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodSwitchButton:Lcom/android/systemui/statusbar/tablet/InputMethodButton;

    const/high16 v9, 0x10

    and-int/2addr v9, p1

    if-eqz v9, :cond_d

    :goto_a
    invoke-virtual {v8, v6}, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->setScreenLocked(Z)V

    .line 1759
    return-void

    .end local v0           #disableBack:Z
    .end local v2           #disableHome:Z
    .end local v3           #disableRecent:Z
    :cond_3
    move v2, v7

    .line 1727
    goto/16 :goto_0

    .restart local v2       #disableHome:Z
    :cond_4
    move v3, v7

    .line 1728
    goto/16 :goto_1

    .restart local v3       #disableRecent:Z
    :cond_5
    move v0, v7

    .line 1729
    goto/16 :goto_2

    .restart local v0       #disableBack:Z
    :cond_6
    move v1, v7

    .line 1733
    goto/16 :goto_3

    .restart local v1       #disableCapture:Z
    :cond_7
    move v8, v7

    .line 1734
    goto/16 :goto_4

    :cond_8
    move v4, v7

    .line 1740
    goto :goto_5

    .restart local v4       #disableTray:Z
    .restart local v5       #mCue:Landroid/view/View;
    :cond_9
    move v8, v7

    .line 1744
    goto :goto_6

    .end local v1           #disableCapture:Z
    .end local v4           #disableTray:Z
    .end local v5           #mCue:Landroid/view/View;
    :cond_a
    move v8, v7

    .line 1753
    goto :goto_7

    :cond_b
    move v8, v7

    .line 1754
    goto :goto_8

    :cond_c
    move v9, v7

    .line 1755
    goto :goto_9

    :cond_d
    move v6, v7

    .line 1757
    goto :goto_a
.end method

.method private showCompatibilityHelp()V
    .locals 7

    .prologue
    const/4 v1, -0x1

    .line 1950
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatibilityHelpDialog:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 1981
    :goto_0
    return-void

    .line 1954
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v3, 0x7f030003

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatibilityHelpDialog:Landroid/view/View;

    .line 1955
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatibilityHelpDialog:Landroid/view/View;

    const v3, 0x7f0d0010

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 1957
    .local v6, button:Landroid/view/View;
    new-instance v2, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$9;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$9;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    invoke-virtual {v6, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1967
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d8

    const v4, 0x20300

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 1975
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const-string v1, "CompatibilityModeDialog"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1976
    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1978
    const v1, 0x10301e7

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1980
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatibilityHelpDialog:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private tw_loadNotificationPanel()V
    .locals 17

    .prologue
    .line 2595
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v1

    .line 2597
    .local v1, N:I
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 2598
    .local v13, toShowOngoing:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2599
    .local v11, toShowLatest:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 2601
    .local v12, toShowMiniCon:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->isDeviceProvisioned()Z

    move-result v6

    .line 2602
    .local v6, provisioned:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v1, :cond_4

    .line 2603
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    sub-int v16, v1, v4

    add-int/lit8 v16, v16, -0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v3

    .line 2604
    .local v3, ent:Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-nez v6, :cond_0

    iget-object v15, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->showNotificationEvenIfUnprovisioned(Lcom/android/internal/statusbar/StatusBarNotification;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 2605
    :cond_0
    iget-object v15, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    invoke-virtual {v15}, Lcom/android/internal/statusbar/StatusBarNotification;->isMiniCon()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 2606
    iget-object v15, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2602
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2607
    :cond_2
    iget-object v15, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    invoke-virtual {v15}, Lcom/android/internal/statusbar/StatusBarNotification;->isOngoing()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 2608
    iget-object v15, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2610
    :cond_3
    iget-object v15, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2614
    .end local v3           #ent:Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_4
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2616
    .local v10, toRemoveOngoing:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v4, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOngoingNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildCount()I

    move-result v15

    if-ge v4, v15, :cond_6

    .line 2617
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOngoingNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v15, v4}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2618
    .local v2, child:Landroid/view/View;
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 2619
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2616
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2623
    .end local v2           #child:Landroid/view/View;
    :cond_6
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2625
    .local v8, toRemoveLatest:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v4, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLatestNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildCount()I

    move-result v15

    if-ge v4, v15, :cond_8

    .line 2626
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLatestNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v15, v4}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2627
    .restart local v2       #child:Landroid/view/View;
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    .line 2628
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2625
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2632
    .end local v2           #child:Landroid/view/View;
    :cond_8
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2634
    .local v9, toRemoveMiniCon:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v4, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v15

    if-ge v4, v15, :cond_a

    .line 2635
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;

    invoke-virtual {v15, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2636
    .restart local v2       #child:Landroid/view/View;
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_9

    .line 2637
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2634
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 2641
    .end local v2           #child:Landroid/view/View;
    :cond_a
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 2642
    .local v7, remove:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOngoingNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v15, v7}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->removeView(Landroid/view/View;)V

    goto :goto_5

    .line 2645
    .end local v7           #remove:Landroid/view/View;
    :cond_b
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 2646
    .restart local v7       #remove:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLatestNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v15, v7}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->removeView(Landroid/view/View;)V

    goto :goto_6

    .line 2649
    .end local v7           #remove:Landroid/view/View;
    :cond_c
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 2650
    .restart local v7       #remove:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;

    invoke-virtual {v15, v7}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_7

    .line 2653
    .end local v7           #remove:Landroid/view/View;
    :cond_d
    const/4 v4, 0x0

    :goto_8
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v4, v15, :cond_f

    .line 2654
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    .line 2655
    .local v14, v:Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    if-nez v15, :cond_e

    .line 2656
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOngoingNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v15, v14, v4}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->addView(Landroid/view/View;I)V

    .line 2653
    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 2660
    .end local v14           #v:Landroid/view/View;
    :cond_f
    const/4 v4, 0x0

    :goto_9
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v4, v15, :cond_11

    .line 2661
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    .line 2662
    .restart local v14       #v:Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    if-nez v15, :cond_10

    .line 2663
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLatestNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v15, v14, v4}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->addView(Landroid/view/View;I)V

    .line 2660
    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 2667
    .end local v14           #v:Landroid/view/View;
    :cond_11
    const/4 v4, 0x0

    :goto_a
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v4, v15, :cond_13

    .line 2668
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    .line 2669
    .restart local v14       #v:Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    if-nez v15, :cond_12

    .line 2670
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;

    invoke-virtual {v15, v14, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 2667
    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 2675
    .end local v14           #v:Landroid/view/View;
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->updateNotificationCountText()V

    .line 2677
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-eqz v15, :cond_14

    .line 2678
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOngoingNotificationTitle:Landroid/widget/LinearLayout;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2683
    :goto_b
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-eqz v15, :cond_15

    .line 2684
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLatestNotificationTitle:Landroid/widget/LinearLayout;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2689
    :goto_c
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-nez v15, :cond_16

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-nez v15, :cond_16

    .line 2690
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNoNotificationsTitle:Landroid/widget/LinearLayout;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2694
    :goto_d
    return-void

    .line 2680
    :cond_14
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOngoingNotificationTitle:Landroid/widget/LinearLayout;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_b

    .line 2686
    :cond_15
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLatestNotificationTitle:Landroid/widget/LinearLayout;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_c

    .line 2692
    :cond_16
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNoNotificationsTitle:Landroid/widget/LinearLayout;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_d
.end method

.method private updateText()V
    .locals 7

    .prologue
    const v6, 0x7f0d00aa

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 2816
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v2, 0x7f0d011e

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2817
    .local v0, settingsTextView:Landroid/widget/TextView;
    const v1, 0x7f0a0072

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2818
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNoNotificationText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v3, 0x7f0a006a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2822
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->updateNotificationCountText()V

    .line 2824
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    iget-object v1, v1, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mClearButton:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a0063

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 2828
    invoke-virtual {v0, v5, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 2829
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNoNotificationText:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 2830
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOngoingNotificationText:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 2831
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLatestNotificationText:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 2832
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    iget-object v1, v1, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mClearButton:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v5, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 2833
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v2, 0x7f0d00b6

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v5, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 2834
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBarContents:Landroid/view/ViewGroup;

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v5, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 2835
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v1, v6}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v5, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 2837
    return-void
.end method


# virtual methods
.method public addIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 0
    .parameter "slot"
    .parameter "index"
    .parameter "viewIndex"
    .parameter "icon"

    .prologue
    .line 1595
    return-void
.end method

.method public addNotification(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V
    .locals 3
    .parameter "key"
    .parameter "notification"

    .prologue
    .line 1608
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->addNotificationViews(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 1610
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->isImmersive()Z

    move-result v0

    .line 1613
    .local v0, immersive:Z
    iget-object v1, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 1615
    const-string v1, "TabletStatusBar"

    const-string v2, "Notification has fullScreenIntent and activity is not immersive; sending fullScreenIntent"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    :try_start_0
    iget-object v1, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1625
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->setAreThereNotifications()V

    .line 1626
    return-void

    .line 1622
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->tick(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Z)V

    goto :goto_0

    .line 1619
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected addPanelWindows()V
    .locals 34

    .prologue
    .line 387
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 388
    .local v12, context:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    .line 391
    .local v29, res:Landroid/content/res/Resources;
    sget-boolean v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v4, :cond_c

    .line 392
    const v4, 0x7f030045

    const/4 v5, 0x0

    invoke-static {v12, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    .line 398
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->setBar(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    .line 399
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->show(ZZ)V

    .line 400
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    new-instance v5, Lcom/android/systemui/statusbar/BaseStatusBar$TouchOutsideListener;

    const/16 v6, 0x3e9

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6, v7}, Lcom/android/systemui/statusbar/BaseStatusBar$TouchOutsideListener;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;ILcom/android/systemui/statusbar/tablet/StatusBarPanel;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 404
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v6, 0x7f0d0046

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/policy/BatteryController;->addIconView(Landroid/widget/ImageView;)V

    .line 405
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v6, 0x7f0d00b6

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/policy/BatteryController;->addLabelView(Landroid/widget/TextView;)V

    .line 409
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v6, 0x7f0d00ab

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/policy/BluetoothController;->addIconView(Landroid/widget/ImageView;)V

    .line 412
    sget-boolean v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v4, :cond_0

    .line 413
    new-instance v11, Lcom/android/systemui/statusbar/policy/AlarmController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v11, v4}, Lcom/android/systemui/statusbar/policy/AlarmController;-><init>(Landroid/content/Context;)V

    .line 414
    .local v11, alarmController:Lcom/android/systemui/statusbar/policy/AlarmController;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->sb:Landroid/view/View;

    const v5, 0x7f0d011d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v11, v4}, Lcom/android/systemui/statusbar/policy/AlarmController;->addIconView(Landroid/widget/ImageView;)V

    .line 415
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v5, 0x7f0d011d

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v11, v4}, Lcom/android/systemui/statusbar/policy/AlarmController;->addIconView(Landroid/widget/ImageView;)V

    .line 417
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v5, 0x7f0d0120

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$3;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$3;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 429
    .end local v11           #alarmController:Lcom/android/systemui/statusbar/policy/AlarmController;
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v5, 0x7f0d0028

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/ImageView;

    .line 431
    .local v24, mobileRSSI:Landroid/widget/ImageView;
    if-eqz v24, :cond_1

    .line 432
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addPhoneSignalIconView(Landroid/widget/ImageView;)V

    .line 434
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v5, 0x7f0d0024

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/ImageView;

    .line 436
    .local v33, wifiRSSI:Landroid/widget/ImageView;
    if-eqz v33, :cond_2

    .line 437
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addWifiIconView(Landroid/widget/ImageView;)V

    .line 440
    :cond_2
    sget-boolean v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v4, :cond_e

    .line 441
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v5, 0x7f0d0045

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Lcom/android/systemui/statusbar/SignalClusterView;

    .line 443
    .local v32, signalCluster:Lcom/android/systemui/statusbar/SignalClusterView;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V

    .line 445
    sget-boolean v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useAttPlmnDisplay:Z

    if-eqz v4, :cond_d

    .line 446
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBarContents:Landroid/view/ViewGroup;

    const v5, 0x7f0d004c

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    .line 447
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/policy/NetworkController;->addATTMobileLabelView(Landroid/widget/TextView;)V

    .line 448
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->showPlmnString()V

    .line 450
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v6, 0x7f0d00aa

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/policy/NetworkController;->addMobileLabelView(Landroid/widget/TextView;)V

    .line 469
    .end local v32           #signalCluster:Lcom/android/systemui/statusbar/SignalClusterView;
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationTrigger:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->setIgnoreChildren(ILandroid/view/View;Landroid/view/View;)V

    .line 471
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const v4, 0x7f0c00a1

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->getNotificationPanelHeight()I

    move-result v4

    const/16 v5, 0x7e8

    const v6, 0x1820300

    const/4 v7, -0x3

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanelParams:Landroid/view/WindowManager$LayoutParams;

    .line 481
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x55

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 482
    const-string v4, "NotificationPanel"

    invoke-virtual {v2, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 483
    const/16 v4, 0x31

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 485
    const/high16 v4, 0x103

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 488
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v4, v5, v2}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 491
    new-instance v4, Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-direct {v4, v12}, Lcom/android/systemui/recent/RecentTasksLoader;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    .line 492
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->updateRecentsPanel()V

    .line 495
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->setBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    .line 496
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHomeButton:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHomeSearchActionListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 497
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->updateSearchPanel()V

    .line 502
    sget-boolean v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeTrayEnabled:Z

    if-eqz v4, :cond_6

    .line 504
    :try_start_0
    const-string v4, "com.android.systemui.statusbar.MiniModeAppsPanel"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeTrayClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    .line 505
    const/16 v23, -0x1

    .line 508
    .local v23, miniAppPanelId:I
    const/16 v19, 0x0

    .line 509
    .local v19, layoutField:Ljava/lang/reflect/Field;
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMultiWindowEnabled:Z

    if-eqz v4, :cond_f

    .line 510
    const-class v4, Lcom/android/systemui/R$layout;

    const-string v5, "status_bar_mw_apps_panel"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v19

    .line 514
    :goto_2
    if-eqz v19, :cond_3

    .line 515
    move-object/from16 v0, v19

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    move-result v23

    .line 528
    :cond_3
    :goto_3
    if-lez v23, :cond_4

    .line 529
    const/4 v4, 0x0

    :try_start_2
    move/from16 v0, v23

    invoke-static {v12, v0, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;

    .line 532
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;

    if-eqz v4, :cond_10

    .line 533
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsMiniAppPanelLoadedProperly:Z

    .line 534
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 539
    :goto_4
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    const/16 v6, 0x7e8

    const v7, 0x800128

    const/4 v8, -0x3

    invoke-direct/range {v3 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    .line 549
    .end local v2           #lp:Landroid/view/WindowManager$LayoutParams;
    .local v3, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x53

    :try_start_3
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 552
    const-string v4, "MiniModeAppsPanel"

    invoke-virtual {v3, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 554
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5, v3}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 558
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeTrayClass:Ljava/lang/Class;

    const-string v5, "closeMiniAppsPanel"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCloseMiniAppsPanel:Ljava/lang/reflect/Method;

    .line 559
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeTrayClass:Ljava/lang/Class;

    const-string v5, "openMiniAppsPanel"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mOpenMiniAppsPanel:Ljava/lang/reflect/Method;

    .line 561
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeTrayClass:Ljava/lang/Class;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 562
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/Class;

    move-object/from16 v25, v0

    const/4 v4, 0x0

    const-class v5, Lcom/android/systemui/statusbar/BaseStatusBar;

    aput-object v5, v25, v4

    .line 563
    .local v25, paramTypes1:[Ljava/lang/Class;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeTrayClass:Ljava/lang/Class;

    const-string v5, "setBar"

    move-object/from16 v0, v25

    invoke-virtual {v4, v5, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v21

    .line 564
    .local v21, mSetBar:Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/4 v4, 0x0

    aput-object p0, v27, v4

    .line 566
    .local v27, params:[Ljava/lang/Object;
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/Class;

    move-object/from16 v26, v0

    const/4 v4, 0x0

    const-class v5, Landroid/os/Handler;

    aput-object v5, v26, v4

    .line 567
    .local v26, paramTypes2:[Ljava/lang/Class;
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    aput-object v5, v28, v4

    .line 568
    .local v28, params2:[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeTrayClass:Ljava/lang/Class;

    const-string v5, "setStatusBarHandler"

    move-object/from16 v0, v26

    invoke-virtual {v4, v5, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v22

    .line 570
    .local v22, mSetHandler:Ljava/lang/reflect/Method;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v0, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_11
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_10
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_d

    .end local v21           #mSetBar:Ljava/lang/reflect/Method;
    .end local v22           #mSetHandler:Ljava/lang/reflect/Method;
    .end local v25           #paramTypes1:[Ljava/lang/Class;
    .end local v26           #paramTypes2:[Ljava/lang/Class;
    .end local v27           #params:[Ljava/lang/Object;
    .end local v28           #params2:[Ljava/lang/Object;
    :cond_5
    move-object v2, v3

    .line 591
    .end local v3           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v19           #layoutField:Ljava/lang/reflect/Field;
    .end local v23           #miniAppPanelId:I
    .restart local v2       #lp:Landroid/view/WindowManager$LayoutParams;
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsMiniAppPanelLoadedProperly:Z

    if-eqz v4, :cond_6

    .line 592
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;

    const v5, 0x7f0d005e

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeTrayView:Landroid/view/View;

    .line 593
    new-instance v4, Lcom/android/systemui/statusbar/TFCubicRotateAnimation;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Lcom/android/systemui/statusbar/TFCubicRotateAnimation;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanelOutAnim:Landroid/view/animation/Animation;

    .line 594
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanelOutAnim:Landroid/view/animation/Animation;

    const-wide/16 v5, 0x10e

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 596
    new-instance v4, Lcom/android/systemui/statusbar/TFCubicRotateAnimation;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/systemui/statusbar/TFCubicRotateAnimation;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanelInAnim:Landroid/view/animation/Animation;

    .line 597
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanelInAnim:Landroid/view/animation/Animation;

    const-wide/16 v5, 0x10e

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 599
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    const v5, 0x7f0d008a

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarContainerView:Landroid/view/View;

    .line 600
    new-instance v4, Lcom/android/systemui/statusbar/TFCubicRotateAnimation;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/android/systemui/statusbar/TFCubicRotateAnimation;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarOutAnim:Landroid/view/animation/Animation;

    .line 601
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarOutAnim:Landroid/view/animation/Animation;

    const-wide/16 v5, 0x10e

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 602
    new-instance v4, Lcom/android/systemui/statusbar/TFCubicRotateAnimation;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lcom/android/systemui/statusbar/TFCubicRotateAnimation;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarInAnim:Landroid/view/animation/Animation;

    .line 603
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarInAnim:Landroid/view/animation/Animation;

    const-wide/16 v5, 0x10e

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 606
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarOutAnim:Landroid/view/animation/Animation;

    new-instance v5, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$4;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$4;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 621
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    const v5, 0x7f0d011a

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .line 622
    .local v20, mCue:Landroid/view/View;
    if-eqz v20, :cond_11

    .line 623
    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 625
    new-instance v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$5;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$5;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 632
    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 636
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->initTraySound()V

    .line 640
    .end local v20           #mCue:Landroid/view/View;
    :cond_6
    sget-boolean v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeTrayEnabled:Z

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsMiniAppPanelLoadedProperly:Z

    if-nez v4, :cond_9

    .line 641
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mShadow:Landroid/view/View;

    if-eqz v4, :cond_9

    .line 642
    const/16 v16, -0x1

    .line 644
    .local v16, id:I
    :try_start_4
    const-class v4, Lcom/android/systemui/R$id;

    const-string v5, "miniapp_tray_dot"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v17

    .line 645
    .local v17, idfield:Ljava/lang/reflect/Field;
    if-eqz v17, :cond_8

    .line 646
    move-object/from16 v0, v17

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_9

    move-result v16

    .line 654
    .end local v17           #idfield:Ljava/lang/reflect/Field;
    :cond_8
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mShadow:Landroid/view/View;

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 655
    .local v13, dotView:Landroid/view/View;
    if-eqz v13, :cond_9

    .line 656
    const/16 v4, 0x8

    invoke-virtual {v13, v4}, Landroid/view/View;->setVisibility(I)V

    .line 664
    .end local v13           #dotView:Landroid/view/View;
    .end local v16           #id:I
    :cond_9
    sget-boolean v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMultiWindowEnabled:Z

    if-eqz v4, :cond_a

    .line 666
    const v4, 0x7f03003e

    const/4 v5, 0x0

    invoke-static {v12, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/multiwindow/SplitPanelView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSplitPanel:Lcom/android/systemui/multiwindow/SplitPanelView;

    .line 668
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSplitPanel:Lcom/android/systemui/multiwindow/SplitPanelView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/systemui/multiwindow/SplitPanelView;->setVisibility(I)V

    .line 669
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    .end local v2           #lp:Landroid/view/WindowManager$LayoutParams;
    const/4 v5, -0x1

    const/4 v6, -0x1

    const/16 v7, 0x7de

    const/high16 v8, 0x182

    const/4 v9, -0x3

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 677
    .restart local v2       #lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x11

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 678
    const-string v4, "SplitPanel"

    invoke-virtual {v2, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 679
    const/16 v4, 0x31

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 682
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSplitPanel:Lcom/android/systemui/multiwindow/SplitPanelView;

    invoke-virtual {v4, v5, v2}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 686
    const-string v10, "android.intent.action.WIFI_DISPLAY"

    .line 687
    .local v10, WIFI_DISPLAY:Ljava/lang/String;
    new-instance v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$6;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$6;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mWfdReceiver:Landroid/content/BroadcastReceiver;

    .line 709
    new-instance v18, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.WIFI_DISPLAY"

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 710
    .local v18, intentFilter:Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mWfdReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, v18

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 712
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    const v5, 0x7f0d011a

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .line 713
    .restart local v20       #mCue:Landroid/view/View;
    if-eqz v20, :cond_12

    .line 714
    const v4, 0x7f0a0141

    invoke-virtual {v12, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 722
    .end local v10           #WIFI_DISPLAY:Ljava/lang/String;
    .end local v18           #intentFilter:Landroid/content/IntentFilter;
    .end local v20           #mCue:Landroid/view/View;
    :cond_a
    :goto_8
    const v4, 0x7f030025

    const/4 v5, 0x0

    invoke-static {v12, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    .line 724
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->setBar(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    .line 725
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->setHardKeyboardEnabledChangeListener(Lcom/android/systemui/statusbar/tablet/InputMethodsPanel$OnHardKeyboardEnabledChangeListener;)V

    .line 726
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    new-instance v5, Lcom/android/systemui/statusbar/BaseStatusBar$TouchOutsideListener;

    const/16 v6, 0x411

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6, v7}, Lcom/android/systemui/statusbar/BaseStatusBar$TouchOutsideListener;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;ILcom/android/systemui/statusbar/tablet/StatusBarPanel;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 728
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodSwitchButton:Lcom/android/systemui/statusbar/tablet/InputMethodButton;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->setImeSwitchButton(Lcom/android/systemui/statusbar/tablet/InputMethodButton;)V

    .line 729
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodSwitchButton:Lcom/android/systemui/statusbar/tablet/InputMethodButton;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->setIgnoreChildren(ILandroid/view/View;Landroid/view/View;)V

    .line 730
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    .end local v2           #lp:Landroid/view/WindowManager$LayoutParams;
    const/4 v5, -0x2

    const/4 v6, -0x2

    const/16 v7, 0x7de

    const v8, 0x1820100

    const/4 v9, -0x3

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 739
    .restart local v2       #lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x55

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 740
    const-string v4, "InputMethodsPanel"

    invoke-virtual {v2, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 741
    const v4, 0x7f0f000c

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 743
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    invoke-virtual {v4, v5, v2}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 746
    const v4, 0x7f030023

    const/4 v5, 0x0

    invoke-static {v12, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModePanel:Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    .line 748
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModePanel:Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    new-instance v5, Lcom/android/systemui/statusbar/BaseStatusBar$TouchOutsideListener;

    const/16 v6, 0x41b

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModePanel:Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6, v7}, Lcom/android/systemui/statusbar/BaseStatusBar$TouchOutsideListener;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;ILcom/android/systemui/statusbar/tablet/StatusBarPanel;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 750
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModePanel:Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModeButton:Lcom/android/systemui/statusbar/policy/CompatModeButton;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->setTrigger(Landroid/view/View;)V

    .line 751
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModePanel:Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->setVisibility(I)V

    .line 752
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModeButton:Lcom/android/systemui/statusbar/policy/CompatModeButton;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModePanel:Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->setIgnoreChildren(ILandroid/view/View;Landroid/view/View;)V

    .line 753
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    .end local v2           #lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v5, 0xfa

    const/4 v6, -0x2

    const/16 v7, 0x7de

    const v8, 0x1820100

    const/4 v9, -0x3

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 762
    .restart local v2       #lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x55

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 763
    const-string v4, "CompatModePanel"

    invoke-virtual {v2, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 764
    const v4, 0x1030002

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 766
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModePanel:Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    invoke-virtual {v4, v5, v2}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 768
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentButton:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 771
    sget-boolean v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v4, :cond_14

    .line 772
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v5, 0x7f0d00ee

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNoNotificationsTitle:Landroid/widget/LinearLayout;

    .line 773
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNoNotificationsTitle:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 774
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v5, 0x7f0d00f0

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOngoingNotificationTitle:Landroid/widget/LinearLayout;

    .line 775
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v5, 0x7f0d00f3

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLatestNotificationTitle:Landroid/widget/LinearLayout;

    .line 776
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v5, 0x7f0d00f2

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOngoingNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    .line 777
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v5, 0x7f0d00f5

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLatestNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    .line 778
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOngoingNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->removeAllViews()V

    .line 779
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLatestNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->removeAllViews()V

    .line 780
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOngoingNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->getNotificationLongClicker()Landroid/view/View$OnLongClickListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->setLongPressListener(Landroid/view/View$OnLongClickListener;)V

    .line 781
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLatestNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->getNotificationLongClicker()Landroid/view/View$OnLongClickListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->setLongPressListener(Landroid/view/View$OnLongClickListener;)V

    .line 783
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v5, 0x7f0d00ef

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNoNotificationText:Landroid/widget/TextView;

    .line 784
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v5, 0x7f0d00f1

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOngoingNotificationText:Landroid/widget/TextView;

    .line 785
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v5, 0x7f0d00f4

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLatestNotificationText:Landroid/widget/TextView;

    .line 788
    new-instance v27, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    move-object/from16 v0, v27

    invoke-direct {v0, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 790
    .local v27, params:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v12}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;

    .line 791
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 793
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v5, 0x7f0d00e8

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/LinearLayout;

    .line 795
    .local v30, scrollCart:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v4, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 798
    invoke-virtual/range {v30 .. v30}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v31

    check-cast v31, Landroid/widget/ScrollView;

    .line 799
    .local v31, scroller:Landroid/widget/ScrollView;
    const/4 v4, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 801
    sget-boolean v4, Lcom/android/systemui/statusbar/BaseStatusBar;->showOperatorLogoIcon:Z

    if-eqz v4, :cond_b

    .line 803
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->sb:Landroid/view/View;

    const v5, 0x7f0d00e3

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mOperaterLogoView:Landroid/widget/ImageView;

    .line 805
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mOperaterLogoView:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/policy/NetworkController;->addOperatorLogoIconViewForTablet(Landroid/widget/ImageView;)V

    .line 810
    :cond_b
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mContentResolver:Landroid/content/ContentResolver;

    .line 811
    new-instance v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$BrightnessEnableObserver;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$BrightnessEnableObserver;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBrightnessEnableObserver:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$BrightnessEnableObserver;

    .line 812
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "notification_panel_brightness_adjustment"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_13

    const/4 v4, 0x1

    :goto_9
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBrightnessEnablebySettings:Z

    .line 813
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBrightnessEnablebySettings:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->setBrightnessControllerVisivility(Z)V

    .line 814
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "notification_panel_brightness_adjustment"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBrightnessEnableObserver:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$BrightnessEnableObserver;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 826
    .end local v27           #params:Landroid/widget/LinearLayout$LayoutParams;
    .end local v30           #scrollCart:Landroid/widget/LinearLayout;
    :goto_a
    return-void

    .line 395
    .end local v2           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v24           #mobileRSSI:Landroid/widget/ImageView;
    .end local v31           #scroller:Landroid/widget/ScrollView;
    .end local v33           #wifiRSSI:Landroid/widget/ImageView;
    :cond_c
    const v4, 0x7f030028

    const/4 v5, 0x0

    invoke-static {v12, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    goto/16 :goto_0

    .line 453
    .restart local v24       #mobileRSSI:Landroid/widget/ImageView;
    .restart local v32       #signalCluster:Lcom/android/systemui/statusbar/SignalClusterView;
    .restart local v33       #wifiRSSI:Landroid/widget/ImageView;
    :cond_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v6, 0x7f0d00aa

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCombinedLabelView(Landroid/widget/TextView;)V

    goto/16 :goto_1

    .line 458
    .end local v32           #signalCluster:Lcom/android/systemui/statusbar/SignalClusterView;
    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v6, 0x7f0d00b5

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/policy/NetworkController;->addWifiLabelView(Landroid/widget/TextView;)V

    .line 461
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v6, 0x7f0d0029

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/policy/NetworkController;->addDataTypeIconView(Landroid/widget/ImageView;)V

    .line 463
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v6, 0x7f0d00b2

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/policy/NetworkController;->addMobileLabelView(Landroid/widget/TextView;)V

    .line 465
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBarContents:Landroid/view/ViewGroup;

    const v6, 0x7f0d00aa

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCombinedLabelView(Landroid/widget/TextView;)V

    goto/16 :goto_1

    .line 513
    .restart local v2       #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v19       #layoutField:Ljava/lang/reflect/Field;
    .restart local v23       #miniAppPanelId:I
    :cond_f
    :try_start_5
    const-class v4, Lcom/android/systemui/R$layout;

    const-string v5, "status_bar_mini_mode_apps_panel"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    move-result-object v19

    goto/16 :goto_2

    .line 517
    :catch_0
    move-exception v14

    .line 518
    .local v14, e:Ljava/lang/SecurityException;
    :try_start_6
    const-string v4, "TabletStatusBar"

    const-string v5, "SecurityException"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    goto/16 :goto_3

    .line 575
    .end local v14           #e:Ljava/lang/SecurityException;
    .end local v19           #layoutField:Ljava/lang/reflect/Field;
    .end local v23           #miniAppPanelId:I
    :catch_1
    move-exception v15

    .line 576
    .local v15, ex:Ljava/lang/ClassNotFoundException;
    :goto_b
    const-string v4, "TabletStatusBar"

    const-string v5, "ClassNotFoundException"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsMiniAppPanelLoadedProperly:Z

    goto/16 :goto_5

    .line 519
    .end local v15           #ex:Ljava/lang/ClassNotFoundException;
    .restart local v19       #layoutField:Ljava/lang/reflect/Field;
    .restart local v23       #miniAppPanelId:I
    :catch_2
    move-exception v14

    .line 520
    .local v14, e:Ljava/lang/NoSuchFieldException;
    :try_start_7
    const-string v4, "TabletStatusBar"

    const-string v5, "NoSuchFieldException"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    goto/16 :goto_3

    .line 578
    .end local v14           #e:Ljava/lang/NoSuchFieldException;
    .end local v19           #layoutField:Ljava/lang/reflect/Field;
    .end local v23           #miniAppPanelId:I
    :catch_3
    move-exception v15

    .line 579
    .local v15, ex:Ljava/lang/NoSuchMethodException;
    :goto_c
    const-string v4, "TabletStatusBar"

    const-string v5, "NoSuchMethodException"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsMiniAppPanelLoadedProperly:Z

    goto/16 :goto_5

    .line 521
    .end local v15           #ex:Ljava/lang/NoSuchMethodException;
    .restart local v19       #layoutField:Ljava/lang/reflect/Field;
    .restart local v23       #miniAppPanelId:I
    :catch_4
    move-exception v14

    .line 522
    .local v14, e:Ljava/lang/IllegalArgumentException;
    :try_start_8
    const-string v4, "TabletStatusBar"

    const-string v5, "IllegalArgumentException"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto/16 :goto_3

    .line 581
    .end local v14           #e:Ljava/lang/IllegalArgumentException;
    .end local v19           #layoutField:Ljava/lang/reflect/Field;
    .end local v23           #miniAppPanelId:I
    :catch_5
    move-exception v15

    .line 582
    .local v15, ex:Ljava/lang/IllegalAccessException;
    :goto_d
    const-string v4, "TabletStatusBar"

    const-string v5, "IllegalAccessException"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsMiniAppPanelLoadedProperly:Z

    goto/16 :goto_5

    .line 523
    .end local v15           #ex:Ljava/lang/IllegalAccessException;
    .restart local v19       #layoutField:Ljava/lang/reflect/Field;
    .restart local v23       #miniAppPanelId:I
    :catch_6
    move-exception v14

    .line 524
    .local v14, e:Ljava/lang/IllegalAccessException;
    :try_start_9
    const-string v4, "TabletStatusBar"

    const-string v5, "IllegalAccessException"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    goto/16 :goto_3

    .line 584
    .end local v14           #e:Ljava/lang/IllegalAccessException;
    .end local v19           #layoutField:Ljava/lang/reflect/Field;
    .end local v23           #miniAppPanelId:I
    :catch_7
    move-exception v15

    .line 585
    .local v15, ex:Ljava/lang/reflect/InvocationTargetException;
    :goto_e
    const-string v4, "TabletStatusBar"

    const-string v5, "InvocationTargetException"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsMiniAppPanelLoadedProperly:Z

    goto/16 :goto_5

    .line 536
    .end local v15           #ex:Ljava/lang/reflect/InvocationTargetException;
    .restart local v19       #layoutField:Ljava/lang/reflect/Field;
    .restart local v23       #miniAppPanelId:I
    :cond_10
    :try_start_a
    const-string v4, "TabletStatusBar"

    const-string v5, "MiniModeAppsPanel is not loaded properly"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    goto/16 :goto_4

    .line 587
    .end local v19           #layoutField:Ljava/lang/reflect/Field;
    .end local v23           #miniAppPanelId:I
    :catch_8
    move-exception v15

    .line 588
    .local v15, ex:Ljava/lang/Exception;
    :goto_f
    const-string v4, "TabletStatusBar"

    const-string v5, "Loading MiniAppsPanel has failed."

    invoke-static {v4, v5, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 589
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsMiniAppPanelLoadedProperly:Z

    goto/16 :goto_5

    .line 634
    .end local v15           #ex:Ljava/lang/Exception;
    .restart local v20       #mCue:Landroid/view/View;
    :cond_11
    const-string v4, "TabletStatusBar"

    const-string v5, "can not load resource. (R.id.traybar_handler)"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 716
    .restart local v10       #WIFI_DISPLAY:Ljava/lang/String;
    .restart local v18       #intentFilter:Landroid/content/IntentFilter;
    :cond_12
    const-string v4, "TabletStatusBar"

    const-string v5, "can not load resource. (R.id.traybar_handler)"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 812
    .end local v10           #WIFI_DISPLAY:Ljava/lang/String;
    .end local v18           #intentFilter:Landroid/content/IntentFilter;
    .end local v20           #mCue:Landroid/view/View;
    .restart local v27       #params:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v30       #scrollCart:Landroid/widget/LinearLayout;
    .restart local v31       #scroller:Landroid/widget/ScrollView;
    :cond_13
    const/4 v4, 0x0

    goto/16 :goto_9

    .line 818
    .end local v27           #params:Landroid/widget/LinearLayout$LayoutParams;
    .end local v30           #scrollCart:Landroid/widget/LinearLayout;
    .end local v31           #scroller:Landroid/widget/ScrollView;
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v5, 0x7f0d0076

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    .line 819
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->removeAllViews()V

    .line 820
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->getNotificationLongClicker()Landroid/view/View$OnLongClickListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->setLongPressListener(Landroid/view/View$OnLongClickListener;)V

    .line 822
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v31

    check-cast v31, Landroid/widget/ScrollView;

    .line 823
    .restart local v31       #scroller:Landroid/widget/ScrollView;
    const/4 v4, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    goto/16 :goto_a

    .line 651
    .end local v31           #scroller:Landroid/widget/ScrollView;
    .restart local v16       #id:I
    :catch_9
    move-exception v4

    goto/16 :goto_7

    .line 650
    :catch_a
    move-exception v4

    goto/16 :goto_7

    .line 649
    :catch_b
    move-exception v4

    goto/16 :goto_7

    .line 648
    :catch_c
    move-exception v4

    goto/16 :goto_7

    .line 587
    .end local v2           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v16           #id:I
    .restart local v3       #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v19       #layoutField:Ljava/lang/reflect/Field;
    .restart local v23       #miniAppPanelId:I
    :catch_d
    move-exception v15

    move-object v2, v3

    .end local v3           #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v2       #lp:Landroid/view/WindowManager$LayoutParams;
    goto :goto_f

    .line 584
    .end local v2           #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v3       #lp:Landroid/view/WindowManager$LayoutParams;
    :catch_e
    move-exception v15

    move-object v2, v3

    .end local v3           #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v2       #lp:Landroid/view/WindowManager$LayoutParams;
    goto/16 :goto_e

    .line 581
    .end local v2           #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v3       #lp:Landroid/view/WindowManager$LayoutParams;
    :catch_f
    move-exception v15

    move-object v2, v3

    .end local v3           #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v2       #lp:Landroid/view/WindowManager$LayoutParams;
    goto/16 :goto_d

    .line 578
    .end local v2           #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v3       #lp:Landroid/view/WindowManager$LayoutParams;
    :catch_10
    move-exception v15

    move-object v2, v3

    .end local v3           #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v2       #lp:Landroid/view/WindowManager$LayoutParams;
    goto/16 :goto_c

    .line 575
    .end local v2           #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v3       #lp:Landroid/view/WindowManager$LayoutParams;
    :catch_11
    move-exception v15

    move-object v2, v3

    .end local v3           #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v2       #lp:Landroid/view/WindowManager$LayoutParams;
    goto/16 :goto_b
.end method

.method public animateCollapse()V
    .locals 1

    .prologue
    .line 1824
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->animateCollapse(I)V

    .line 1825
    return-void
.end method

.method public animateCollapse(I)V
    .locals 6
    .parameter "flags"

    .prologue
    const/16 v5, 0x41b

    const/16 v4, 0x411

    const/16 v3, 0x401

    const/16 v2, 0x3fd

    const/16 v1, 0x3e9

    .line 1828
    and-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_0

    .line 1829
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1830
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 1832
    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_1

    .line 1833
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1834
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 1836
    :cond_1
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_2

    .line 1837
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1838
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 1840
    :cond_2
    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_3

    .line 1841
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1842
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 1844
    :cond_3
    and-int/lit8 v0, p1, 0x10

    if-nez v0, :cond_4

    .line 1845
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1846
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 1850
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.systemui.statusbar.COLLAPSED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.permission.EXPAND_STATUS_BAR"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1852
    return-void
.end method

.method public animateExpand()V
    .locals 4

    .prologue
    const/16 v3, 0x3e8

    .line 1816
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.systemui.statusbar.EXPANDED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1819
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1820
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 1821
    return-void
.end method

.method public applyEDMPolicy()V
    .locals 4

    .prologue
    .line 2845
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->isSystemBarHidden()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2846
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->sb:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    .line 2847
    const-string v1, "TabletStatusBar"

    const-string v2, "Removed status bar view"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2856
    :goto_0
    return-void

    .line 2849
    :cond_0
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->sb:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->lp:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2, v3}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2850
    const-string v1, "TabletStatusBar"

    const-string v2, "Added status bar view"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2852
    :catch_0
    move-exception v0

    .line 2853
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "TabletStatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed Applying policy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public clearAll()V
    .locals 1

    .prologue
    .line 2748
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->onClearAllNotifications()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2752
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->animateCollapse()V

    .line 2753
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->visibilityChanged(Z)V

    .line 2754
    return-void

    .line 2749
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected createAndAddWindows()V
    .locals 0

    .prologue
    .line 346
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->addStatusBarWindow()V

    .line 347
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->addPanelWindows()V

    .line 348
    return-void
.end method

.method protected createHandler()Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 2

    .prologue
    .line 1307
    new-instance v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Lcom/android/systemui/statusbar/tablet/TabletStatusBar$1;)V

    return-object v0
.end method

.method public disable(I)V
    .locals 11
    .parameter "state"

    .prologue
    const/16 v10, 0x425

    const/16 v9, 0x3fd

    const/4 v3, 0x1

    const/high16 v8, 0x100

    const/4 v4, 0x0

    .line 1653
    iget v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mDisabled:I

    .line 1654
    .local v1, old:I
    xor-int v0, p1, v1

    .line 1655
    .local v0, diff:I
    iput p1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mDisabled:I

    .line 1658
    const/high16 v5, 0x80

    and-int/2addr v5, v0

    if-eqz v5, :cond_0

    .line 1659
    const/high16 v5, 0x80

    and-int/2addr v5, p1

    if-nez v5, :cond_6

    move v2, v3

    .line 1660
    .local v2, show:Z
    :goto_0
    const-string v6, "TabletStatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DISABLE_CLOCK: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v2, :cond_7

    const-string v5, "no"

    :goto_1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    sget-boolean v5, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useAttPlmnDisplay:Z

    if-nez v5, :cond_0

    .line 1663
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->showClock(Z)V

    .line 1667
    .end local v2           #show:Z
    :cond_0
    const/high16 v5, 0x10

    and-int/2addr v5, v0

    if-eqz v5, :cond_1

    .line 1668
    const/high16 v5, 0x10

    and-int/2addr v5, p1

    if-nez v5, :cond_8

    move v2, v3

    .line 1669
    .restart local v2       #show:Z
    :goto_2
    const-string v5, "TabletStatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DISABLE_SYSTEM_INFO: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v2, :cond_9

    const-string v3, "no"

    :goto_3
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationTrigger:Landroid/view/View;

    if-eqz v2, :cond_a

    move v3, v4

    :goto_4
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1672
    .end local v2           #show:Z
    :cond_1
    const/high16 v3, 0x1

    and-int/2addr v3, v0

    if-eqz v3, :cond_2

    .line 1673
    const/high16 v3, 0x1

    and-int/2addr v3, p1

    if-eqz v3, :cond_2

    .line 1674
    const-string v3, "TabletStatusBar"

    const-string v5, "DISABLE_EXPAND: yes"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->animateCollapse()V

    .line 1676
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->visibilityChanged(Z)V

    .line 1679
    :cond_2
    const/high16 v3, 0x2

    and-int/2addr v3, v0

    if-eqz v3, :cond_e

    .line 1680
    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/Prefs;->read(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v5, "do_not_disturb"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationDNDMode:Z

    .line 1683
    const/high16 v3, 0x2

    and-int/2addr v3, p1

    if-eqz v3, :cond_c

    .line 1684
    const-string v4, "TabletStatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DISABLE_NOTIFICATION_ICONS: yes"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationDNDMode:Z

    if-eqz v3, :cond_b

    const-string v3, " (DND)"

    :goto_5
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mTicker:Lcom/android/systemui/statusbar/tablet/TabletTicker;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/tablet/TabletTicker;->halt()V

    .line 1691
    :goto_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->reloadAllNotificationIcons()V

    .line 1697
    :cond_3
    :goto_7
    const/high16 v3, 0x760

    and-int/2addr v3, v0

    if-eqz v3, :cond_4

    .line 1704
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->setNavigationVisibility(I)V

    .line 1706
    and-int v3, p1, v8

    if-eqz v3, :cond_4

    .line 1708
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v3, v9}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1709
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v3, v9}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 1714
    :cond_4
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeTrayEnabled:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsMiniAppPanelLoadedProperly:Z

    if-eqz v3, :cond_5

    .line 1715
    const/high16 v3, 0x400

    and-int/2addr v3, v0

    or-int/2addr v3, v8

    if-eqz v3, :cond_5

    .line 1716
    const/high16 v3, 0x400

    and-int/2addr v3, p1

    or-int/2addr v3, v8

    if-eqz v3, :cond_5

    .line 1717
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v3, v10}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1718
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v3, v10}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 1724
    :cond_5
    return-void

    :cond_6
    move v2, v4

    .line 1659
    goto/16 :goto_0

    .line 1660
    .restart local v2       #show:Z
    :cond_7
    const-string v5, "yes"

    goto/16 :goto_1

    .end local v2           #show:Z
    :cond_8
    move v2, v4

    .line 1668
    goto/16 :goto_2

    .line 1669
    .restart local v2       #show:Z
    :cond_9
    const-string v3, "yes"

    goto/16 :goto_3

    .line 1670
    :cond_a
    const/16 v3, 0x8

    goto/16 :goto_4

    .line 1684
    .end local v2           #show:Z
    :cond_b
    const-string v3, ""

    goto :goto_5

    .line 1687
    :cond_c
    const-string v4, "TabletStatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DISABLE_NOTIFICATION_ICONS: no"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationDNDMode:Z

    if-eqz v3, :cond_d

    const-string v3, " (DND)"

    :goto_8
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_d
    const-string v3, ""

    goto :goto_8

    .line 1692
    :cond_e
    const/high16 v3, 0x8

    and-int/2addr v3, v0

    if-eqz v3, :cond_3

    .line 1693
    const/high16 v3, 0x8

    and-int/2addr v3, p1

    if-eqz v3, :cond_3

    .line 1694
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mTicker:Lcom/android/systemui/statusbar/tablet/TabletTicker;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/tablet/TabletTicker;->halt()V

    goto :goto_7
.end method

.method public doneTicking()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1802
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mFeedbackIconArea:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1805
    sget-boolean v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useAttPlmnDisplay:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1806
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1807
    const v0, 0x10a0001

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->setCarrierLabelVisibility(ZI)V

    .line 1811
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 2808
    const-string v0, "mDisabled=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2809
    iget v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mDisabled:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2810
    const-string v0, "mNetworkController:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2811
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/NetworkController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2812
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getExpandedViewMaxHeight()I
    .locals 1

    .prologue
    .line 830
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->getNotificationPanelHeight()I

    move-result v0

    return v0
.end method

.method protected getRecentsLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .locals 6
    .parameter "layoutParams"

    .prologue
    .line 1203
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    const/4 v2, -0x1

    const/16 v3, 0x7e8

    const v4, 0x1820100

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 1212
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x53

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1213
    const-string v1, "RecentsPanel"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1214
    const v1, 0x10301e9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1215
    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1218
    return-object v0
.end method

.method protected getSearchLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .locals 7
    .parameter "layoutParams"

    .prologue
    const/4 v1, -0x1

    .line 1223
    const/4 v6, 0x0

    .line 1224
    .local v6, opaque:Z
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7e8

    const v4, 0x820100

    if-eqz v6, :cond_0

    move v5, v1

    :goto_0
    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 1232
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDisplay:Landroid/view/Display;

    invoke-static {v1}, Landroid/app/ActivityManager;->isHighEndGfx(Landroid/view/Display;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1233
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x100

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1238
    :goto_1
    const/16 v1, 0x53

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1239
    const-string v1, "SearchPanel"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1241
    const v1, 0x10301e9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1242
    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1244
    return-object v0

    .line 1224
    .end local v0           #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_0
    const/4 v5, -0x3

    goto :goto_0

    .line 1235
    .restart local v0       #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_1
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1236
    const v1, 0x3f333333

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    goto :goto_1
.end method

.method protected getStatusBarGravity()I
    .locals 1

    .prologue
    .line 1288
    const/16 v0, 0x57

    return v0
.end method

.method public getStatusBarHeight()I
    .locals 2

    .prologue
    .line 1282
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0
.end method

.method public getStatusBarView()Landroid/view/View;
    .locals 1

    .prologue
    .line 970
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    return-object v0
.end method

.method protected haltTicker()V
    .locals 1

    .prologue
    .line 2867
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mTicker:Lcom/android/systemui/statusbar/tablet/TabletTicker;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/TabletTicker;->halt()V

    .line 2868
    return-void
.end method

.method public hideSearchPanel()V
    .locals 3

    .prologue
    .line 1274
    invoke-super {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->hideSearchPanel()V

    .line 1275
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 1277
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1278
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    invoke-virtual {v1, v2, v0}, Landroid/view/WindowManagerImpl;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1279
    return-void
.end method

.method protected isTopNotification(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 3
    .parameter "parent"
    .parameter "entry"

    .prologue
    const/4 v0, 0x0

    .line 2861
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2862
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected loadDimens()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    .line 899
    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 901
    .local v6, res:Landroid/content/res/Resources;
    const v7, 0x105000b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNaturalBarHeight:I

    .line 904
    const v7, 0x1050011

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 906
    .local v2, newIconSize:I
    sget-boolean v7, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v7, :cond_5

    const v7, 0x7f0c00ab

    :goto_0
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 910
    .local v1, newIconHPadding:I
    sget-boolean v7, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-nez v7, :cond_1

    .line 911
    const v7, 0x7f0c0026

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 912
    .local v4, newNavIconWidth:I
    const v7, 0x7f0c0027

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 914
    .local v3, newMenuNavIconWidth:I
    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavigationArea:Landroid/view/ViewGroup;

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavIconWidth:I

    if-eq v4, v7, :cond_0

    .line 915
    iput v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavIconWidth:I

    .line 917
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavIconWidth:I

    invoke-direct {v0, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 919
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBackButton:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 920
    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHomeButton:Landroid/view/View;

    invoke-virtual {v7, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 921
    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentButton:Landroid/view/View;

    invoke-virtual {v7, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 924
    .end local v0           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavigationArea:Landroid/view/ViewGroup;

    if-eqz v7, :cond_1

    iget v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMenuNavIconWidth:I

    if-eq v3, v7, :cond_1

    .line 925
    iput v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMenuNavIconWidth:I

    .line 927
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMenuNavIconWidth:I

    invoke-direct {v0, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 929
    .restart local v0       #lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMenuButton:Landroid/view/View;

    invoke-virtual {v7, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 934
    .end local v0           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v3           #newMenuNavIconWidth:I
    .end local v4           #newNavIconWidth:I
    :cond_1
    iget v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconHPadding:I

    if-ne v1, v7, :cond_2

    iget v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconSize:I

    if-eq v2, v7, :cond_3

    .line 936
    :cond_2
    iput v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconHPadding:I

    .line 937
    iput v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconSize:I

    .line 938
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->reloadAllNotificationIcons()V

    .line 949
    :cond_3
    const/4 v5, 0x0

    .line 950
    .local v5, numIcons:I
    sget-boolean v7, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v7, :cond_6

    .line 951
    const v7, 0x7f0b0009

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 957
    :goto_1
    iget v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMaxNotificationIcons:I

    if-eq v5, v7, :cond_4

    .line 958
    iput v5, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMaxNotificationIcons:I

    .line 960
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->reloadAllNotificationIcons()V

    .line 962
    sget-boolean v7, Lcom/android/systemui/statusbar/BaseStatusBar;->showOperatorLogoIcon:Z

    if-eqz v7, :cond_4

    .line 963
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->reloadLogoView(I)V

    .line 967
    :cond_4
    return-void

    .line 906
    .end local v1           #newIconHPadding:I
    .end local v5           #numIcons:I
    :cond_5
    const v7, 0x7f0c0018

    goto :goto_0

    .line 953
    .restart local v1       #newIconHPadding:I
    .restart local v5       #numIcons:I
    :cond_6
    const/high16 v7, 0x7f0b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    goto :goto_1
.end method

.method protected makeStatusBarView()Landroid/view/View;
    .locals 23

    .prologue
    .line 974
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 976
    .local v9, context:Landroid/content/Context;
    const-string v19, "window"

    invoke-static/range {v19 .. v19}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mWindowManager:Landroid/view/IWindowManager;

    .line 981
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x10403e0

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mPlmnDefault:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 989
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    const-string v20, "com.sec.feature.minimode_tray"

    invoke-virtual/range {v19 .. v20}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeTrayEnabled:Z

    .line 994
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/multiwindow/Utilities;->isMultiWindowEnabled(Landroid/content/Context;)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMultiWindowEnabled:Z

    .line 998
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->loadDimens()V

    .line 1000
    sget-boolean v19, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v19, :cond_4

    const v19, 0x7f030042

    :goto_1
    const/16 v20, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v9, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    .line 1002
    .local v15, sb:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    .line 1004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->setHandler(Landroid/os/Handler;)V

    .line 1009
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mWindowManager:Landroid/view/IWindowManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 1010
    const-string v19, "TabletStatusBar"

    const-string v20, "Tablet device cannot show navigation bar and system bar"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1015
    :cond_0
    :goto_2
    const v19, 0x7f0d008c

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/view/ViewGroup;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBarContents:Landroid/view/ViewGroup;

    .line 1018
    const v19, 0x7f0d008f

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationArea:Landroid/view/View;

    .line 1019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationArea:Landroid/view/View;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1022
    const v19, 0x7f0d00a9

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationTrigger:Landroid/view/View;

    .line 1025
    const v19, 0x7f0d0042

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/android/systemui/statusbar/tablet/NotificationIconArea;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationIconArea:Lcom/android/systemui/statusbar/tablet/NotificationIconArea;

    .line 1028
    const v19, 0x7f0d003f

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    .line 1030
    invoke-static {v9}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v17

    .line 1031
    .local v17, vc:Landroid/view/ViewConfiguration;
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPeekTapDuration:I

    .line 1032
    const/16 v19, 0x12c

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationFlingVelocity:I

    .line 1034
    new-instance v19, Lcom/android/systemui/statusbar/tablet/TabletTicker;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/tablet/TabletTicker;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mTicker:Lcom/android/systemui/statusbar/tablet/TabletTicker;

    .line 1037
    new-instance v19, Lcom/android/systemui/statusbar/policy/LocationController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Lcom/android/systemui/statusbar/policy/LocationController;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

    .line 1040
    new-instance v19, Lcom/android/systemui/statusbar/DoNotDisturb;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Lcom/android/systemui/statusbar/DoNotDisturb;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mDoNotDisturb:Lcom/android/systemui/statusbar/DoNotDisturb;

    .line 1042
    new-instance v19, Lcom/android/systemui/statusbar/policy/BatteryController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Lcom/android/systemui/statusbar/policy/BatteryController;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 1043
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    move-object/from16 v20, v0

    const v19, 0x7f0d0046

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/BatteryController;->addIconView(Landroid/widget/ImageView;)V

    .line 1044
    new-instance v19, Lcom/android/systemui/statusbar/policy/BluetoothController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Lcom/android/systemui/statusbar/policy/BluetoothController;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 1045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    move-object/from16 v20, v0

    const v19, 0x7f0d00ab

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->addIconView(Landroid/widget/ImageView;)V

    .line 1047
    new-instance v19, Lcom/android/systemui/statusbar/policy/NetworkController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Lcom/android/systemui/statusbar/policy/NetworkController;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 1048
    const v19, 0x7f0d0045

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/android/systemui/statusbar/SignalClusterView;

    .line 1050
    .local v16, signalCluster:Lcom/android/systemui/statusbar/SignalClusterView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->addSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V

    .line 1053
    const v19, 0x7f0d001a

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBackButton:Landroid/widget/ImageView;

    .line 1054
    const v19, 0x7f0d008d

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/view/ViewGroup;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavigationArea:Landroid/view/ViewGroup;

    .line 1055
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavigationArea:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    const v20, 0x7f0d001b

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHomeButton:Landroid/view/View;

    .line 1056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavigationArea:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    const v20, 0x7f0d001d

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMenuButton:Landroid/view/View;

    .line 1057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavigationArea:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    const v20, 0x7f0d001c

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentButton:Landroid/view/View;

    .line 1058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentButton:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1059
    sget-boolean v19, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v19, :cond_1

    .line 1060
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentButton:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1063
    :cond_1
    new-instance v12, Landroid/animation/LayoutTransition;

    invoke-direct {v12}, Landroid/animation/LayoutTransition;-><init>()V

    .line 1064
    .local v12, lt:Landroid/animation/LayoutTransition;
    const-wide/16 v19, 0xfa

    move-wide/from16 v0, v19

    invoke-virtual {v12, v0, v1}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 1066
    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    move/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v12, v0, v1, v2}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 1067
    const/16 v19, 0x1

    const-wide/16 v20, 0x0

    move/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v12, v0, v1, v2}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 1068
    new-instance v19, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$7;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$7;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 1078
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavigationArea:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 1080
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavigationArea:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 1083
    const v19, 0x7f0d00a6

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/view/ViewGroup;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mFeedbackIconArea:Landroid/view/ViewGroup;

    .line 1084
    const v19, 0x7f0d00a7

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/android/systemui/statusbar/tablet/InputMethodButton;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodSwitchButton:Lcom/android/systemui/statusbar/tablet/InputMethodButton;

    .line 1086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodSwitchButton:Lcom/android/systemui/statusbar/tablet/InputMethodButton;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1088
    sget-boolean v19, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v19, :cond_2

    .line 1089
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavigationArea:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    const v20, 0x7f0d0119

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mQuickLaunchButton:Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;

    .line 1093
    :cond_2
    const v19, 0x7f0d00a8

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/android/systemui/statusbar/policy/CompatModeButton;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModeButton:Lcom/android/systemui/statusbar/policy/CompatModeButton;

    .line 1094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModeButton:Lcom/android/systemui/statusbar/policy/CompatModeButton;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/systemui/statusbar/policy/CompatModeButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1095
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModeButton:Lcom/android/systemui/statusbar/policy/CompatModeButton;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Lcom/android/systemui/statusbar/policy/CompatModeButton;->setVisibility(I)V

    .line 1098
    const v19, 0x7f0d008e

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mFakeSpaceBar:Landroid/view/View;

    .line 1101
    const v19, 0x7f0d0091

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mShadow:Landroid/view/View;

    .line 1102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mShadow:Landroid/view/View;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$8;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$8;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1123
    const/16 v7, 0x2ee

    .line 1124
    .local v7, LIGHTS_GOING_OUT_SYSBAR_DURATION:I
    const/16 v6, 0x2ee

    .line 1125
    .local v6, LIGHTS_GOING_OUT_SHADOW_DURATION:I
    const/4 v5, 0x0

    .line 1127
    .local v5, LIGHTS_GOING_OUT_SHADOW_DELAY:I
    const/16 v4, 0xc8

    .line 1129
    .local v4, LIGHTS_COMING_UP_SYSBAR_DURATION:I
    const/4 v3, 0x0

    .line 1131
    .local v3, LIGHTS_COMING_UP_SHADOW_DURATION:I
    new-instance v18, Landroid/animation/LayoutTransition;

    invoke-direct/range {v18 .. v18}, Landroid/animation/LayoutTransition;-><init>()V

    .line 1132
    .local v18, xition:Landroid/animation/LayoutTransition;
    const/16 v19, 0x2

    const/16 v20, 0x0

    const-string v21, "alpha"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    fill-array-data v22, :array_0

    invoke-static/range {v20 .. v22}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 1134
    const/16 v19, 0x2

    const-wide/16 v20, 0xc8

    invoke-virtual/range {v18 .. v21}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 1135
    const/16 v19, 0x2

    const-wide/16 v20, 0x0

    invoke-virtual/range {v18 .. v21}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 1136
    const/16 v19, 0x3

    const/16 v20, 0x0

    const-string v21, "alpha"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    fill-array-data v22, :array_1

    invoke-static/range {v20 .. v22}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 1138
    const/16 v19, 0x3

    const-wide/16 v20, 0x2ee

    invoke-virtual/range {v18 .. v21}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 1139
    const/16 v19, 0x3

    const-wide/16 v20, 0x0

    invoke-virtual/range {v18 .. v21}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 1140
    const v19, 0x7f0d008b

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/view/ViewGroup;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 1142
    new-instance v18, Landroid/animation/LayoutTransition;

    .end local v18           #xition:Landroid/animation/LayoutTransition;
    invoke-direct/range {v18 .. v18}, Landroid/animation/LayoutTransition;-><init>()V

    .line 1143
    .restart local v18       #xition:Landroid/animation/LayoutTransition;
    const/16 v19, 0x2

    const/16 v20, 0x0

    const-string v21, "alpha"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    fill-array-data v22, :array_2

    invoke-static/range {v20 .. v22}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 1145
    const/16 v19, 0x2

    const-wide/16 v20, 0x2ee

    invoke-virtual/range {v18 .. v21}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 1146
    const/16 v19, 0x2

    const-wide/16 v20, 0x0

    invoke-virtual/range {v18 .. v21}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 1147
    const/16 v19, 0x3

    const/16 v20, 0x0

    const-string v21, "alpha"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    fill-array-data v22, :array_3

    invoke-static/range {v20 .. v22}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 1149
    const/16 v19, 0x3

    const-wide/16 v20, 0x0

    invoke-virtual/range {v18 .. v21}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 1150
    const/16 v19, 0x3

    const-wide/16 v20, 0x0

    invoke-virtual/range {v18 .. v21}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 1151
    const v19, 0x7f0d0090

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/view/ViewGroup;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 1154
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->setAreThereNotifications()V

    .line 1157
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 1158
    .local v11, filter:Landroid/content/IntentFilter;
    const-string v19, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1159
    const-string v19, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1160
    const-string v19, "android.intent.action.BATTERY_CHANGED"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1162
    const-string v19, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v9, v0, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1167
    sget-boolean v19, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v19, :cond_3

    .line 1168
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v19, -0x1

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v14, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1170
    .local v14, params:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v19, Landroid/widget/LinearLayout;

    move-object/from16 v0, v19

    invoke-direct {v0, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;

    .line 1171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1179
    new-instance v13, Lcom/android/systemui/statusbar/policy/FaceDetectionController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Lcom/android/systemui/statusbar/policy/FaceDetectionController;-><init>(Landroid/content/Context;)V

    .line 1180
    .local v13, mFaceDetectionController:Lcom/android/systemui/statusbar/policy/FaceDetectionController;
    const v19, 0x7f0d011c

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->addIconView(Landroid/widget/ImageView;)V

    .line 1186
    .end local v13           #mFaceDetectionController:Lcom/android/systemui/statusbar/policy/FaceDetectionController;
    .end local v14           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    :try_start_2
    const-string v19, "android.view.MotionEvent"

    invoke-static/range {v19 .. v19}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 1187
    .local v8, classMotionEvent:Ljava/lang/Class;
    const-string v19, "getSumSize"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mGetSumSizeMethod:Ljava/lang/reflect/Method;

    .line 1188
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsExistPalmMethod:Z
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1198
    .end local v8           #classMotionEvent:Ljava/lang/Class;
    :goto_3
    return-object v15

    .line 983
    .end local v3           #LIGHTS_COMING_UP_SHADOW_DURATION:I
    .end local v4           #LIGHTS_COMING_UP_SYSBAR_DURATION:I
    .end local v5           #LIGHTS_GOING_OUT_SHADOW_DELAY:I
    .end local v6           #LIGHTS_GOING_OUT_SHADOW_DURATION:I
    .end local v7           #LIGHTS_GOING_OUT_SYSBAR_DURATION:I
    .end local v11           #filter:Landroid/content/IntentFilter;
    .end local v12           #lt:Landroid/animation/LayoutTransition;
    .end local v15           #sb:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;
    .end local v16           #signalCluster:Lcom/android/systemui/statusbar/SignalClusterView;
    .end local v17           #vc:Landroid/view/ViewConfiguration;
    .end local v18           #xition:Landroid/animation/LayoutTransition;
    :catch_0
    move-exception v10

    .line 984
    .local v10, ex:Landroid/content/res/Resources$NotFoundException;
    const-string v19, ""

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mPlmnDefault:Ljava/lang/String;

    goto/16 :goto_0

    .line 1000
    .end local v10           #ex:Landroid/content/res/Resources$NotFoundException;
    :cond_4
    const v19, 0x7f030022

    goto/16 :goto_1

    .line 1189
    .restart local v3       #LIGHTS_COMING_UP_SHADOW_DURATION:I
    .restart local v4       #LIGHTS_COMING_UP_SYSBAR_DURATION:I
    .restart local v5       #LIGHTS_GOING_OUT_SHADOW_DELAY:I
    .restart local v6       #LIGHTS_GOING_OUT_SHADOW_DURATION:I
    .restart local v7       #LIGHTS_GOING_OUT_SYSBAR_DURATION:I
    .restart local v11       #filter:Landroid/content/IntentFilter;
    .restart local v12       #lt:Landroid/animation/LayoutTransition;
    .restart local v15       #sb:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;
    .restart local v16       #signalCluster:Lcom/android/systemui/statusbar/SignalClusterView;
    .restart local v17       #vc:Landroid/view/ViewConfiguration;
    .restart local v18       #xition:Landroid/animation/LayoutTransition;
    :catch_1
    move-exception v10

    .line 1190
    .local v10, ex:Ljava/lang/ClassNotFoundException;
    const-string v19, "TabletStatusBar"

    const-string v20, "ClassNotFoundException"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsExistPalmMethod:Z

    goto :goto_3

    .line 1192
    .end local v10           #ex:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v10

    .line 1193
    .local v10, ex:Ljava/lang/NoSuchMethodException;
    const-string v19, "TabletStatusBar"

    const-string v20, "NoSuchMethodException"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsExistPalmMethod:Z

    goto :goto_3

    .line 1012
    .end local v3           #LIGHTS_COMING_UP_SHADOW_DURATION:I
    .end local v4           #LIGHTS_COMING_UP_SYSBAR_DURATION:I
    .end local v5           #LIGHTS_GOING_OUT_SHADOW_DELAY:I
    .end local v6           #LIGHTS_GOING_OUT_SHADOW_DURATION:I
    .end local v7           #LIGHTS_GOING_OUT_SYSBAR_DURATION:I
    .end local v10           #ex:Ljava/lang/NoSuchMethodException;
    .end local v11           #filter:Landroid/content/IntentFilter;
    .end local v12           #lt:Landroid/animation/LayoutTransition;
    .end local v16           #signalCluster:Lcom/android/systemui/statusbar/SignalClusterView;
    .end local v17           #vc:Landroid/view/ViewConfiguration;
    .end local v18           #xition:Landroid/animation/LayoutTransition;
    :catch_3
    move-exception v19

    goto/16 :goto_2

    .line 1132
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 1136
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 1143
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 1147
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public onBarHeightChanged(I)V
    .locals 3
    .parameter "height"

    .prologue
    .line 1292
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 1294
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    if-nez v0, :cond_1

    .line 1303
    :cond_0
    :goto_0
    return-void

    .line 1298
    :cond_1
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v2, p1, :cond_0

    .line 1299
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1300
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    .line 1301
    .local v1, wm:Landroid/view/WindowManager;
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public onClickCompatModeButton()V
    .locals 3

    .prologue
    .line 2170
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModePanel:Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    const/16 v0, 0x41a

    .line 2172
    .local v0, msg:I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 2173
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 2174
    return-void

    .line 2170
    .end local v0           #msg:I
    :cond_0
    const/16 v0, 0x41b

    goto :goto_0
.end method

.method public onClickInputMethodSwitchButton()V
    .locals 3

    .prologue
    .line 2163
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    const/16 v0, 0x410

    .line 2165
    .local v0, msg:I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 2166
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 2167
    return-void

    .line 2163
    .end local v0           #msg:I
    :cond_0
    const/16 v0, 0x411

    goto :goto_0
.end method

.method public onClickRecentButton()V
    .locals 3

    .prologue
    .line 2143
    iget v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mDisabled:I

    const/high16 v2, 0x1

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 2144
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/recent/RecentsPanelView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const/16 v0, 0x3fd

    .line 2146
    .local v0, msg:I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 2147
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 2149
    .end local v0           #msg:I
    :cond_0
    return-void

    .line 2144
    :cond_1
    const/16 v0, 0x3fc

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 882
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->loadDimens()V

    .line 883
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanelParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->getNotificationPanelHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 884
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanelParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/view/WindowManagerImpl;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 886
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView;->updateValuesFromResources()V

    .line 887
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mShowSearchHoldoff:I

    .line 889
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->updateSearchPanel()V

    .line 892
    sget-boolean v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v0, :cond_0

    .line 893
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->updateText()V

    .line 896
    :cond_0
    return-void
.end method

.method public onHardKeyboardEnabledChange(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 2032
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->setHardKeyboardEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2035
    :goto_0
    return-void

    .line 2033
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onLongClickRecentButton()V
    .locals 4

    .prologue
    .line 2178
    iget v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mDisabled:I

    const/high16 v3, 0x1

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    .line 2180
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2181
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2182
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2183
    const-string v2, "sec.android.intent.extra.LAUNCHER_ACTION"

    const-string v3, "com.android.launcher2.ALL_APPS"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2184
    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2189
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 2185
    :catch_0
    move-exception v0

    .line 2186
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onRecentsPanelVisibilityChanged(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 2012
    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mAltBackButtonEnabledForIme:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 2013
    .local v0, altBack:Z
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavigationIconHints:I

    or-int/lit8 v1, v1, 0x8

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/CommandQueue;->setNavigationIconHints(I)V

    .line 2016
    return-void

    .line 2012
    .end local v0           #altBack:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2013
    .restart local v0       #altBack:Z
    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavigationIconHints:I

    and-int/lit8 v1, v1, -0x9

    goto :goto_1
.end method

.method public reloadLogoView(I)V
    .locals 3
    .parameter "maxIcons"

    .prologue
    const/16 v2, 0x8

    .line 2576
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mOperaterLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 2577
    const-string v0, "TabletStatusBar"

    const-string v1, "reloadLogoView!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2579
    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->isSIMandOperatorMatched()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2581
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mOperaterLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 2582
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mOperaterLogoView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2583
    const-string v0, "TabletStatusBar"

    const-string v1, "reveal LogoView !!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2590
    :cond_0
    :goto_0
    return-void

    .line 2585
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mOperaterLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2586
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mOperaterLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2587
    const-string v0, "TabletStatusBar"

    const-string v1, "remove LogoView !!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeIcon(Ljava/lang/String;II)V
    .locals 0
    .parameter "slot"
    .parameter "index"
    .parameter "viewIndex"

    .prologue
    .line 1604
    return-void
.end method

.method public removeNotification(Landroid/os/IBinder;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 1630
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->removeNotificationViews(Landroid/os/IBinder;)Lcom/android/internal/statusbar/StatusBarNotification;

    .line 1631
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mTicker:Lcom/android/systemui/statusbar/tablet/TabletTicker;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/tablet/TabletTicker;->remove(Landroid/os/IBinder;)V

    .line 1632
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->setAreThereNotifications()V

    .line 1635
    sget-boolean v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useAttPlmnDisplay:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1636
    const/4 v0, 0x1

    const/high16 v1, 0x10a

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->setCarrierLabelVisibility(ZI)V

    .line 1639
    :cond_0
    return-void
.end method

.method removePlmnString()V
    .locals 3

    .prologue
    .line 2945
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 2946
    const/4 v1, 0x0

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->setCarrierLabelVisibility(ZI)V

    .line 2947
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;->getChildCount()I

    move-result v0

    .line 2950
    .local v0, count:I
    if-nez v0, :cond_0

    .line 2951
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->showPlmnString()V

    .line 2955
    .end local v0           #count:I
    :cond_0
    return-void
.end method

.method public resetNotificationPeekFadeTimer()V
    .locals 4

    .prologue
    const/16 v3, 0x3eb

    .line 2363
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 2364
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessageDelayed(IJ)Z

    .line 2366
    return-void
.end method

.method protected setAreThereNotifications()V
    .locals 2

    .prologue
    .line 2049
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    if-eqz v0, :cond_0

    .line 2050
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->hasClearableItems()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->setClearable(Z)V

    .line 2052
    sget-boolean v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v0, :cond_0

    .line 2053
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->updateClearButton()V

    .line 2057
    :cond_0
    return-void

    .line 2050
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setCarrierLabelVisibility(ZI)V
    .locals 6
    .parameter "visible"
    .parameter "anim"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 2958
    const-string v1, "TabletStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCarrierLabelVisibility : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " count : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;->getChildCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2959
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBarContents:Landroid/view/ViewGroup;

    const v4, 0x7f0d0047

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2961
    .local v0, clock:Landroid/view/View;
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mPlmnDefault:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2962
    if-eqz v0, :cond_0

    .line 2963
    if-nez p1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2966
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 2967
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2969
    :cond_1
    return-void

    :cond_2
    move v1, v3

    .line 2963
    goto :goto_0

    :cond_3
    move v2, v3

    .line 2967
    goto :goto_1
.end method

.method public setHardKeyboardStatus(ZZ)V
    .locals 1
    .parameter "available"
    .parameter "enabled"

    .prologue
    .line 2024
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodSwitchButton:Lcom/android/systemui/statusbar/tablet/InputMethodButton;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->setHardKeyboardStatus(Z)V

    .line 2025
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->updateNotificationIcons()V

    .line 2026
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->setHardKeyboardStatus(ZZ)V

    .line 2027
    return-void
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;II)V
    .locals 5
    .parameter "token"
    .parameter "vis"
    .parameter "backDisposition"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1991
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodSwitchButton:Lcom/android/systemui/statusbar/tablet/InputMethodButton;

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, p1, v1}, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->setImeWindowStatus(Landroid/os/IBinder;Z)V

    .line 1993
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->updateNotificationIcons()V

    .line 1994
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->setImeToken(Landroid/os/IBinder;)V

    .line 1996
    const/4 v1, 0x2

    if-eq p3, v1, :cond_0

    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_2

    :cond_0
    move v0, v2

    .line 1998
    .local v0, altBack:Z
    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mAltBackButtonEnabledForIme:Z

    .line 2000
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavigationIconHints:I

    or-int/lit8 v1, v1, 0x8

    :goto_2
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/CommandQueue;->setNavigationIconHints(I)V

    .line 2008
    return-void

    .end local v0           #altBack:Z
    :cond_1
    move v1, v3

    .line 1991
    goto :goto_0

    :cond_2
    move v0, v3

    .line 1996
    goto :goto_1

    .line 2000
    .restart local v0       #altBack:Z
    :cond_3
    iget v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavigationIconHints:I

    and-int/lit8 v1, v1, -0x9

    goto :goto_2
.end method

.method public setLightsOn(Z)V
    .locals 4
    .parameter "on"

    .prologue
    const/4 v3, 0x1

    .line 1916
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMenuButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1917
    const/4 p1, 0x1

    .line 1920
    :cond_0
    const-string v0, "TabletStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLightsOn("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    if-eqz p1, :cond_1

    .line 1922
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->setSystemUiVisibility(II)V

    .line 1926
    :goto_0
    return-void

    .line 1924
    :cond_1
    invoke-virtual {p0, v3, v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->setSystemUiVisibility(II)V

    goto :goto_0
.end method

.method public setMaxBrightness(I)V
    .locals 1
    .parameter "maxLevel"

    .prologue
    .line 2882
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mBrightness:Lcom/android/systemui/statusbar/policy/BrightnessController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/BrightnessController;->setMaxBrightness(I)V

    .line 2883
    return-void
.end method

.method public setNavigationIconHints(I)V
    .locals 4
    .parameter "hints"

    .prologue
    const/high16 v2, 0x3f80

    const/high16 v1, 0x3f00

    .line 1856
    iget v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavigationIconHints:I

    if-ne p1, v0, :cond_0

    .line 1884
    :goto_0
    return-void

    .line 1864
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavigationIconHints:I

    .line 1866
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBackButton:Landroid/widget/ImageView;

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1868
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHomeButton:Landroid/view/View;

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1870
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentButton:Landroid/view/View;

    and-int/lit8 v3, p1, 0x4

    if-eqz v3, :cond_3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1873
    sget-boolean v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v0, :cond_5

    .line 1874
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBackButton:Landroid/widget/ImageView;

    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_4

    const v0, 0x7f020182

    :goto_4
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1866
    goto :goto_1

    :cond_2
    move v0, v2

    .line 1868
    goto :goto_2

    :cond_3
    move v1, v2

    .line 1870
    goto :goto_3

    .line 1874
    :cond_4
    const v0, 0x7f020181

    goto :goto_4

    .line 1879
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBackButton:Landroid/widget/ImageView;

    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_6

    const v0, 0x7f02003c

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_6
    const v0, 0x7f02003b

    goto :goto_5
.end method

.method public setSystemUiVisibility(II)V
    .locals 7
    .parameter "vis"
    .parameter "mask"

    .prologue
    const/16 v4, 0x407

    const/16 v3, 0x406

    .line 1895
    iget v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSystemUiVisibility:I

    .line 1896
    .local v2, oldVal:I
    xor-int/lit8 v5, p2, -0x1

    and-int/2addr v5, v2

    and-int v6, p1, p2

    or-int v1, v5, v6

    .line 1897
    .local v1, newVal:I
    xor-int v0, v1, v2

    .line 1899
    .local v0, diff:I
    if-eqz v0, :cond_1

    .line 1900
    iput v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSystemUiVisibility:I

    .line 1902
    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_0

    .line 1903
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1904
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1905
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    and-int/lit8 v6, p1, 0x1

    if-nez v6, :cond_2

    :goto_0
    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 1909
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->notifyUiVisibilityChanged()V

    .line 1911
    :cond_1
    return-void

    :cond_2
    move v3, v4

    .line 1905
    goto :goto_0
.end method

.method protected shouldDisableNavbarGestures()Z
    .locals 2

    .prologue
    .line 2876
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mDisabled:I

    const/high16 v1, 0x20

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showClock(Z)V
    .locals 6
    .parameter "show"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1642
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBarContents:Landroid/view/ViewGroup;

    const v5, 0x7f0d0047

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1643
    .local v0, clock:Landroid/view/View;
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBarContents:Landroid/view/ViewGroup;

    const v5, 0x7f0d00aa

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1644
    .local v1, network_text:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1645
    if-eqz p1, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1647
    :cond_0
    if-eqz v1, :cond_1

    .line 1648
    if-nez p1, :cond_3

    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1650
    :cond_1
    return-void

    :cond_2
    move v2, v4

    .line 1645
    goto :goto_0

    :cond_3
    move v3, v4

    .line 1648
    goto :goto_1
.end method

.method showPlmnString()V
    .locals 4

    .prologue
    .line 2930
    const-string v1, "TabletStatusBar"

    const-string v2, "showPlmnString()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2931
    const/4 v1, 0x1

    const/high16 v2, 0x10a

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->setCarrierLabelVisibility(ZI)V

    .line 2933
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 2934
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 2935
    .local v0, mPlmnHandler:Landroid/os/Handler;
    new-instance v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$14;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$14;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2942
    .end local v0           #mPlmnHandler:Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method public showSearchPanel()V
    .locals 3

    .prologue
    .line 1265
    invoke-super {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->showSearchPanel()V

    .line 1266
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 1268
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x21

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1269
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    invoke-virtual {v1, v2, v0}, Landroid/view/WindowManagerImpl;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1270
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 843
    invoke-super {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->start()V

    .line 846
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    .line 847
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 848
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStorageManager:Landroid/os/storage/StorageManager;

    new-instance v1, Lcom/android/systemui/usb/StorageNotification;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/usb/StorageNotification;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 852
    :cond_0
    return-void
.end method

.method public startTicking()V
    .locals 2

    .prologue
    .line 2924
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mFeedbackIconArea:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2925
    return-void
.end method

.method protected tick(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Z)V
    .locals 2
    .parameter "key"
    .parameter "n"
    .parameter "firstTime"

    .prologue
    .line 1768
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1798
    :cond_0
    :goto_0
    return-void

    .line 1773
    :cond_1
    if-nez p3, :cond_2

    iget-object v0, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    .line 1780
    :cond_2
    iget-object v0, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->hasTicker(Landroid/app/Notification;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1781
    iget v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mDisabled:I

    const/high16 v1, 0xa

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 1783
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mTicker:Lcom/android/systemui/statusbar/tablet/TabletTicker;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/tablet/TabletTicker;->add(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V

    goto :goto_0
.end method

.method public toggleNotificationPanel()V
    .locals 2

    .prologue
    .line 2915
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x3e9

    .line 2917
    .local v0, msg:I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 2918
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 2919
    return-void

    .line 2915
    .end local v0           #msg:I
    :cond_0
    const/16 v0, 0x3e8

    goto :goto_0
.end method

.method public topAppWindowChanged(Z)V
    .locals 3
    .parameter "showMenu"

    .prologue
    const/4 v1, 0x0

    .line 1932
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMenuButton:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1935
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->setLightsOn(Z)V

    .line 1937
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModeButton:Lcom/android/systemui/statusbar/policy/CompatModeButton;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/CompatModeButton;->refresh()V

    .line 1938
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModeButton:Lcom/android/systemui/statusbar/policy/CompatModeButton;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/CompatModeButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 1939
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/Prefs;->read(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "shown_compat_mode_help"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1941
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->showCompatibilityHelp()V

    .line 1947
    :cond_1
    :goto_1
    return-void

    .line 1932
    :cond_2
    const/16 v0, 0x8

    goto :goto_0

    .line 1944
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->hideCompatibilityHelp()V

    .line 1945
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModePanel:Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->closePanel()V

    goto :goto_1
.end method

.method protected updateExpandedViewPos(I)V
    .locals 0
    .parameter "expandedPosition"

    .prologue
    .line 2872
    return-void
.end method

.method public updateIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 0
    .parameter "slot"
    .parameter "index"
    .parameter "viewIndex"
    .parameter "old"
    .parameter "icon"

    .prologue
    .line 1600
    return-void
.end method

.method public updateNotificationCountText()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 2888
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v8

    .line 2889
    .local v8, size:I
    iget-object v9, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 2890
    .local v7, res:Landroid/content/res/Resources;
    const v9, 0x7f0a006b

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2891
    .local v6, ongoingTitle:Ljava/lang/String;
    const v9, 0x7f0a006c

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2892
    .local v3, latestTitle:Ljava/lang/String;
    const v9, 0x7f0a005b

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2893
    .local v4, numFormat:Ljava/lang/String;
    const/4 v5, 0x0

    .line 2894
    .local v5, ongoingNum:I
    const/4 v2, 0x0

    .line 2896
    .local v2, latestNum:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v8, :cond_2

    .line 2897
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v9, v1}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 2898
    .local v0, entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    invoke-virtual {v9}, Lcom/android/internal/statusbar/StatusBarNotification;->isMiniCon()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2896
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2900
    :cond_0
    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    invoke-virtual {v9}, Lcom/android/internal/statusbar/StatusBarNotification;->isOngoing()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2901
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2903
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2907
    .end local v0           #entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_2
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOngoingNotificationText:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    new-array v11, v14, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-static {v4, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2909
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLatestNotificationText:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    new-array v11, v14, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-static {v4, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2911
    return-void
.end method

.method protected updateNotificationIcons()V
    .locals 25

    .prologue
    .line 2482
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    if-nez v2, :cond_1

    .line 2572
    :cond_0
    :goto_0
    return-void

    .line 2486
    :cond_1
    sget-boolean v2, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v2, :cond_2

    .line 2487
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->tw_loadNotificationPanel()V

    .line 2493
    :goto_1
    new-instance v17, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconSize:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconHPadding:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNaturalBarHeight:I

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2497
    .local v17, params:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationDNDMode:Z

    if-eqz v2, :cond_3

    .line 2498
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 2499
    new-instance v2, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v4, 0x7f0a00e5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v4, 0x7f0a00e6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    const v3, 0x7f02002c

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v9

    .line 2506
    .local v9, dndNotification:Landroid/app/Notification;
    new-instance v15, Lcom/android/systemui/statusbar/StatusBarIconView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v3, "_dnd"

    invoke-direct {v15, v2, v3, v9}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V

    .line 2508
    .local v15, iconView:Lcom/android/systemui/statusbar/StatusBarIconView;
    const v2, 0x7f02002c

    invoke-virtual {v15, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setImageResource(I)V

    .line 2509
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v15, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2510
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconHPadding:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconHPadding:I

    const/4 v5, 0x0

    invoke-virtual {v15, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->setPadding(IIII)V

    .line 2512
    new-instance v23, Lcom/android/systemui/statusbar/NotificationData$Entry;

    const/16 v24, 0x0

    new-instance v2, Lcom/android/internal/statusbar/StatusBarNotification;

    const-string v3, ""

    const/4 v4, 0x0

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-direct/range {v2 .. v9}, Lcom/android/internal/statusbar/StatusBarNotification;-><init>(Ljava/lang/String;ILjava/lang/String;IIILandroid/app/Notification;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v2, v15}, Lcom/android/systemui/statusbar/NotificationData$Entry;-><init>(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationDNDDummyEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 2517
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    move-object/from16 v0, v17

    invoke-virtual {v2, v15, v0}, Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 2489
    .end local v9           #dndNotification:Landroid/app/Notification;
    .end local v15           #iconView:Lcom/android/systemui/statusbar/StatusBarIconView;
    .end local v17           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->loadNotificationPanel()V

    goto/16 :goto_1

    .line 2521
    .restart local v17       #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mDisabled:I

    const/high16 v3, 0x2

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    .line 2527
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v10

    .line 2533
    .local v10, N:I
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 2538
    .local v21, toShow:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMaxNotificationIcons:I

    move/from16 v16, v0

    .line 2539
    .local v16, maxNotificationIconsCount:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodSwitchButton:Lcom/android/systemui/statusbar/tablet/InputMethodButton;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_4

    add-int/lit8 v16, v16, -0x1

    .line 2540
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModeButton:Lcom/android/systemui/statusbar/policy/CompatModeButton;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/CompatModeButton;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_5

    add-int/lit8 v16, v16, -0x1

    .line 2542
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->isDeviceProvisioned()Z

    move-result v18

    .line 2544
    .local v18, provisioned:Z
    const/4 v13, 0x0

    .local v13, i:I
    :goto_2
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v16

    if-ge v2, v0, :cond_6

    .line 2545
    if-lt v13, v10, :cond_8

    .line 2553
    :cond_6
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 2554
    .local v20, toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v13, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;->getChildCount()I

    move-result v2

    if-ge v13, v2, :cond_c

    .line 2555
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    invoke-virtual {v2, v13}, Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 2556
    .local v11, child:Landroid/view/View;
    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 2557
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2554
    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 2546
    .end local v11           #child:Landroid/view/View;
    .end local v20           #toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    sub-int v3, v10, v13

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v12

    .line 2547
    .local v12, ent:Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-eqz v18, :cond_9

    iget-object v2, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget v2, v2, Lcom/android/internal/statusbar/StatusBarNotification;->score:I

    const/16 v3, -0xa

    if-ge v2, v3, :cond_a

    :cond_9
    iget-object v2, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->showNotificationEvenIfUnprovisioned(Lcom/android/internal/statusbar/StatusBarNotification;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2549
    :cond_a
    iget-object v2, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2544
    :cond_b
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 2561
    .end local v12           #ent:Lcom/android/systemui/statusbar/NotificationData$Entry;
    .restart local v20       #toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_c
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/view/View;

    .line 2562
    .local v19, remove:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;->removeView(Landroid/view/View;)V

    goto :goto_4

    .line 2565
    .end local v19           #remove:Landroid/view/View;
    :cond_d
    const/4 v13, 0x0

    :goto_5
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v13, v2, :cond_0

    .line 2566
    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/view/View;

    .line 2567
    .local v22, v:Landroid/view/View;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconHPadding:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconHPadding:I

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 2568
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_e

    .line 2569
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v13, v1}, Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2565
    :cond_e
    add-int/lit8 v13, v13, 0x1

    goto :goto_5
.end method

.method protected updateRecentsPanel()V
    .locals 2

    .prologue
    .line 1248
    sget-boolean v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v0, :cond_0

    .line 1249
    const v0, 0x7f030047

    invoke-super {p0, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateRecentsPanel(I)V

    .line 1253
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->setStatusBarView(Landroid/view/View;)V

    .line 1254
    return-void

    .line 1251
    :cond_0
    const v0, 0x7f03002d

    invoke-super {p0, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateRecentsPanel(I)V

    goto :goto_0
.end method

.method protected updateSearchPanel()V
    .locals 2

    .prologue
    .line 1258
    invoke-super {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateSearchPanel()V

    .line 1259
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/SearchPanelView;->setStatusBarView(Landroid/view/View;)V

    .line 1260
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->setDelegateView(Landroid/view/View;)V

    .line 1261
    return-void
.end method

.method protected workAroundBadLayerDrawableOpacity(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 2737
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2738
    .local v0, bgd:Landroid/graphics/drawable/Drawable;
    instance-of v2, v0, Landroid/graphics/drawable/LayerDrawable;

    if-nez v2, :cond_0

    .line 2744
    :goto_0
    return-void

    :cond_0
    move-object v1, v0

    .line 2740
    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 2741
    .local v1, d:Landroid/graphics/drawable/LayerDrawable;
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2742
    const/4 v2, -0x3

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->setOpacity(I)V

    .line 2743
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
