.class public Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;
.super Landroid/widget/LinearLayout;
.source "QuickSettingPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$SineInOut70;,
        Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonEditObserver;
    }
.end annotation


# static fields
.field private static final DB_LIST_UPDATE:Ljava/lang/String; = "notification_panel_active_app_list"


# instance fields
.field final TW_TAG:Ljava/lang/String;

.field isExist:[Z

.field isPhone:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mButtonCnt:I

.field mContentAnim:Landroid/animation/AnimatorSet;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCurButtonNum:I

.field mDefaultDisplay:Landroid/view/Display;

.field private mDisplayButtonCnt:I

.field mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mEditObserver:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonEditObserver;

.field private mImpol:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$SineInOut70;

.field public mPosition:I

.field mQBtnLocaleChange:[Ljava/lang/reflect/Method;

.field mQBtnSizeChange:[Ljava/lang/reflect/Method;

.field mQuickSettingButton:[Landroid/view/View;

.field private mlp:Landroid/widget/LinearLayout$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, -0x2

    const/4 v3, 0x0

    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    const-string v0, "STATUSBAR-QuickSettingPanel"

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->TW_TAG:Ljava/lang/String;

    .line 57
    iput v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    .line 58
    iput v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayButtonCnt:I

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mlp:Landroid/widget/LinearLayout$LayoutParams;

    .line 211
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 84
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContext:Landroid/content/Context;

    .line 85
    sget-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->canStatusBarHide:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->isPhone:Z

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDefaultDisplay:Landroid/view/Display;

    .line 89
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 91
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mlp:Landroid/widget/LinearLayout$LayoutParams;

    .line 92
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mlp:Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 93
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonEditObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonEditObserver;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mEditObserver:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonEditObserver;

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContentResolver:Landroid/content/ContentResolver;

    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "notification_panel_active_app_list"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mEditObserver:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonEditObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 98
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$SineInOut70;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$SineInOut70;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mImpol:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$SineInOut70;

    .line 99
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->update()V

    .line 100
    return-void
.end method

.method private LoadAppslist(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .parameter "str"

    .prologue
    .line 171
    const-string v4, "STATUSBAR-QuickSettingPanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    move-object v0, p1

    .line 175
    .local v0, active_app_list:Ljava/lang/String;
    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, quickPanelActiveList:[Ljava/lang/String;
    array-length v4, v3

    new-array v2, v4, [Ljava/lang/String;

    .line 179
    .local v2, main_list:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 180
    aget-object v4, v3, v1

    aput-object v4, v2, v1

    .line 179
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 182
    :cond_0
    const-string v4, "STATUSBAR-QuickSettingPanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "main list : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "quickPanelActiveList.length : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-object v2
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->refreshView()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    return v0
.end method

.method private disableQuickSettingButton([Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 114
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_5

    .line 115
    aget-object v1, p1, v0

    const-string v2, "MobileData"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->isNetworkSupported:Z

    if-nez v1, :cond_0

    .line 116
    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayButtonCnt:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayButtonCnt:I

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "not"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 120
    :cond_0
    aget-object v1, p1, v0

    const-string v2, "AllShareCast"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayButtonCnt:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayButtonCnt:I

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "not"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 128
    :cond_1
    aget-object v1, p1, v0

    const-string v2, "DormantMode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 137
    :cond_2
    aget-object v1, p1, v0

    const-string v2, "MultiWindow"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 138
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.multiwindow.phone"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 140
    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayButtonCnt:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayButtonCnt:I

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "not"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 144
    :cond_3
    aget-object v1, p1, v0

    const-string v2, "Sync"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 145
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.multiwindow.phone"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 147
    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayButtonCnt:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayButtonCnt:I

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "not"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 114
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 154
    :cond_5
    return-object p1
.end method

.method private refreshView()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 266
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDefaultDisplay:Landroid/view/Display;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v6, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 271
    iput v11, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayButtonCnt:I

    .line 272
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->removeAllViewsInLayout()V

    .line 274
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContentResolver:Landroid/content/ContentResolver;

    const-string v7, "notification_panel_active_app_list"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 275
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContentResolver:Landroid/content/ContentResolver;

    const-string v7, "notification_panel_active_app_list"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->LoadAppslist(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, QBtnAttr:[Ljava/lang/String;
    :goto_0
    array-length v6, v0

    iput v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    .line 281
    iget v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayButtonCnt:I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayButtonCnt:I

    .line 282
    iget v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    new-array v1, v6, [Ljava/lang/Class;

    .line 283
    .local v1, QBtnClass:[Ljava/lang/Class;
    iget v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    new-array v6, v6, [Landroid/view/View;

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQuickSettingButton:[Landroid/view/View;

    .line 284
    iget v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    new-array v2, v6, [Ljava/lang/reflect/Constructor;

    .line 285
    .local v2, QBtnConstructor:[Ljava/lang/reflect/Constructor;
    iget v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    new-array v6, v6, [Ljava/lang/reflect/Method;

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQBtnLocaleChange:[Ljava/lang/reflect/Method;

    .line 286
    iget v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    new-array v6, v6, [Ljava/lang/reflect/Method;

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQBtnSizeChange:[Ljava/lang/reflect/Method;

    .line 287
    iget v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    new-array v6, v6, [Z

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->isExist:[Z

    .line 288
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContentAnim:Landroid/animation/AnimatorSet;

    .line 290
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mlp:Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->setViewWidth()I

    move-result v7

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 292
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    iget v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    if-ge v5, v6, :cond_2

    .line 294
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "com.android.systemui.statusbar.policy.quicksetting."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v0, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "QuickSettingButton"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v1, v5

    .line 296
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->isExist:[Z

    const/4 v7, 0x1

    aput-boolean v7, v6, v5
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :goto_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->isExist:[Z

    aget-boolean v6, v6, v5

    if-eqz v6, :cond_0

    .line 304
    :try_start_1
    aget-object v6, v1, v5

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    aput-object v6, v2, v5

    .line 305
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQuickSettingButton:[Landroid/view/View;

    aget-object v6, v2, v5

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContext:Landroid/content/Context;

    aput-object v10, v8, v9

    invoke-virtual {v6, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    aput-object v6, v7, v5

    .line 306
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQuickSettingButton:[Landroid/view/View;

    aget-object v6, v6, v5

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 307
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQuickSettingButton:[Landroid/view/View;

    aget-object v6, v6, v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mlp:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v6, v7}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQBtnLocaleChange:[Ljava/lang/reflect/Method;

    aget-object v7, v1, v5

    const-string v8, "localeChanged"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    aput-object v7, v6, v5

    .line 310
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQBtnSizeChange:[Ljava/lang/reflect/Method;

    aget-object v7, v1, v5

    const-string v8, "checkTextLength"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    aput-object v7, v6, v5
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_6

    .line 292
    :cond_0
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 277
    .end local v0           #QBtnAttr:[Ljava/lang/String;
    .end local v1           #QBtnClass:[Ljava/lang/Class;
    .end local v2           #QBtnConstructor:[Ljava/lang/reflect/Constructor;
    .end local v5           #i:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070004

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->disableQuickSettingButton([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .restart local v0       #QBtnAttr:[Ljava/lang/String;
    goto/16 :goto_0

    .line 297
    .restart local v1       #QBtnClass:[Ljava/lang/Class;
    .restart local v2       #QBtnConstructor:[Ljava/lang/reflect/Constructor;
    .restart local v5       #i:I
    :catch_0
    move-exception v4

    .line 298
    .local v4, e1:Ljava/lang/ClassNotFoundException;
    const-string v6, "STATUSBAR-QuickSettingPanel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v0, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ClassNotFoundException"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->isExist:[Z

    aput-boolean v11, v6, v5

    goto/16 :goto_2

    .line 312
    .end local v4           #e1:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v3

    .line 313
    .local v3, e:Ljava/lang/NoSuchMethodException;
    const-string v6, "STATUSBAR-QuickSettingPanel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v0, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "NoSuchMethodException"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 314
    .end local v3           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v3

    .line 315
    .local v3, e:Ljava/lang/SecurityException;
    const-string v6, "STATUSBAR-QuickSettingPanel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v0, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "SecurityException"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 316
    .end local v3           #e:Ljava/lang/SecurityException;
    :catch_3
    move-exception v3

    .line 317
    .local v3, e:Ljava/lang/InstantiationException;
    const-string v6, "STATUSBAR-QuickSettingPanel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v0, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "InstantiationException"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 318
    .end local v3           #e:Ljava/lang/InstantiationException;
    :catch_4
    move-exception v3

    .line 319
    .local v3, e:Ljava/lang/IllegalAccessException;
    const-string v6, "STATUSBAR-QuickSettingPanel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v0, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "IllegalAccessException"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 320
    .end local v3           #e:Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v3

    .line 321
    .local v3, e:Ljava/lang/IllegalArgumentException;
    const-string v6, "STATUSBAR-QuickSettingPanel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v0, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "IllegalArgumentException"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 322
    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    :catch_6
    move-exception v3

    .line 323
    .local v3, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v6, "STATUSBAR-QuickSettingPanel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v0, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "InvocationTargetException"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 327
    .end local v3           #e:Ljava/lang/reflect/InvocationTargetException;
    :cond_2
    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->prepareTranslationX(Z)V

    .line 328
    return-void
.end method

.method private setViewWidth()I
    .locals 5

    .prologue
    .line 188
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDefaultDisplay:Landroid/view/Display;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 190
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->isPhone:Z

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->canNavigationBarMove:Z

    if-eqz v2, :cond_1

    .line 191
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 194
    .local v0, displayWidth:I
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->update()V

    .line 196
    iget v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayButtonCnt:I

    if-le v2, v3, :cond_0

    .line 197
    iget v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayButtonCnt:I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    .line 200
    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->getDividerWidth()I

    move-result v3

    mul-int/2addr v2, v3

    sub-int v2, v0, v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    div-int v1, v2, v3

    .line 205
    .end local v0           #displayWidth:I
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00a2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00a3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    div-int v1, v2, v3

    goto :goto_0
.end method

.method private update()V
    .locals 2

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    .line 104
    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 254
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDefaultDisplay:Landroid/view/Display;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 256
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->isPhone:Z

    if-eqz v1, :cond_0

    .line 257
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mlp:Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->setViewWidth()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 259
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 260
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mlp:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 263
    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 3

    .prologue
    .line 332
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 333
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->refreshView()V

    .line 334
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 335
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 336
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 337
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 338
    return-void
.end method

.method public prepareTranslationX(Z)V
    .locals 3
    .parameter "isExpanded"

    .prologue
    .line 341
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->update()V

    .line 342
    const-string v0, "STATUSBAR-QuickSettingPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDisplayButtonCnt : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayButtonCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCurButtonNum : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayButtonCnt:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    sub-int/2addr v0, v1

    const/4 v1, 0x2

    if-le v0, v1, :cond_4

    .line 344
    const/high16 v0, 0x4020

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->setViewWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mPosition:I

    .line 348
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mPosition:I

    if-gez v0, :cond_0

    .line 349
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mPosition:I

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContentAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContentAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 353
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->setTranslationX(F)V

    .line 355
    :cond_1
    if-nez p1, :cond_3

    .line 356
    sget-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->hideNavibarOnLock:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 357
    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mPosition:I

    .line 359
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mPosition:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->setTranslationX(F)V

    .line 361
    :cond_3
    const-string v0, "STATUSBAR-QuickSettingPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareTranslationX"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    return-void

    .line 346
    :cond_4
    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayButtonCnt:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    sub-int/2addr v0, v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->setViewWidth()I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mPosition:I

    goto :goto_0
.end method

.method public startScrollAnimation()V
    .locals 5

    .prologue
    .line 366
    const-string v1, "STATUSBAR-QuickSettingPanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startScrollAnimation  position =   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContentAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 368
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContentAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 371
    :cond_0
    const-string v1, "translationX"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mPosition:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 372
    .local v0, quickSettingAnim:Landroid/animation/Animator;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mImpol:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$SineInOut70;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 373
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContentAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 374
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContentAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 375
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContentAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 376
    return-void
.end method
