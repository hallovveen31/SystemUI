.class public Lcom/android/systemui/multiwindow/CenterBarWindow;
.super Ljava/lang/Object;
.source "CenterBarWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/multiwindow/CenterBarWindow$CenterBarGestureListener;
    }
.end annotation


# static fields
.field private static final FLING_VELOCITY:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "FlashBarService"


# instance fields
.field private final CENTER_BAR_DIRECTION_BOTTOM:S

.field private final CENTER_BAR_DIRECTION_LEFT:S

.field private final CENTER_BAR_DIRECTION_RIGHT:S

.field private final CENTER_BAR_DIRECTION_TOP:S

.field private final DEBUG:Z

.field private final ESTIMATE_INVALID_VALUE:S

.field private final WINDOW_LANDSCAPE_MODE:S

.field private final WINDOW_PORTRAIT_MODE:S

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mCenterBar:Landroid/widget/ImageButton;

.field private mCenterBarArrow:Landroid/widget/ImageButton;

.field private mCenterBarDirection:I

.field private mCenterBarDockingSize:I

.field private mCenterBarFlingSize:I

.field mCenterBarFocusDisplayReceiver:Landroid/content/BroadcastReceiver;

.field private mCenterBarGestureDetector:Landroid/view/GestureDetector;

.field private mCenterBarLayout:Landroid/view/View;

.field private mCenterBarRectForSplit:Landroid/graphics/Rect;

.field private mCenterBarSize:I

.field private mCenterBarTouchApprovalDistance:I

.field mCenterBarTouchListener:Landroid/view/View$OnTouchListener;

.field private mCenterBarWindow:Landroid/view/Window;

.field private mContext:Landroid/content/Context;

.field private mCurrentStatusBarHeight:I

.field private mDisplayHeight:I

.field private mDisplayOrientation:I

.field private mDisplayWidth:I

.field private mFocusZoneInfo:I

.field private mIvt:[B

.field private mMode:I

.field private mTouchEventX:I

.field private mTouchEventY:I

.field private mTouchStartX:I

.field private mTouchStartY:I

.field private mVibrator:Landroid/os/SystemVibrator;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mbHandle:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v3, 0x2

    const/4 v4, -0x1

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 209
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->DEBUG:Z

    .line 41
    iput-short v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->WINDOW_PORTRAIT_MODE:S

    .line 42
    iput-short v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->WINDOW_LANDSCAPE_MODE:S

    .line 44
    iput-short v5, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->CENTER_BAR_DIRECTION_TOP:S

    .line 45
    iput-short v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->CENTER_BAR_DIRECTION_BOTTOM:S

    .line 46
    iput-short v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->CENTER_BAR_DIRECTION_RIGHT:S

    .line 47
    const/4 v2, 0x3

    iput-short v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->CENTER_BAR_DIRECTION_LEFT:S

    .line 48
    iput-short v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->ESTIMATE_INVALID_VALUE:S

    .line 55
    const/16 v2, 0x26

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mIvt:[B

    .line 87
    iput v5, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarSize:I

    .line 88
    iput v5, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarFlingSize:I

    .line 89
    iput v5, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarDockingSize:I

    .line 90
    iput v5, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarTouchApprovalDistance:I

    .line 92
    sget v2, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_UNKNOWN:I

    iput v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mFocusZoneInfo:I

    .line 252
    new-instance v2, Lcom/android/systemui/multiwindow/CenterBarWindow$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/multiwindow/CenterBarWindow$2;-><init>(Lcom/android/systemui/multiwindow/CenterBarWindow;)V

    iput-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarFocusDisplayReceiver:Landroid/content/BroadcastReceiver;

    .line 448
    new-instance v2, Lcom/android/systemui/multiwindow/CenterBarWindow$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/multiwindow/CenterBarWindow$4;-><init>(Lcom/android/systemui/multiwindow/CenterBarWindow;)V

    iput-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarTouchListener:Landroid/view/View$OnTouchListener;

    .line 210
    const-string v2, "FlashBarService"

    const-string v3, "CenterBarWindow"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iput-object p1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    .line 214
    iget-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 215
    iget-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    iput-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mActivityManager:Landroid/app/ActivityManager;

    .line 216
    iget-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    const-string v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/SystemVibrator;

    iput-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mVibrator:Landroid/os/SystemVibrator;

    .line 218
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v5, v5, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    .line 219
    iput v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarDirection:I

    .line 221
    iget-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/multiwindow/MultiWindowReflector;->getArrangeMode(Landroid/content/res/Configuration;)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mMode:I

    .line 223
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 224
    .local v1, fullscreen:Landroid/graphics/Point;
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 226
    iget v2, v1, Landroid/graphics/Point;->x:I

    iput v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayWidth:I

    .line 227
    iget v2, v1, Landroid/graphics/Point;->y:I

    iput v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayHeight:I

    .line 228
    iget-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayOrientation:I

    .line 230
    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayWidth:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventX:I

    .line 231
    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayHeight:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventY:I

    .line 232
    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventX:I

    iput v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchStartX:I

    .line 233
    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventY:I

    iput v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchStartY:I

    .line 235
    const-string v2, "FlashBarService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CenterBarWindow : mDisplayWidth = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mDisplayHeight = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const-string v2, "FlashBarService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CenterBarWindow : mDisplayOrientation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayOrientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const-string v2, "FlashBarService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CenterBarWindow : mCenterBarRefX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCenterBarRefY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iput-boolean v5, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mbHandle:Z

    .line 241
    iget-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00c0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarSize:I

    .line 242
    iget-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00c2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarFlingSize:I

    .line 243
    iget-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00c3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarDockingSize:I

    .line 244
    iget-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00c4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarTouchApprovalDistance:I

    .line 246
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/CenterBarWindow;->makeCenterBarWindow()V

    .line 248
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v2, Lcom/android/systemui/multiwindow/MultiWindowReflector$Intent;->ACTION_NOTIFY_FOCUS_WINDOWS:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 249
    .local v0, centerBarfocusFilter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarFocusDisplayReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 250
    return-void

    .line 55
    nop

    :array_0
    .array-data 0x1
        0x1t
        0x0t
        0x1t
        0x0t
        0xat
        0x0t
        0x14t
        0x0t
        0x0t
        0x0t
        0x20t
        0x1t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        0x42t
        0x0t
        0x0t
        0x4dt
        0x0t
        0x61t
        0x0t
        0x67t
        0x0t
        0x53t
        0x0t
        0x77t
        0x0t
        0x65t
        0x0t
        0x65t
        0x0t
        0x70t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method static synthetic access$002(Lcom/android/systemui/multiwindow/CenterBarWindow;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput p1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mFocusZoneInfo:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/multiwindow/CenterBarWindow;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/multiwindow/CenterBarWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventX:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/systemui/multiwindow/CenterBarWindow;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput p1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventX:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/multiwindow/CenterBarWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventY:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/systemui/multiwindow/CenterBarWindow;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput p1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventY:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/multiwindow/CenterBarWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchStartX:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/systemui/multiwindow/CenterBarWindow;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput p1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchStartX:I

    return p1
.end method

.method static synthetic access$1302(Lcom/android/systemui/multiwindow/CenterBarWindow;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput p1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarDirection:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/systemui/multiwindow/CenterBarWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarSize:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/multiwindow/CenterBarWindow;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBar:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/multiwindow/CenterBarWindow;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarArrow:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/multiwindow/CenterBarWindow;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mIvt:[B

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/multiwindow/CenterBarWindow;)Landroid/os/SystemVibrator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mVibrator:Landroid/os/SystemVibrator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/multiwindow/CenterBarWindow;Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/systemui/multiwindow/CenterBarWindow;->updateCenterBarRect(Landroid/content/res/Configuration;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/multiwindow/CenterBarWindow;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/multiwindow/CenterBarWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mMode:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/multiwindow/CenterBarWindow;)Landroid/view/GestureDetector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/multiwindow/CenterBarWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayOrientation:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/multiwindow/CenterBarWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchStartY:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/systemui/multiwindow/CenterBarWindow;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput p1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchStartY:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/multiwindow/CenterBarWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarTouchApprovalDistance:I

    return v0
.end method

.method private addWindow(Landroid/view/View;IIII)Landroid/view/Window;
    .locals 6
    .parameter "view"
    .parameter "width"
    .parameter "height"
    .parameter "windowType"
    .parameter "privateFlags"

    .prologue
    const/4 v3, 0x0

    .line 116
    const-string v4, "FlashBarService"

    const-string v5, "addWindow view"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/CenterBarWindow;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 120
    .local v0, attrs:Landroid/view/WindowManager$LayoutParams;
    iget-object v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v2

    .line 121
    .local v2, window:Landroid/view/Window;
    if-nez v2, :cond_1

    move-object v2, v3

    .line 142
    .end local v2           #window:Landroid/view/Window;
    :cond_0
    :goto_0
    return-object v2

    .line 125
    .restart local v2       #window:Landroid/view/Window;
    :cond_1
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/view/Window;->requestFeature(I)Z

    .line 127
    iget-object v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v2, v4, v3, v3}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 128
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 129
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 130
    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 131
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/2addr v3, p5

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 132
    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 134
    invoke-virtual {v2, p1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 135
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 137
    .local v1, decorView:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 138
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 139
    iget-object v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3, v1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private createCenterBarLayout()Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 146
    iget-object v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 147
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f030002

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 149
    .local v0, centerBarView:Landroid/view/View;
    new-instance v1, Lcom/android/systemui/multiwindow/CenterBarWindow$1;

    iget-object v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v3}, Lcom/android/systemui/multiwindow/CenterBarWindow$1;-><init>(Lcom/android/systemui/multiwindow/CenterBarWindow;Landroid/content/Context;)V

    .line 177
    .local v1, hoveringWrapLayout:Landroid/widget/FrameLayout;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 180
    return-object v1
.end method

.method private makeCenterBarWindow()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 184
    const/16 v4, 0x834

    .line 185
    .local v4, windowType:I
    const/4 v5, 0x0

    .line 186
    .local v5, privateFlags:I
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/CenterBarWindow;->createCenterBarLayout()Landroid/view/View;

    move-result-object v1

    .line 188
    .local v1, centerBarView:Landroid/view/View;
    :try_start_0
    const-class v0, Landroid/view/WindowManager$LayoutParams;

    const-string v3, "TYPE_MULTI_WINDOW_CONTROL_BAR"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 189
    .local v6, field:Ljava/lang/reflect/Field;
    if-eqz v6, :cond_0

    .line 190
    invoke-virtual {v6, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    .line 193
    :cond_0
    const-class v0, Landroid/view/WindowManager$LayoutParams;

    const-string v3, "PRIVATE_FLAG_NOTIFY_SYSTEMUI_VISIBILITY_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 194
    .local v7, privatefield:Ljava/lang/reflect/Field;
    if-eqz v7, :cond_1

    .line 195
    invoke-virtual {v7, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .end local v6           #field:Ljava/lang/reflect/Field;
    .end local v7           #privatefield:Ljava/lang/reflect/Field;
    :cond_1
    :goto_0
    move-object v0, p0

    move v3, v2

    .line 201
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/multiwindow/CenterBarWindow;->addWindow(Landroid/view/View;IIII)Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarWindow:Landroid/view/Window;

    .line 202
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarWindow:Landroid/view/Window;

    if-nez v0, :cond_2

    .line 207
    :goto_1
    return-void

    .line 205
    :cond_2
    iput-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarLayout:Landroid/view/View;

    .line 206
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarWindow:Landroid/view/Window;

    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/CenterBarWindow;->setWindow(Landroid/view/Window;)V

    goto :goto_1

    .line 198
    :catch_0
    move-exception v0

    goto :goto_0

    .line 197
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private updateCenterBarRect(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "config"

    .prologue
    .line 634
    :try_start_0
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-static {p1, v1}, Lcom/android/systemui/multiwindow/MultiWindowReflector$Configuration;->setCenterBarRect(Landroid/content/res/Configuration;Landroid/graphics/Rect;)V

    .line 635
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 639
    :goto_0
    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayOrientation:I

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-static {v1, v2}, Lcom/android/systemui/multiwindow/MultiWindowReflector$MultiWindowManager;->setSplitRect(ILandroid/graphics/Rect;)V

    .line 640
    return-void

    .line 636
    :catch_0
    move-exception v0

    .line 637
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public centerControlBarDocking()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 401
    const-string v3, "FlashBarService"

    const-string v4, "centerControlBarDocking"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarDockingSize:I

    iget v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarSize:I

    div-int/lit8 v4, v4, 0x2

    add-int v0, v3, v4

    .line 405
    .local v0, dockingRange:I
    iget v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayOrientation:I

    if-ne v3, v1, :cond_2

    .line 406
    iget v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventY:I

    iget v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarFlingSize:I

    add-int/2addr v4, v0

    if-gt v3, v4, :cond_0

    .line 407
    iget v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarFlingSize:I

    iput v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventY:I

    .line 408
    iput v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarDirection:I

    .line 436
    :goto_0
    return v1

    .line 410
    :cond_0
    iget v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventY:I

    iget v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayHeight:I

    iget v5, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarFlingSize:I

    add-int/2addr v5, v0

    sub-int/2addr v4, v5

    if-lt v3, v4, :cond_1

    .line 411
    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayHeight:I

    iget v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarFlingSize:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventY:I

    .line 412
    iput v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarDirection:I

    goto :goto_0

    .line 414
    :cond_1
    iget v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventY:I

    iget v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayHeight:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v4, v0

    if-lt v3, v4, :cond_5

    iget v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventY:I

    iget v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayHeight:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v0

    if-gt v3, v4, :cond_5

    .line 416
    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayHeight:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventY:I

    goto :goto_0

    .line 420
    :cond_2
    iget v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventX:I

    iget v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarFlingSize:I

    add-int/2addr v4, v0

    if-gt v3, v4, :cond_3

    .line 421
    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarFlingSize:I

    iput v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventX:I

    .line 422
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarDirection:I

    goto :goto_0

    .line 425
    :cond_3
    iget v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventX:I

    iget v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayWidth:I

    iget v5, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarFlingSize:I

    add-int/2addr v5, v0

    sub-int/2addr v4, v5

    if-lt v3, v4, :cond_4

    .line 426
    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayWidth:I

    iget v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarFlingSize:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventX:I

    .line 427
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarDirection:I

    goto :goto_0

    .line 430
    :cond_4
    iget v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventX:I

    iget v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v4, v0

    if-lt v3, v4, :cond_5

    iget v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventX:I

    iget v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v0

    if-gt v3, v4, :cond_5

    .line 432
    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayWidth:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventX:I

    goto :goto_0

    :cond_5
    move v1, v2

    .line 436
    goto :goto_0
.end method

.method public createLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 4

    .prologue
    .line 95
    const-string v2, "FlashBarService"

    const-string v3, "createLayoutParams"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/4 v1, 0x2

    .line 100
    .local v1, windowType:I
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const v2, 0x1040340

    const/4 v3, -0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    .line 108
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x20

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 109
    const v2, 0x1030004

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 110
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 112
    return-object v0
.end method

.method public drawCenterBar(II)V
    .locals 4
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    .line 332
    const-string v1, "FlashBarService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drawCenterBar : mDisplayOrientation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pos("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 335
    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 336
    .local v0, centerBarLayout:Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 337
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 338
    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 339
    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 340
    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 341
    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 351
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 352
    return-void

    .line 343
    .end local v0           #centerBarLayout:Landroid/view/WindowManager$LayoutParams;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 344
    .restart local v0       #centerBarLayout:Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 345
    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCurrentStatusBarHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 346
    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayHeight:I

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 347
    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 348
    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 349
    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public drawCenterBarArrow()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 309
    const-string v0, "FlashBarService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawCenterBarArrow : mFocusZoneInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mFocusZoneInfo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarArrow:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 312
    iget v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 313
    iget v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mFocusZoneInfo:I

    sget v1, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_A:I

    if-ne v0, v1, :cond_0

    .line 314
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarArrow:Landroid/widget/ImageButton;

    const v1, 0x7f020067

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 329
    :goto_0
    return-void

    .line 315
    :cond_0
    iget v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mFocusZoneInfo:I

    sget v1, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_B:I

    if-ne v0, v1, :cond_1

    .line 316
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarArrow:Landroid/widget/ImageButton;

    const v1, 0x7f020068

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarArrow:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 321
    :cond_2
    iget v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mFocusZoneInfo:I

    sget v1, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_A:I

    if-ne v0, v1, :cond_3

    .line 322
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarArrow:Landroid/widget/ImageButton;

    const v1, 0x7f020069

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 323
    :cond_3
    iget v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mFocusZoneInfo:I

    sget v1, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_B:I

    if-ne v0, v1, :cond_4

    .line 324
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarArrow:Landroid/widget/ImageButton;

    const v1, 0x7f020066

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 326
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarArrow:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public handleCenterBarFling()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 440
    const-string v0, "FlashBarService"

    const-string v1, "handleCenterBarFling"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/multiwindow/CenterBarWindow;->updateCenterBarRect(Landroid/content/res/Configuration;)V

    .line 442
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mIvt:[B

    iget-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v2}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V

    .line 443
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBar:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 444
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarArrow:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 445
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/multiwindow/CenterBarWindow;->drawCenterBar(II)V

    .line 446
    return-void
.end method

.method public makeCenterBarLayout()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 286
    const-string v1, "FlashBarService"

    const-string v2, "makeCenterBarLayout"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 290
    .local v0, centerBarLayout:Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 291
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    .line 292
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 293
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 294
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 295
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 296
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 297
    const-string v1, "MultiWindow/CenterBar"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 299
    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarWindow:Landroid/view/Window;

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 302
    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarLayout:Landroid/view/View;

    const v2, 0x7f0d000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBar:Landroid/widget/ImageButton;

    .line 303
    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBar:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 305
    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarLayout:Landroid/view/View;

    const v2, 0x7f0d000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarArrow:Landroid/widget/ImageButton;

    .line 306
    return-void
.end method

.method public makeCenterBarRect()V
    .locals 3

    .prologue
    .line 355
    const-string v0, "FlashBarService"

    const-string v1, "makeCenterBarRect"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-static {}, Lcom/android/systemui/multiwindow/MultiWindowReflector$MultiWindowManager;->getStatusBarHeight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCurrentStatusBarHeight:I

    .line 357
    iget v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 358
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 359
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayWidth:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 360
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCurrentStatusBarHeight:I

    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventY:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarSize:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 361
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCurrentStatusBarHeight:I

    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventY:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarSize:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 368
    :goto_0
    return-void

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventX:I

    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarSize:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 364
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventX:I

    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarSize:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 365
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCurrentStatusBarHeight:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 366
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayHeight:I

    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCurrentStatusBarHeight:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method public makeCenterBarRectForFling(I)V
    .locals 4
    .parameter "centerBarFlingDirection"

    .prologue
    const/4 v3, 0x0

    .line 371
    const-string v0, "FlashBarService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeCenterBarRectForFling : direction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iput p1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarDirection:I

    .line 375
    iget v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarDirection:I

    if-nez v0, :cond_1

    .line 376
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 377
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayWidth:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 378
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarFlingSize:I

    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarSize:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 379
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarFlingSize:I

    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarSize:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 396
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventX:I

    .line 397
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventY:I

    .line 398
    return-void

    .line 380
    :cond_1
    iget v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarDirection:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 381
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 382
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayWidth:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 383
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayHeight:I

    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarFlingSize:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarSize:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 384
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayHeight:I

    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarFlingSize:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarSize:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 385
    :cond_2
    iget v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarDirection:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 386
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayWidth:I

    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarFlingSize:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarSize:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 387
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayWidth:I

    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarFlingSize:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarSize:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 388
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 389
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayHeight:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 390
    :cond_3
    iget v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarDirection:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 391
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarFlingSize:I

    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarSize:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 392
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarFlingSize:I

    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarSize:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 393
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 394
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayHeight:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 12
    .parameter "newConfig"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 504
    const-string v6, "FlashBarService"

    const-string v9, "onConfigurationChanged"

    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    invoke-static {p1}, Lcom/android/systemui/multiwindow/MultiWindowReflector;->getArrangeMode(Landroid/content/res/Configuration;)I

    move-result v6

    sget v9, Lcom/android/systemui/multiwindow/MultiWindowReflector$Configuration;->ARRANGE_TOGGLE_MASK:I

    xor-int/lit8 v9, v9, -0x1

    and-int/2addr v6, v9

    iput v6, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mMode:I

    .line 507
    iget v6, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mMode:I

    sget v9, Lcom/android/systemui/multiwindow/MultiWindowReflector$Configuration;->ARRANGE_SPLITED:I

    if-ne v6, v9, :cond_2

    .line 509
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/CenterBarWindow;->createCenterBarLayout()Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarLayout:Landroid/view/View;

    .line 510
    iget-object v6, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarWindow:Landroid/view/Window;

    iget-object v9, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarLayout:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 512
    iget-object v6, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarLayout:Landroid/view/View;

    const v9, 0x7f0d000a

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBar:Landroid/widget/ImageButton;

    .line 513
    iget-object v6, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBar:Landroid/widget/ImageButton;

    iget-object v9, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v6, v9}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 514
    iget-object v6, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarLayout:Landroid/view/View;

    const v9, 0x7f0d000b

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarArrow:Landroid/widget/ImageButton;

    .line 516
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 517
    .local v2, fullscreen:Landroid/graphics/Point;
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 518
    iget v6, v2, Landroid/graphics/Point;->x:I

    iput v6, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayWidth:I

    .line 519
    iget v6, v2, Landroid/graphics/Point;->y:I

    iput v6, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayHeight:I

    .line 522
    move-object v0, p1

    .line 524
    .local v0, deviceConfig:Landroid/content/res/Configuration;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 528
    :goto_0
    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    .line 529
    .local v3, orientation:I
    iget v6, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayOrientation:I

    if-eq v3, v6, :cond_3

    move v4, v7

    .line 531
    .local v4, orientationChanged:Z
    :goto_1
    if-eqz v4, :cond_1

    .line 532
    iput v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayOrientation:I

    .line 534
    iget v6, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarDirection:I

    const/4 v9, -0x1

    if-eq v6, v9, :cond_7

    .line 535
    iget v6, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarDirection:I

    if-nez v6, :cond_4

    .line 536
    iput v11, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarDirection:I

    .line 544
    :cond_0
    :goto_2
    iget v6, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarDirection:I

    invoke-virtual {p0, v6}, Lcom/android/systemui/multiwindow/CenterBarWindow;->makeCenterBarRectForFling(I)V

    .line 557
    :cond_1
    :goto_3
    const-string v6, "FlashBarService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onConfigurationChanged : mDisplayOrientation="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayOrientation:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " changedRect="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    invoke-direct {p0, v0}, Lcom/android/systemui/multiwindow/CenterBarWindow;->updateCenterBarRect(Landroid/content/res/Configuration;)V

    .line 560
    iget-object v6, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBar:Landroid/widget/ImageButton;

    invoke-virtual {v6, v8}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 561
    iget-object v6, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarArrow:Landroid/widget/ImageButton;

    invoke-virtual {v6, v8}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 562
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/CenterBarWindow;->drawCenterBarArrow()V

    .line 563
    iget-object v6, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v6, v7}, Lcom/android/systemui/multiwindow/CenterBarWindow;->drawCenterBar(II)V

    .line 565
    .end local v0           #deviceConfig:Landroid/content/res/Configuration;
    .end local v2           #fullscreen:Landroid/graphics/Point;
    .end local v3           #orientation:I
    .end local v4           #orientationChanged:Z
    :cond_2
    return-void

    .line 525
    .restart local v0       #deviceConfig:Landroid/content/res/Configuration;
    .restart local v2       #fullscreen:Landroid/graphics/Point;
    :catch_0
    move-exception v1

    .line 526
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v3       #orientation:I
    :cond_3
    move v4, v8

    .line 529
    goto :goto_1

    .line 537
    .restart local v4       #orientationChanged:Z
    :cond_4
    iget v6, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarDirection:I

    if-ne v6, v7, :cond_5

    .line 538
    iput v10, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarDirection:I

    goto :goto_2

    .line 539
    :cond_5
    iget v6, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarDirection:I

    if-ne v6, v10, :cond_6

    .line 540
    iput v7, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarDirection:I

    goto :goto_2

    .line 541
    :cond_6
    iget v6, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarDirection:I

    if-ne v6, v11, :cond_0

    .line 542
    iput v8, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarDirection:I

    goto :goto_2

    .line 546
    :cond_7
    iget v5, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventX:I

    .line 547
    .local v5, temp:I
    iget v6, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventY:I

    iput v6, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventX:I

    .line 548
    iput v5, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventY:I

    .line 550
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/CenterBarWindow;->centerControlBarDocking()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 551
    iget-object v6, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v7, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mIvt:[B

    iget-object v9, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v9}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v9

    invoke-virtual {v6, v7, v9}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V

    .line 554
    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/CenterBarWindow;->makeCenterBarRect()V

    goto :goto_3
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 570
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 569
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 572
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 568
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 571
    const/4 v0, 0x0

    return v0
.end method

.method public setWindow(Landroid/view/Window;)V
    .locals 4
    .parameter "window"

    .prologue
    .line 264
    const-string v0, "FlashBarService"

    const-string v1, "setWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iput-object p1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarWindow:Landroid/view/Window;

    .line 267
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/multiwindow/CenterBarWindow$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/multiwindow/CenterBarWindow$3;-><init>(Lcom/android/systemui/multiwindow/CenterBarWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 276
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/systemui/multiwindow/CenterBarWindow$CenterBarGestureListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/multiwindow/CenterBarWindow$CenterBarGestureListener;-><init>(Lcom/android/systemui/multiwindow/CenterBarWindow;Lcom/android/systemui/multiwindow/CenterBarWindow$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarGestureDetector:Landroid/view/GestureDetector;

    .line 278
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/CenterBarWindow;->makeCenterBarLayout()V

    .line 279
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/CenterBarWindow;->makeCenterBarRect()V

    .line 280
    iget v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayOrientation:I

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-static {v0, v1}, Lcom/android/systemui/multiwindow/MultiWindowReflector$MultiWindowManager;->setSplitRect(ILandroid/graphics/Rect;)V

    .line 281
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/CenterBarWindow;->drawCenterBarArrow()V

    .line 282
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/multiwindow/CenterBarWindow;->drawCenterBar(II)V

    .line 283
    return-void
.end method
