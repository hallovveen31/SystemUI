.class public Lcom/android/systemui/statusbar/MiniModeAppsPanel;
.super Landroid/widget/FrameLayout;
.source "MiniModeAppsPanel.java"

# interfaces
.implements Lcom/android/systemui/statusbar/tablet/StatusBarPanel;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;,
        Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayBGDragListener;,
        Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;,
        Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollForDragRunnable;,
        Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollRunnable;,
        Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;,
        Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconLongClickListener;,
        Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconOnTouchListener;,
        Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemOnTouchListener;,
        Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemLongClickListener;,
        Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemClickListener;,
        Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;,
        Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescriptionComparatorByLabel;,
        Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescriptionComparator;,
        Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;,
        Lcom/android/systemui/statusbar/MiniModeAppsPanel$IconInfo;
    }
.end annotation


# static fields
.field private static final ACTION_MINI_MODE:Ljava/lang/String; = "com.samsung.action.MINI_MODE_SERVICE"

.field private static final CATEGORY_MINI_MODE:Ljava/lang/String; = "com.samsung.category.MINI_MODE_LAUNCHER"

.field private static final DEBUG:Z = false

.field private static final DEBUG_ANIM:Z = false

.field private static final DEBUG_DRAG:Z = false

.field private static final DRAG_LABEL:Ljava/lang/String; = "MiniAppDragItem"

.field private static final DRAG_TEXT:Ljava/lang/String; = null

.field private static final ICON_LANDSCAPE_FOCUS:Ljava/lang/String; = "com.sec.minimode.icon.landscape.focus"

.field private static final ICON_LANDSCAPE_NORMAL:Ljava/lang/String; = "com.sec.minimode.icon.landscape.normal"

.field private static final ICON_PORTRAIT_FOCUS:Ljava/lang/String; = "com.sec.minimode.icon.portrait.focus"

.field private static final ICON_PORTRAIT_NORMAL:Ljava/lang/String; = "com.sec.minimode.icon.portrait.normal"

.field private static final ICON_PREVIEW_NORMAL:Ljava/lang/String; = "com.sec.minimode.icon.preview.normal"

.field private static final LONG_PRESS_TIMEOUT:I = 0xfa

.field private static final MESSAGE_APP_ICON_LONG_PRESS:I = 0x2

.field private static final MESSAGE_APP_PREVIEW_LONG_PRESS:I = 0x3

.field private static final MESSAGE_FOCUS_CHANGED:I = 0x1

.field private static final MILLISECOND_SCROLL_AFTER_CLICK_DELAY:I = 0xc8

.field private static final MILLISECOND_SCROLL_DELAY:I = 0x46

.field private static final MINIMODETRAY_DISABLE_ICON_ALPHA:I = 0x66

.field private static final MINIMODETRAY_DISABLE_TEXT_ALPHA:F = 0.5f

.field private static final MINIMODETRAY_DISABLE_TEXT_COLOR:I = -0x77000001

.field private static final MINIMODETRAY_EDIT_DRAG_APPROVAL_DISTANCE:I = 0x14

.field private static final MINIMODETRAY_ENABLE_ICON_ALPHA:I = 0xff

.field private static final MINIMODETRAY_ENABLE_TEXT_ALPHA:F = 1.0f

.field private static final MINIMODETRAY_FOCUSED_TEXT:I = -0xd74401

.field private static final MINIMODETRAY_TEXT:I = -0x1

.field private static final MUITIWINDOW_EDIT_ITEM_COUNT_PER_LINE:I = 0x7

.field private static final MUITIWINDOW_TRAY_CLOSE_TIMEOUT:I = 0x1388

.field private static final NUM_HW_TOUCH_SOUND_CHANNELS:I = 0x1

.field private static final PIXEL_SCROLL_MARGIN:I = 0x6

.field public static final PREIVEW_ANIMATION_DURATION:I = 0x190

.field public static final PREIVEW_ANIMATION_START_OFFSET:I = 0x96

.field private static final SUPPORT_DEFAULT_ICON_LIST_ORDER:Z = false

.field private static SUPPORT_MULTIWINDOW:Z = false

.field private static final SYSTEM_UI_PACKAGE_NAME:Ljava/lang/String; = "com.android.systemui"

.field private static final TAG:Ljava/lang/String; = "MiniModeAppsPanel"


# instance fields
.field private SUPPORT_MULTIWINDOW_DOWNLOADABLE:Z

.field private SUPPORT_MULTIWINDOW_MULTIINSTANCE:Z

.field private isClosePanel:Z

.field mActionBarHeight:I

.field private mAppPosition:Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBackgroundProtector:Landroid/view/View;

.field private mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

.field mBottomGuideLine:Landroid/view/View;

.field mBottomGuideLineRect:Landroid/graphics/Rect;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCancelButton:Landroid/widget/Button;

.field private mCascadeModeButton:Landroid/widget/LinearLayout;

.field private mCenterBarWindow:Lcom/android/systemui/multiwindow/CenterBarWindow;

.field private mChosenApps:[Ljava/lang/String;

.field private mCloseButton:Landroid/widget/ImageView;

.field private mComponentDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;",
            ">;"
        }
    .end annotation
.end field

.field private mComponentDescriptionsOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContainerScroller:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollRunnable;

.field private mContainerScrollerForDrag:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollForDragRunnable;

.field mCurrentAppRect:Landroid/graphics/Rect;

.field mCurrentDragAppIcon:Landroid/widget/ImageView;

.field private mCurrentDraggingView:Landroid/view/View;

.field mCurrentLaunchMode:I

.field private mDoneButton:Landroid/widget/Button;

.field mDragItemDescription:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

.field private mDualModeButton:Landroid/widget/LinearLayout;

.field private mEditButton:Landroid/widget/Button;

.field private mEditPanelUIEnabled:Z

.field private mEmptyAppsButton:Landroid/widget/TextView;

.field private mEmptyView:Landroid/view/View;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field mGuideLineView:Landroid/view/View;

.field mGuideLineViewParams:Landroid/view/WindowManager$LayoutParams;

.field private final mHandler:Landroid/os/Handler;

.field private mHelpButton:Landroid/widget/LinearLayout;

.field private mIconDpi:I

.field private mIsCascadeMode:Z

.field private mIsScrollDelayed:Z

.field private mIsScrollLeft:Z

.field private mIvt:[B

.field private mLastLocale:Ljava/util/Locale;

.field private mMiniAppBgHeight:I

.field private mMiniAppsBG:Landroid/widget/LinearLayout;

.field private mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

.field private mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

.field private mMiniAppsPanelEditScroller:Landroid/widget/FrameLayout;

.field private mMiniAppsScroller:Landroid/view/ViewGroup;

.field private mMiniModeAppCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

.field private mMiniModeAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

.field mOnDragging:Z

.field private mOnMiniAppCloseCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnFocusChangedCallback;

.field private mOrientation:I

.field private mPanelEditContainerDragListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;

.field mPreviewAnimationSet:Landroid/view/animation/AnimationSet;

.field private mPreviewItemClickListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemClickListener;

.field private mPreviewItemLongClickListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemLongClickListener;

.field private mPreviewItemOnTouchListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemOnTouchListener;

.field private mRecentsContainer:Landroid/widget/LinearLayout;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolId:[I

.field private mStatusBarHandler:Landroid/os/Handler;

.field mTopGuideLine:Landroid/view/View;

.field mTopGuideLineRect:Landroid/graphics/Rect;

.field private mTrayBGDragListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayBGDragListener;

.field private mTrayContainerDragListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;

.field private mTrayIconLongClickListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconLongClickListener;

.field private mTrayIconOnTouchListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconOnTouchListener;

.field private mTrayItemDragListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;

.field private mVibrator:Landroid/os/SystemVibrator;

.field mWindowDefHeight:I

.field mWindowDefWidth:I

.field private pm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->DRAG_TEXT:Ljava/lang/String;

    .line 144
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 843
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 844
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v6, 0x1

    const/4 v8, -0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 847
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 156
    iput-object v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mComponentDescriptions:Ljava/util/ArrayList;

    .line 166
    iput-object v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mLastLocale:Ljava/util/Locale;

    .line 170
    new-instance v5, Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;

    invoke-direct {v5, p0, v8, v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;II)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;

    .line 171
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mOnDragging:Z

    .line 174
    iput-object v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    .line 176
    iput-object v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/FrameLayout;

    .line 179
    iput-object v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    .line 180
    iput-object v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsBG:Landroid/widget/LinearLayout;

    .line 181
    iput-object v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyView:Landroid/view/View;

    .line 182
    iput v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppBgHeight:I

    .line 185
    iput-object v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    .line 186
    iput-object v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;

    .line 187
    iput-object v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCancelButton:Landroid/widget/Button;

    .line 188
    iput-object v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    .line 189
    iput-object v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    .line 190
    iput-object v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentDraggingView:Landroid/view/View;

    .line 192
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditPanelUIEnabled:Z

    .line 195
    new-instance v5, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemClickListener;

    invoke-direct {v5, p0, v7}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemClickListener;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mPreviewItemClickListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemClickListener;

    .line 198
    new-instance v5, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemLongClickListener;

    invoke-direct {v5, p0, v7}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemLongClickListener;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mPreviewItemLongClickListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemLongClickListener;

    .line 201
    new-instance v5, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconLongClickListener;

    invoke-direct {v5, p0, v7}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconLongClickListener;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTrayIconLongClickListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconLongClickListener;

    .line 204
    new-instance v5, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemOnTouchListener;

    invoke-direct {v5, p0, v7}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemOnTouchListener;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mPreviewItemOnTouchListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemOnTouchListener;

    .line 207
    new-instance v5, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconOnTouchListener;

    invoke-direct {v5, p0, v7}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconOnTouchListener;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTrayIconOnTouchListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconOnTouchListener;

    .line 210
    new-instance v5, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;

    invoke-direct {v5, p0, v7}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTrayItemDragListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;

    .line 213
    new-instance v5, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;

    invoke-direct {v5, p0, v7}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTrayContainerDragListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;

    .line 216
    new-instance v5, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayBGDragListener;

    invoke-direct {v5, p0, v7}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayBGDragListener;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTrayBGDragListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayBGDragListener;

    .line 219
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIsScrollDelayed:Z

    .line 220
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIsScrollLeft:Z

    .line 224
    new-instance v5, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollRunnable;

    invoke-direct {v5, p0, v7}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollRunnable;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContainerScroller:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollRunnable;

    .line 225
    new-instance v5, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollForDragRunnable;

    invoke-direct {v5, p0, v7}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollForDragRunnable;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContainerScrollerForDrag:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollForDragRunnable;

    .line 228
    new-instance v5, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;

    invoke-direct {v5, p0, v7}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mPanelEditContainerDragListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;

    .line 231
    iput-object v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mChosenApps:[Ljava/lang/String;

    .line 234
    iput-object v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentDragAppIcon:Landroid/widget/ImageView;

    .line 249
    const/4 v5, 0x2

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mSoundPoolId:[I

    .line 265
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIsCascadeMode:Z

    .line 266
    iput-object v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCascadeModeButton:Landroid/widget/LinearLayout;

    .line 267
    iput-object v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDualModeButton:Landroid/widget/LinearLayout;

    .line 268
    iput-object v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHelpButton:Landroid/widget/LinearLayout;

    .line 270
    iput v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mOrientation:I

    .line 273
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW_MULTIINSTANCE:Z

    .line 276
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW_DOWNLOADABLE:Z

    .line 279
    const/16 v5, 0x26

    new-array v5, v5, [B

    fill-array-data v5, :array_0

    iput-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIvt:[B

    .line 653
    new-instance v5, Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mOnMiniAppCloseCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnFocusChangedCallback;

    .line 673
    new-instance v5, Lcom/android/systemui/statusbar/MiniModeAppsPanel$2;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$2;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;

    .line 740
    new-instance v5, Lcom/android/systemui/statusbar/MiniModeAppsPanel$3;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$3;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1472
    iput-object v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mGuideLineView:Landroid/view/View;

    .line 1473
    iput-object v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mGuideLineViewParams:Landroid/view/WindowManager$LayoutParams;

    .line 1478
    iput-object v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDragItemDescription:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .line 849
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 850
    .local v3, res:Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v5, v5, 0xf

    const/4 v7, 0x4

    if-ne v5, v7, :cond_0

    move v4, v6

    .line 853
    .local v4, xlarge:Z
    :cond_0
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Locale;

    iput-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mLastLocale:Ljava/util/Locale;

    .line 856
    invoke-static {p1}, Lcom/android/systemui/multiwindow/Utilities;->isMultiWindowEnabled(Landroid/content/Context;)Z

    move-result v5

    sput-boolean v5, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    .line 861
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 862
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 866
    const-string v5, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 868
    sget-boolean v5, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    if-eqz v5, :cond_1

    .line 871
    const-string v5, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 872
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 875
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 876
    .local v2, pkgFilter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 877
    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 878
    const-string v5, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 879
    const-string v5, "package"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 880
    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 883
    .end local v2           #pkgFilter:Landroid/content/IntentFilter;
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContext:Landroid/content/Context;

    const-string v7, "vibrator"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/SystemVibrator;

    iput-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mVibrator:Landroid/os/SystemVibrator;

    .line 885
    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 887
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->pm:Landroid/content/pm/PackageManager;

    .line 890
    sget-boolean v5, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    if-eqz v5, :cond_5

    .line 891
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getLauncherLargeIconDensity()I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIconDpi:I

    .line 892
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    iput v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mOrientation:I

    .line 894
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-static {v5}, Lcom/android/systemui/multiwindow/MultiWindowReflector;->getArrangeMode(Landroid/content/res/Configuration;)I

    move-result v0

    .line 895
    .local v0, arrangeMode:I
    sget v5, Lcom/android/systemui/multiwindow/MultiWindowReflector$Configuration;->ARRANGE_CASCADE:I

    if-eq v0, v5, :cond_2

    sget v5, Lcom/android/systemui/multiwindow/MultiWindowReflector$Configuration;->ARRANGE_UNDEFINED:I

    if-ne v0, v5, :cond_3

    .line 897
    :cond_2
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIsCascadeMode:Z

    .line 900
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->loadDefaultWindowInfo()V

    .line 901
    new-instance v5, Lcom/android/systemui/multiwindow/CenterBarWindow;

    invoke-direct {v5, p1}, Lcom/android/systemui/multiwindow/CenterBarWindow;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCenterBarWindow:Lcom/android/systemui/multiwindow/CenterBarWindow;

    .line 903
    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->pm:Landroid/content/pm/PackageManager;

    if-eqz v5, :cond_4

    .line 905
    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->pm:Landroid/content/pm/PackageManager;

    sget-object v6, Lcom/android/systemui/multiwindow/MultiWindowReflector$PackageManager;->FEATURE_MULTIWINDOW_MULTIINSTANCE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW_MULTIINSTANCE:Z

    .line 907
    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->pm:Landroid/content/pm/PackageManager;

    sget-object v6, Lcom/android/systemui/multiwindow/MultiWindowReflector$PackageManager;->FEATURE_MULTIWINDOW_DOWNLOADABLE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW_DOWNLOADABLE:Z

    .line 915
    .end local v0           #arrangeMode:I
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->initComponentDescriptionOrder()V

    .line 917
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->initComponentDescriptions()V

    .line 919
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->initMiniModeAppsPanelSound()V

    .line 920
    return-void

    .line 912
    :cond_5
    if-eqz v4, :cond_6

    const/16 v5, 0xa0

    :goto_1
    iput v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIconDpi:I

    goto :goto_0

    :cond_6
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    goto :goto_1

    .line 279
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

.method static synthetic access$1100()Z
    .locals 1

    .prologue
    .line 120
    sget-boolean v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->pm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIconDpi:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mPreviewItemClickListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemClickListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Landroid/content/ComponentName;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getComponentDescriptionIndex(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Landroid/content/ComponentName;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findComponentDescriptionByName(Landroid/content/ComponentName;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconLongClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTrayIconLongClickListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconLongClickListener;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIvt:[B

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/os/SystemVibrator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mVibrator:Landroid/os/SystemVibrator;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemLongClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mPreviewItemLongClickListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemLongClickListener;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->initComponentDescriptions()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->refreshApplicationList()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->closeEditPanel()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Ljava/util/Locale;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mLastLocale:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Ljava/util/Locale;)Ljava/util/Locale;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mLastLocale:Ljava/util/Locale;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->updateImageOfMiniModeAppsPanel()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mOrientation:I

    return v0
.end method

.method static synthetic access$2702(Lcom/android/systemui/statusbar/MiniModeAppsPanel;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mOrientation:I

    return p1
.end method

.method static synthetic access$2800(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->adjustTrayPadding()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Lcom/android/systemui/multiwindow/CenterBarWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCenterBarWindow:Lcom/android/systemui/multiwindow/CenterBarWindow;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->updateTextOfMiniModeAppsPanel()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->openEditPanel()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->save()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditPanelUIEnabled:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->playTrayCloseSound()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/BaseStatusBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIsCascadeMode:Z

    return v0
.end method

.method static synthetic access$3802(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIsCascadeMode:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->updateModeButtonsState(Z)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->isMiinAppsEditPanelShowing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW_MULTIINSTANCE:Z

    return v0
.end method

.method static synthetic access$4700(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsScroller:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->isClosePanel:Z

    return v0
.end method

.method static synthetic access$4900(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->removeViewFromEditPanel(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIsScrollDelayed:Z

    return v0
.end method

.method static synthetic access$5102(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIsScrollDelayed:Z

    return p1
.end method

.method static synthetic access$5200(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIsScrollLeft:Z

    return v0
.end method

.method static synthetic access$5202(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIsScrollLeft:Z

    return p1
.end method

.method static synthetic access$5300(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollRunnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContainerScroller:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollRunnable;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$5500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->DRAG_TEXT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentDraggingView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5602(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentDraggingView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$5700(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Lcom/sec/minimode/manager/MiniModeAppManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniModeAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Landroid/content/pm/ComponentInfo;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getCurrentAppRect(Landroid/content/pm/ComponentInfo;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Landroid/view/DragEvent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->isAcceptableDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6100(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollForDragRunnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContainerScrollerForDrag:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollForDragRunnable;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->addViewToEditPanel(Landroid/view/View;)V

    return-void
.end method

.method private addViewToEditPanel(Landroid/view/View;)V
    .locals 11
    .parameter "view"

    .prologue
    const/4 v10, 0x0

    const v9, 0x7f030019

    const/4 v8, 0x0

    .line 1524
    const/4 v4, 0x0

    .line 1525
    .local v4, previewContainer:Landroid/view/ViewGroup;
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    if-eqz v6, :cond_0

    .line 1526
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 1527
    .local v3, count:I
    if-lez v3, :cond_2

    .line 1528
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #previewContainer:Landroid/view/ViewGroup;
    check-cast v4, Landroid/view/ViewGroup;

    .line 1533
    .restart local v4       #previewContainer:Landroid/view/ViewGroup;
    :goto_0
    if-eqz v4, :cond_0

    .line 1534
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    const/4 v7, 0x7

    if-ne v6, v7, :cond_3

    .line 1535
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v9, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .end local v4           #previewContainer:Landroid/view/ViewGroup;
    check-cast v4, Landroid/view/ViewGroup;

    .line 1536
    .restart local v4       #previewContainer:Landroid/view/ViewGroup;
    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1537
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1547
    .end local v3           #count:I
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1548
    .local v1, child:I
    if-lez v1, :cond_1

    .line 1549
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 1550
    .local v2, containerHeight:I
    mul-int v5, v1, v2

    .line 1551
    .local v5, yOffsetAtTop:I
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    sub-int/2addr v6, v2

    div-int/lit8 v0, v6, 0x2

    .line 1552
    .local v0, centerY:I
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/FrameLayout;

    instance-of v6, v6, Landroid/widget/ScrollView;

    if-eqz v6, :cond_1

    .line 1553
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 1555
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/systemui/statusbar/MiniModeAppsPanel$15;

    invoke-direct {v7, p0, v5, v0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$15;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;II)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1566
    .end local v0           #centerY:I
    .end local v2           #containerHeight:I
    .end local v5           #yOffsetAtTop:I
    :cond_1
    :goto_2
    return-void

    .line 1530
    .end local v1           #child:I
    .restart local v3       #count:I
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v9, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .end local v4           #previewContainer:Landroid/view/ViewGroup;
    check-cast v4, Landroid/view/ViewGroup;

    .restart local v4       #previewContainer:Landroid/view/ViewGroup;
    goto :goto_0

    .line 1539
    :cond_3
    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1540
    if-nez v3, :cond_0

    .line 1541
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 1562
    .end local v3           #count:I
    .restart local v0       #centerY:I
    .restart local v1       #child:I
    .restart local v2       #containerHeight:I
    .restart local v5       #yOffsetAtTop:I
    :cond_4
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/FrameLayout;

    check-cast v6, Landroid/widget/ScrollView;

    sub-int v7, v5, v0

    invoke-virtual {v6, v8, v7}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto :goto_2
.end method

.method private adjustTrayPadding()V
    .locals 7

    .prologue
    const v6, 0x7f0c00ae

    const/4 v5, 0x0

    .line 3090
    sget-boolean v2, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    if-eqz v2, :cond_0

    .line 3091
    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c00bb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 3104
    :goto_0
    return-void

    .line 3095
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00ac

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int v0, v2, v3

    .line 3096
    .local v0, containerWidth:I
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 3098
    .local v1, scrollerWidth:I
    if-ge v0, v1, :cond_1

    .line 3099
    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsScroller:Landroid/view/ViewGroup;

    sub-int v3, v1, v0

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v3, v5, v4, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_0

    .line 3101
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsScroller:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v3, v5, v4, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_0
.end method

.method private clearItemsAnimation()V
    .locals 4

    .prologue
    .line 2303
    iget-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 2304
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 2305
    iget-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2306
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 2304
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2308
    .end local v0           #child:Landroid/view/View;
    :cond_0
    const v3, 0x7f0d0059

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 2309
    return-void
.end method

.method private closeEditPanel()V
    .locals 5

    .prologue
    const/16 v4, 0x425

    const/4 v3, 0x0

    .line 3113
    const-string v0, "MiniModeAppsPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeEditPanel() : mEditPanelUIEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditPanelUIEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3114
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditPanelUIEnabled:Z

    if-eqz v0, :cond_4

    .line 3115
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3116
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 3117
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3118
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 3119
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3120
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3122
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 3123
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;

    const/high16 v1, 0x3f00

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 3124
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 3128
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    if-eqz v0, :cond_4

    .line 3129
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 3130
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 3131
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3133
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCascadeModeButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 3134
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCascadeModeButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3135
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDualModeButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    .line 3136
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDualModeButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3137
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHelpButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    .line 3138
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHelpButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3142
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->setEmptyBtnVisibility()Z

    .line 3143
    return-void
.end method

.method private createPreviewAnimation()Landroid/view/animation/AnimationSet;
    .locals 11

    .prologue
    const/4 v5, 0x1

    const/high16 v2, 0x3f80

    .line 1457
    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1461
    .local v9, animationSet:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f9c28f6

    const v3, 0x3f99999a

    const v6, 0x3ee147ae

    const v8, 0x3f0a3d71

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1462
    .local v0, scaleZoom:Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1463
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3e4ccccd

    invoke-direct {v10, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1464
    .local v10, fadeIn:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v9, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1465
    const-wide/16 v1, 0x190

    invoke-virtual {v9, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1466
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v9, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1467
    const-wide/16 v1, 0x96

    invoke-virtual {v9, v1, v2}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 1468
    return-object v9
.end method

.method private findComponentDescriptionByClassName(Ljava/lang/String;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    .locals 3
    .parameter "name"

    .prologue
    .line 2976
    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mComponentDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .line 2977
    .local v0, cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2982
    .end local v0           #cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private findComponentDescriptionByName(Landroid/content/ComponentName;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    .locals 3
    .parameter "name"

    .prologue
    .line 815
    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mComponentDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .line 818
    .local v0, cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 823
    .end local v0           #cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getComponentDescriptionIndex(Landroid/content/ComponentName;)I
    .locals 2
    .parameter "name"

    .prologue
    .line 827
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mComponentDescriptionsOrder:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private getCurrentAppRect(Landroid/content/pm/ComponentInfo;)Landroid/graphics/Rect;
    .locals 9
    .parameter "info"

    .prologue
    const/4 v8, 0x0

    .line 1495
    const/4 v2, 0x0

    .line 1496
    .local v2, defWidth:I
    const/4 v0, 0x0

    .line 1498
    .local v0, defHeight:I
    iget-object v6, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_4

    iget-object v6, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 1500
    .local v4, metaData:Landroid/os/Bundle;
    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v5

    .line 1501
    .local v5, r:Landroid/content/res/Resources;
    if-eqz v4, :cond_1

    .line 1502
    sget-object v6, Lcom/android/systemui/multiwindow/MultiWindowReflector$Intent;->METADATA_MULTIWINDOW_DEF_WIDTH:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1503
    .local v1, defSizeId:I
    if-eqz v1, :cond_0

    .line 1504
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v2, v6

    .line 1506
    :cond_0
    sget-object v6, Lcom/android/systemui/multiwindow/MultiWindowReflector$Intent;->METADATA_MULTIWINDOW_DEF_HEIGHT:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1507
    if-eqz v1, :cond_1

    .line 1508
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimension(I)F
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    float-to-int v0, v6

    .line 1518
    .end local v1           #defSizeId:I
    .end local v5           #r:Landroid/content/res/Resources;
    :cond_1
    :goto_1
    if-nez v2, :cond_2

    iget v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mWindowDefWidth:I

    .line 1519
    :cond_2
    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mWindowDefHeight:I

    .line 1520
    :cond_3
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v8, v8, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v6

    .line 1498
    .end local v4           #metaData:Landroid/os/Bundle;
    :cond_4
    iget-object v4, p1, Landroid/content/pm/ComponentInfo;->metaData:Landroid/os/Bundle;

    goto :goto_0

    .line 1512
    .restart local v4       #metaData:Landroid/os/Bundle;
    :catch_0
    move-exception v3

    .line 1513
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 1514
    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v3

    .line 1515
    .local v3, e:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v3}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private initChosenApps()V
    .locals 1

    .prologue
    .line 3029
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/MiniModeAppsPanelDataStorage;->load(Ljava/io/File;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mChosenApps:[Ljava/lang/String;

    .line 3036
    return-void
.end method

.method private initComponentDescriptionOrder()V
    .locals 7

    .prologue
    .line 804
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mComponentDescriptionsOrder:Ljava/util/ArrayList;

    .line 806
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070005

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 809
    .local v3, mComponentNames:[Ljava/lang/String;
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 810
    .local v4, str:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mComponentDescriptionsOrder:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 809
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 812
    .end local v4           #str:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private initComponentDescriptions()V
    .locals 24

    .prologue
    .line 1286
    sget-boolean v21, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    if-nez v21, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mComponentDescriptions:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1

    .line 1409
    :cond_0
    return-void

    .line 1295
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mComponentDescriptions:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    if-nez v21, :cond_5

    .line 1297
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mComponentDescriptions:Ljava/util/ArrayList;

    .line 1303
    :goto_0
    sget-boolean v21, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    if-eqz v21, :cond_b

    .line 1304
    new-instance v9, Landroid/content/Intent;

    const-string v21, "android.intent.action.MAIN"

    move-object/from16 v0, v21

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1305
    .local v9, launcherIntent:Landroid/content/Intent;
    const-string v21, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->pm:Landroid/content/pm/PackageManager;

    move-object/from16 v21, v0

    const/16 v22, 0xc0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v9, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    .line 1308
    .local v10, launcherlist:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1309
    .local v13, supportedAppList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 1310
    .local v19, supportedPackageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1311
    .local v15, supportedComponentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1312
    .local v17, supportedCscFeatureList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1315
    .local v6, excludedCscFeatureList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x107003f

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v14

    .line 1316
    .local v14, supportedAppStrings:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x1070040

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v20

    .line 1317
    .local v20, supportedPackageStrings:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x1070041

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    .line 1318
    .local v16, supportedComponentStrings:[Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v21

    const-string v22, "CscFeature_MultiWindow_AddOnApp"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1319
    .local v18, supportedCscFeatureStrings:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v21

    const-string v22, "CscFeature_MultiWindow_ExcludedApp"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1321
    .local v7, excludedCscFeatureStrings:Ljava/lang/String;
    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1322
    invoke-static/range {v20 .. v20}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1323
    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1325
    if-eqz v18, :cond_6

    .line 1326
    new-instance v4, Ljava/util/ArrayList;

    const-string v21, ","

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1327
    .local v4, cscFeatureAppList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v4, :cond_6

    .line 1328
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1329
    .local v3, cscFeatureApp:Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1343
    .end local v3           #cscFeatureApp:Ljava/lang/String;
    .end local v4           #cscFeatureAppList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #excludedCscFeatureStrings:Ljava/lang/String;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v14           #supportedAppStrings:[Ljava/lang/String;
    .end local v16           #supportedComponentStrings:[Ljava/lang/String;
    .end local v18           #supportedCscFeatureStrings:Ljava/lang/String;
    .end local v20           #supportedPackageStrings:[Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 1344
    .local v5, e:Landroid/content/res/Resources$NotFoundException;
    const-string v21, "MiniModeAppsPanel"

    const-string v22, "custom multi window list in config is not exist "

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    .end local v5           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_2
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 1348
    .local v12, r:Landroid/content/pm/ResolveInfo;
    const/4 v2, 0x0

    .line 1350
    .local v2, cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    iget-object v0, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    .line 1352
    :try_start_1
    iget-object v0, v12, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7

    iget-object v0, v12, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/systemui/multiwindow/MultiWindowReflector$Intent;->CATEGORY_MULTIWINDOW_LAUNCHER:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 1353
    new-instance v2, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .end local v2           #cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    iget-object v0, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Landroid/content/pm/ComponentInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1376
    .restart local v2       #cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    :cond_4
    :goto_3
    if-eqz v2, :cond_3

    .line 1379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mComponentDescriptions:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1300
    .end local v2           #cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    .end local v6           #excludedCscFeatureList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #launcherIntent:Landroid/content/Intent;
    .end local v10           #launcherlist:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v12           #r:Landroid/content/pm/ResolveInfo;
    .end local v13           #supportedAppList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15           #supportedComponentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17           #supportedCscFeatureList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19           #supportedPackageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mComponentDescriptions:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 1334
    .restart local v6       #excludedCscFeatureList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7       #excludedCscFeatureStrings:Ljava/lang/String;
    .restart local v9       #launcherIntent:Landroid/content/Intent;
    .restart local v10       #launcherlist:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v13       #supportedAppList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v14       #supportedAppStrings:[Ljava/lang/String;
    .restart local v15       #supportedComponentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v16       #supportedComponentStrings:[Ljava/lang/String;
    .restart local v17       #supportedCscFeatureList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v18       #supportedCscFeatureStrings:Ljava/lang/String;
    .restart local v19       #supportedPackageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v20       #supportedPackageStrings:[Ljava/lang/String;
    :cond_6
    if-eqz v7, :cond_2

    .line 1335
    :try_start_2
    new-instance v4, Ljava/util/ArrayList;

    const-string v21, ","

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1336
    .restart local v4       #cscFeatureAppList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v4, :cond_2

    .line 1337
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1338
    .restart local v3       #cscFeatureApp:Ljava/lang/String;
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 1354
    .end local v3           #cscFeatureApp:Ljava/lang/String;
    .end local v4           #cscFeatureAppList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #excludedCscFeatureStrings:Ljava/lang/String;
    .end local v14           #supportedAppStrings:[Ljava/lang/String;
    .end local v16           #supportedComponentStrings:[Ljava/lang/String;
    .end local v18           #supportedCscFeatureStrings:Ljava/lang/String;
    .end local v20           #supportedPackageStrings:[Ljava/lang/String;
    .restart local v2       #cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    .restart local v12       #r:Landroid/content/pm/ResolveInfo;
    :cond_7
    :try_start_3
    iget-object v0, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 1355
    iget-object v0, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_3

    .line 1357
    iget-object v0, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    iget-object v0, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 1361
    :cond_8
    new-instance v2, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .end local v2           #cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    iget-object v0, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Landroid/content/pm/ComponentInfo;)V

    .restart local v2       #cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    goto/16 :goto_3

    .line 1362
    :cond_9
    iget-object v0, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 1363
    iget-object v0, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_3

    .line 1365
    new-instance v2, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .end local v2           #cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    iget-object v0, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Landroid/content/pm/ComponentInfo;)V

    .restart local v2       #cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    goto/16 :goto_3

    .line 1366
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW_DOWNLOADABLE:Z

    move/from16 v21, v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-eqz v21, :cond_4

    goto/16 :goto_3

    .line 1370
    .end local v2           #cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    :catch_1
    move-exception v5

    .line 1371
    .local v5, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 1372
    .restart local v2       #cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    const-string v21, "MiniModeAppsPanel"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "initComponentDescriptions() : exception occurs! while loading mini app (activityInfo="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 1385
    .end local v2           #cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    .end local v5           #e:Ljava/lang/Exception;
    .end local v6           #excludedCscFeatureList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #launcherIntent:Landroid/content/Intent;
    .end local v10           #launcherlist:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v12           #r:Landroid/content/pm/ResolveInfo;
    .end local v13           #supportedAppList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15           #supportedComponentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17           #supportedCscFeatureList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19           #supportedPackageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_b
    new-instance v9, Landroid/content/Intent;

    const-string v21, "com.samsung.action.MINI_MODE_SERVICE"

    move-object/from16 v0, v21

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1386
    .restart local v9       #launcherIntent:Landroid/content/Intent;
    const-string v21, "com.samsung.category.MINI_MODE_LAUNCHER"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->pm:Landroid/content/pm/PackageManager;

    move-object/from16 v21, v0

    const/16 v22, 0x80

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v9, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    .line 1389
    .local v11, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_c
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 1390
    .restart local v12       #r:Landroid/content/pm/ResolveInfo;
    const/4 v2, 0x0

    .line 1391
    .restart local v2       #cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    if-eqz v12, :cond_c

    .line 1393
    :try_start_4
    new-instance v2, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .end local v2           #cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    iget-object v0, v12, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Landroid/content/pm/ComponentInfo;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1400
    .restart local v2       #cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    :goto_6
    if-eqz v2, :cond_c

    .line 1403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mComponentDescriptions:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1394
    .end local v2           #cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    :catch_2
    move-exception v5

    .line 1395
    .restart local v5       #e:Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 1396
    .restart local v2       #cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    const-string v21, "MiniModeAppsPanel"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "initComponentDescriptions() : exception occurs! while loading mini app (serviceInfo="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v12, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method private initGestureDetector()V
    .locals 5

    .prologue
    .line 1272
    new-instance v1, Lcom/android/systemui/statusbar/MiniModeAppsPanel$14;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$14;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    .line 1279
    .local v1, listener:Landroid/view/GestureDetector$SimpleOnGestureListener;
    const/4 v0, 0x1

    .line 1280
    .local v0, ignoreMultitouch:Z
    new-instance v2, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mGestureDetector:Landroid/view/GestureDetector;

    .line 1281
    return-void
.end method

.method private initMiniModeAppsPanelSound()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1413
    new-instance v0, Landroid/media/SoundPool;

    invoke-direct {v0, v5, v5, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mSoundPool:Landroid/media/SoundPool;

    .line 1414
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mSoundPoolId:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContext:Landroid/content/Context;

    const v3, 0x7f060001

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v4

    .line 1415
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mSoundPoolId:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContext:Landroid/content/Context;

    const v3, 0x7f060002

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v5

    .line 1417
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAudioManager:Landroid/media/AudioManager;

    .line 1418
    return-void
.end method

.method private isAcceptableDragEvent(Landroid/view/DragEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3175
    :try_start_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    .line 3187
    :cond_0
    :goto_0
    return v2

    .line 3177
    :cond_1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3179
    .local v1, label:Ljava/lang/String;
    const-string v4, "MiniAppDragItem"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    .line 3187
    goto :goto_0

    .line 3182
    .end local v1           #label:Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move v2, v3

    .line 3184
    goto :goto_0
.end method

.method private isChosenApp(Ljava/lang/String;)Z
    .locals 6
    .parameter "name"

    .prologue
    const/4 v4, 0x1

    .line 3039
    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mChosenApps:[Ljava/lang/String;

    if-nez v5, :cond_1

    .line 3047
    :cond_0
    :goto_0
    return v4

    .line 3042
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mChosenApps:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 3043
    .local v3, str:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3042
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3047
    .end local v3           #str:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isMiinAppsEditPanelShowing()Z
    .locals 1

    .prologue
    .line 3167
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 3168
    const/4 v0, 0x0

    .line 3170
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    goto :goto_0
.end method

.method private openEditPanel()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 3146
    const-string v0, "MiniModeAppsPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openEditPanel() : mEditPanelUIEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditPanelUIEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3147
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditPanelUIEnabled:Z

    if-eqz v0, :cond_0

    .line 3148
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3149
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 3150
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3151
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 3153
    sget-boolean v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    if-eqz v0, :cond_0

    .line 3154
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;

    const/16 v1, 0x425

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3155
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDualModeButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3156
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCascadeModeButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3157
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHelpButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3161
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 3162
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3164
    :cond_1
    return-void
.end method

.method private playHwTouchSound()V
    .locals 10

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x0

    .line 1422
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v7

    .line 1425
    .local v7, mRingerMode:I
    packed-switch v7, :pswitch_data_0

    .line 1436
    :goto_0
    return-void

    .line 1427
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    int-to-float v9, v0

    .line 1428
    .local v9, streamVolume:F
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    int-to-float v8, v0

    .line 1429
    .local v8, streamMaxVolume:F
    div-float v2, v9, v8

    .line 1430
    .local v2, adjustmentValue:F
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mSoundPoolId:[I

    aget v1, v1, v4

    const/high16 v6, 0x3f80

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0

    .line 1425
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private playTrayCloseSound()V
    .locals 10

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x0

    .line 1440
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v7

    .line 1443
    .local v7, mRingerMode:I
    packed-switch v7, :pswitch_data_0

    .line 1454
    :goto_0
    return-void

    .line 1445
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    int-to-float v9, v0

    .line 1446
    .local v9, streamVolume:F
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    int-to-float v8, v0

    .line 1447
    .local v8, streamMaxVolume:F
    div-float v2, v9, v8

    .line 1448
    .local v2, adjustmentValue:F
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mSoundPoolId:[I

    const/4 v3, 0x1

    aget v1, v1, v3

    const/high16 v6, 0x3f80

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0

    .line 1443
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private refreshApplicationList()V
    .locals 13

    .prologue
    .line 1621
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->clearItemsAnimation()V

    .line 1623
    iget-object v10, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1624
    iget-object v10, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1626
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->initChosenApps()V

    .line 1628
    const/4 v2, 0x0

    .line 1629
    .local v2, componentDescriptionsSortedByLabel:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;>;"
    iget-object v10, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mComponentDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #componentDescriptionsSortedByLabel:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;>;"
    check-cast v2, Ljava/util/ArrayList;

    .line 1630
    .restart local v2       #componentDescriptionsSortedByLabel:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;>;"
    new-instance v10, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescriptionComparatorByLabel;

    invoke-direct {v10, p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescriptionComparatorByLabel;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    invoke-static {v2, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1633
    const/4 v9, 0x0

    .line 1634
    .local v9, view:Landroid/view/View;
    const/4 v6, 0x0

    .line 1635
    .local v6, preview:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f030019

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 1636
    .local v7, previewContainer:Landroid/view/ViewGroup;
    iget-object v10, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 1640
    .local v4, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .line 1642
    .local v1, cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    sget-boolean v10, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    if-eqz v10, :cond_4

    .line 1643
    const v10, 0x7f030015

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v7, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 1644
    const v10, 0x7f030018

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v7, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 1651
    :goto_1
    iget-object v10, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTrayIconOnTouchListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconOnTouchListener;

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1652
    invoke-virtual {v9, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1659
    iget-object v10, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTrayItemDragListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 1660
    invoke-virtual {v9, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1663
    iget-object v10, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mPreviewItemOnTouchListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemOnTouchListener;

    invoke-virtual {v6, v10}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1664
    invoke-virtual {v6, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1666
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getName()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->isChosenApp(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v1, v10}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->setChosen(Z)V

    .line 1669
    sget-boolean v10, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    if-eqz v10, :cond_5

    .line 1671
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->isChosen()Z

    move-result v10

    if-nez v10, :cond_1

    .line 1672
    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1676
    :cond_1
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    const/4 v11, 0x7

    if-ne v10, v11, :cond_2

    .line 1677
    iget-object v10, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    invoke-virtual {v10, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1678
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f030019

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .end local v7           #previewContainer:Landroid/view/ViewGroup;
    check-cast v7, Landroid/view/ViewGroup;

    .line 1686
    .restart local v7       #previewContainer:Landroid/view/ViewGroup;
    :cond_2
    :goto_2
    invoke-virtual {v1, v9}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->setIconView(Landroid/view/View;)V

    .line 1687
    invoke-virtual {v1, v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->setPreview(Landroid/view/View;)V

    .line 1688
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getPreviewAnimation()Landroid/view/animation/AnimationSet;

    move-result-object v10

    if-nez v10, :cond_3

    .line 1689
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->createPreviewAnimation()Landroid/view/animation/AnimationSet;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->setPreviewAnimation(Landroid/view/animation/AnimationSet;)V

    .line 1691
    :cond_3
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->updateLabel()V

    .line 1692
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->orientation:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    const/4 v10, 0x1

    :goto_3
    invoke-virtual {v1, v10}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->updateResources(Z)V

    .line 1695
    sget-boolean v10, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    if-eqz v10, :cond_0

    .line 1696
    iget-object v10, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mGuideLineView:Landroid/view/View;

    if-nez v10, :cond_0

    .line 1697
    const v10, 0x7f030005

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mGuideLineView:Landroid/view/View;

    .line 1698
    iget-object v10, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mGuideLineView:Landroid/view/View;

    const v11, 0x7f0d0015

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTopGuideLine:Landroid/view/View;

    .line 1699
    iget-object v10, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mGuideLineView:Landroid/view/View;

    const v11, 0x7f0d0016

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBottomGuideLine:Landroid/view/View;

    .line 1700
    iget-object v10, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mGuideLineView:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1701
    iget-object v10, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTopGuideLine:Landroid/view/View;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1702
    iget-object v10, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBottomGuideLine:Landroid/view/View;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1704
    new-instance v10, Landroid/view/WindowManager$LayoutParams;

    const/16 v11, 0x89b

    invoke-direct {v10, v11}, Landroid/view/WindowManager$LayoutParams;-><init>(I)V

    iput-object v10, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mGuideLineViewParams:Landroid/view/WindowManager$LayoutParams;

    .line 1705
    iget-object v10, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mGuideLineViewParams:Landroid/view/WindowManager$LayoutParams;

    iget v11, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v11, v11, 0x8

    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1706
    iget-object v10, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mGuideLineViewParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v11, 0x0

    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1707
    iget-object v10, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mGuideLineViewParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v11, 0x0

    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1708
    iget-object v10, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mGuideLineViewParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v11, 0x0

    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1709
    iget-object v10, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mGuideLineViewParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v11, 0x0

    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1710
    iget-object v10, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mGuideLineViewParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v11, 0x33

    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1711
    iget-object v10, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mGuideLineViewParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v11, -0x3

    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1712
    iget-object v10, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mGuideLineViewParams:Landroid/view/WindowManager$LayoutParams;

    const-string v11, "MultiWindow/GuideLine"

    invoke-virtual {v10, v11}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1713
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mGuideLineView:Landroid/view/View;

    iget-object v12, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mGuideLineViewParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v10, v11, v12}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1715
    iget-object v10, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mGuideLineView:Landroid/view/View;

    new-instance v11, Lcom/android/systemui/statusbar/MiniModeAppsPanel$16;

    invoke-direct {v11, p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$16;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    goto/16 :goto_0

    .line 1647
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f030011

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 1648
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f030014

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    goto/16 :goto_1

    .line 1682
    :cond_5
    iget-object v10, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    invoke-virtual {v10, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 1692
    :cond_6
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 1826
    .end local v1           #cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    :cond_7
    sget-boolean v10, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    if-eqz v10, :cond_8

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    if-lez v10, :cond_8

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    const/4 v11, 0x7

    if-ge v10, v11, :cond_8

    iget-object v10, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    invoke-virtual {v10, v7}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_8

    .line 1830
    iget-object v10, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    invoke-virtual {v10, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1834
    :cond_8
    iget-object v10, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mChosenApps:[Ljava/lang/String;

    if-eqz v10, :cond_a

    .line 1835
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mChosenApps:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_4
    if-ge v3, v5, :cond_c

    aget-object v8, v0, v3

    .line 1836
    .local v8, str:Ljava/lang/String;
    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findComponentDescriptionByClassName(Ljava/lang/String;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    move-result-object v1

    .line 1837
    .restart local v1       #cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    if-eqz v1, :cond_9

    .line 1838
    iget-object v10, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getIconView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1835
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1843
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    .end local v5           #len$:I
    .end local v8           #str:Ljava/lang/String;
    .local v3, i$:Ljava/util/Iterator;
    :cond_a
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .line 1844
    .restart local v1       #cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    if-eqz v1, :cond_b

    .line 1845
    iget-object v10, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getIconView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_5

    .line 1852
    .end local v1           #cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_c
    sget-boolean v10, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    if-eqz v10, :cond_d

    .line 1853
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f030015

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyView:Landroid/view/View;

    .line 1858
    :goto_6
    return-void

    .line 1856
    :cond_d
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f030011

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyView:Landroid/view/View;

    goto :goto_6
.end method

.method private removeViewFromEditPanel(Landroid/view/View;)V
    .locals 17
    .parameter "view"

    .prologue
    .line 1569
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    if-eqz v14, :cond_4

    .line 1570
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1571
    .local v5, editItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v12, 0x0

    .line 1573
    .local v12, previewContainer:Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1574
    .local v1, N:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v1, :cond_1

    .line 1575
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    invoke-virtual {v14, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .end local v12           #previewContainer:Landroid/view/ViewGroup;
    check-cast v12, Landroid/view/ViewGroup;

    .line 1576
    .restart local v12       #previewContainer:Landroid/view/ViewGroup;
    if-eqz v12, :cond_0

    .line 1577
    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    .line 1578
    .local v11, n:I
    const/4 v9, 0x0

    .local v9, j:I
    :goto_1
    if-ge v9, v11, :cond_0

    .line 1579
    invoke-virtual {v12, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1580
    .local v8, item:Landroid/view/View;
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1578
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1583
    .end local v8           #item:Landroid/view/View;
    .end local v9           #j:I
    .end local v11           #n:I
    :cond_0
    invoke-virtual {v12}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1574
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1585
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    invoke-virtual {v14}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1586
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1588
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v14

    const v15, 0x7f030019

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .end local v12           #previewContainer:Landroid/view/ViewGroup;
    check-cast v12, Landroid/view/ViewGroup;

    .line 1589
    .restart local v12       #previewContainer:Landroid/view/ViewGroup;
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 1590
    .restart local v8       #item:Landroid/view/View;
    invoke-virtual {v12, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1591
    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v14

    const/4 v15, 0x7

    if-ne v14, v15, :cond_2

    .line 1592
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    invoke-virtual {v14, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1593
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v14

    const v15, 0x7f030019

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .end local v12           #previewContainer:Landroid/view/ViewGroup;
    check-cast v12, Landroid/view/ViewGroup;

    .restart local v12       #previewContainer:Landroid/view/ViewGroup;
    goto :goto_2

    .line 1597
    .end local v8           #item:Landroid/view/View;
    :cond_3
    if-eqz v12, :cond_4

    .line 1598
    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    .line 1599
    .local v10, lastChildCount:I
    if-lez v10, :cond_5

    const/4 v14, 0x7

    if-ge v10, v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    invoke-virtual {v14, v12}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v14

    if-gez v14, :cond_5

    .line 1601
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    invoke-virtual {v14, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1615
    .end local v1           #N:I
    .end local v5           #editItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v6           #i:I
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v10           #lastChildCount:I
    .end local v12           #previewContainer:Landroid/view/ViewGroup;
    :cond_4
    :goto_3
    return-void

    .line 1602
    .restart local v1       #N:I
    .restart local v5       #editItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v6       #i:I
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v10       #lastChildCount:I
    .restart local v12       #previewContainer:Landroid/view/ViewGroup;
    :cond_5
    if-nez v10, :cond_4

    .line 1604
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 1605
    .local v3, child:I
    if-lez v3, :cond_4

    .line 1606
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 1607
    .local v4, containerHeight:I
    mul-int v13, v3, v4

    .line 1608
    .local v13, yOffsetAtTop:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/FrameLayout;

    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v14

    sub-int/2addr v14, v4

    div-int/lit8 v2, v14, 0x2

    .line 1609
    .local v2, centerY:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/FrameLayout;

    instance-of v14, v14, Landroid/widget/ScrollView;

    if-eqz v14, :cond_4

    .line 1610
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/FrameLayout;

    check-cast v14, Landroid/widget/ScrollView;

    const/4 v15, 0x0

    sub-int v16, v13, v2

    invoke-virtual/range {v14 .. v16}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto :goto_3
.end method

.method private save()Z
    .locals 5

    .prologue
    .line 3051
    const/4 v3, 0x0

    .line 3053
    .local v3, str:[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 3054
    .local v1, count:I
    add-int/lit8 v4, v1, 0x1

    new-array v3, v4, [Ljava/lang/String;

    .line 3056
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 3057
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .line 3058
    .local v0, cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 3056
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3060
    .end local v0           #cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    :cond_0
    const-string v4, "EOF"

    aput-object v4, v3, v1

    .line 3062
    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/systemui/statusbar/MiniModeAppsPanelDataStorage;->store(Ljava/io/File;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3066
    const/4 v4, 0x1

    .line 3069
    :goto_1
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private setCloseIconEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 2297
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 2298
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2300
    :cond_0
    return-void
.end method

.method private setEmptyBtnVisibility()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3073
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 3074
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 3076
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3078
    :cond_0
    const/4 v0, 0x1

    .line 3084
    :cond_1
    :goto_0
    return v0

    .line 3080
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 3082
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateImageOfMiniModeAppsPanel()V
    .locals 6

    .prologue
    .line 1263
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mComponentDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .line 1264
    .local v0, cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->updateIconInfo()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1266
    .end local v0           #cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    .end local v2           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 1267
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "MiniModeAppsPanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private updateModeButtonsState(Z)V
    .locals 9
    .parameter "isCascadeMode"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2987
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    if-ne v8, v7, :cond_4

    const/16 v5, 0x8

    .line 2989
    .local v5, isVisible:I
    :goto_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCascadeModeButton:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_1

    .line 2990
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCascadeModeButton:Landroid/widget/LinearLayout;

    if-nez p1, :cond_0

    move v6, v7

    :cond_0
    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 2992
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCascadeModeButton:Landroid/widget/LinearLayout;

    const v7, 0x7f0d0071

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2993
    .local v0, cascadeImageView:Landroid/widget/ImageView;
    if-eqz p1, :cond_5

    .line 2994
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCascadeModeButton:Landroid/widget/LinearLayout;

    const v7, 0x7f020144

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 2995
    const v6, 0x7f020148

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3001
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCascadeModeButton:Landroid/widget/LinearLayout;

    const v7, 0x7f0d0072

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3002
    .local v1, cascadeTextView:Landroid/widget/TextView;
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3005
    .end local v0           #cascadeImageView:Landroid/widget/ImageView;
    .end local v1           #cascadeTextView:Landroid/widget/TextView;
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDualModeButton:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_2

    .line 3006
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDualModeButton:Landroid/widget/LinearLayout;

    invoke-virtual {v6, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 3008
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDualModeButton:Landroid/widget/LinearLayout;

    const v7, 0x7f0d006e

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 3009
    .local v2, dualImageView:Landroid/widget/ImageView;
    if-eqz p1, :cond_6

    .line 3010
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDualModeButton:Landroid/widget/LinearLayout;

    const v7, 0x7f02013f

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 3011
    const v6, 0x7f02014d

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3017
    :goto_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDualModeButton:Landroid/widget/LinearLayout;

    const v7, 0x7f0d006f

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 3018
    .local v3, dualTextView:Landroid/widget/TextView;
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3021
    .end local v2           #dualImageView:Landroid/widget/ImageView;
    .end local v3           #dualTextView:Landroid/widget/TextView;
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHelpButton:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_3

    .line 3022
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHelpButton:Landroid/widget/LinearLayout;

    const v7, 0x7f0d006c

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 3023
    .local v4, helpTextView:Landroid/widget/TextView;
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3025
    .end local v4           #helpTextView:Landroid/widget/TextView;
    :cond_3
    return-void

    .end local v5           #isVisible:I
    :cond_4
    move v5, v6

    .line 2987
    goto :goto_0

    .line 2997
    .restart local v0       #cascadeImageView:Landroid/widget/ImageView;
    .restart local v5       #isVisible:I
    :cond_5
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCascadeModeButton:Landroid/widget/LinearLayout;

    const v7, 0x7f020143

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 2998
    const v6, 0x7f020147

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 3013
    .end local v0           #cascadeImageView:Landroid/widget/ImageView;
    .restart local v2       #dualImageView:Landroid/widget/ImageView;
    :cond_6
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDualModeButton:Landroid/widget/LinearLayout;

    const v7, 0x7f020140

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 3014
    const v6, 0x7f02014e

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method

.method private updateTextOfMiniModeAppsPanel()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 1195
    const v8, 0x7f0d0060

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 1196
    .local v4, editBtn:Landroid/widget/Button;
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditPanelUIEnabled:Z

    if-eqz v8, :cond_0

    .line 1197
    const v8, 0x7f0a0156

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setText(I)V

    .line 1198
    invoke-virtual {v4, v12, v11}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1201
    :cond_0
    const v8, 0x7f0d005d

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1202
    .local v6, emptyBtn:Landroid/widget/TextView;
    if-eqz v6, :cond_1

    .line 1204
    sget-boolean v8, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    if-eqz v8, :cond_7

    .line 1205
    const v8, 0x7f0a0144

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    .line 1209
    :goto_0
    invoke-virtual {v6, v12, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1212
    :cond_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    const v9, 0x7f0d0062

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1213
    .local v5, editPanelTitle:Landroid/widget/TextView;
    if-eqz v5, :cond_2

    .line 1215
    sget-boolean v8, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    if-eqz v8, :cond_8

    .line 1216
    const v8, 0x7f0a0143

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    .line 1220
    :goto_1
    invoke-virtual {v5, v12, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1224
    :cond_2
    sget-boolean v8, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    if-eqz v8, :cond_9

    .line 1226
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    if-eqz v8, :cond_3

    .line 1227
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContext:Landroid/content/Context;

    const v10, 0x7f0a0142

    invoke-virtual {v9, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1229
    :cond_3
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDualModeButton:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCascadeModeButton:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHelpButton:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_4

    .line 1230
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHelpButton:Landroid/widget/LinearLayout;

    const v9, 0x7f0d006c

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1231
    .local v7, helpTextView:Landroid/widget/TextView;
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDualModeButton:Landroid/widget/LinearLayout;

    const v9, 0x7f0d006f

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1232
    .local v3, dualModeTextView:Landroid/widget/TextView;
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCascadeModeButton:Landroid/widget/LinearLayout;

    const v9, 0x7f0d0072

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1233
    .local v1, cascadeModeTextView:Landroid/widget/TextView;
    const v8, 0x7f0a0145

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 1234
    invoke-virtual {v7, v12, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1235
    const v8, 0x7f0a0140

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(I)V

    .line 1236
    invoke-virtual {v3, v12, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1237
    const v8, 0x7f0a013f

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(I)V

    .line 1238
    invoke-virtual {v1, v12, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1239
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIsCascadeMode:Z

    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->updateModeButtonsState(Z)V

    .line 1247
    .end local v1           #cascadeModeTextView:Landroid/widget/TextView;
    .end local v3           #dualModeTextView:Landroid/widget/TextView;
    .end local v7           #helpTextView:Landroid/widget/TextView;
    :cond_4
    :goto_2
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    const v9, 0x7f0d0064

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 1248
    .local v2, doneBtn:Landroid/widget/Button;
    if-eqz v2, :cond_5

    .line 1249
    const v8, 0x7f0a0137

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setText(I)V

    .line 1250
    invoke-virtual {v2, v12, v11}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1253
    :cond_5
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    const v9, 0x7f0d0063

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1254
    .local v0, cancelBtn:Landroid/widget/Button;
    if-eqz v0, :cond_6

    .line 1255
    const/high16 v8, 0x104

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setText(I)V

    .line 1256
    invoke-virtual {v0, v12, v11}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1258
    :cond_6
    return-void

    .line 1208
    .end local v0           #cancelBtn:Landroid/widget/Button;
    .end local v2           #doneBtn:Landroid/widget/Button;
    .end local v5           #editPanelTitle:Landroid/widget/TextView;
    :cond_7
    const v8, 0x7f0a0155

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 1219
    .restart local v5       #editPanelTitle:Landroid/widget/TextView;
    :cond_8
    const v8, 0x7f0a0154

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 1243
    :cond_9
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    if-eqz v8, :cond_4

    .line 1244
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContext:Landroid/content/Context;

    const v10, 0x7f0a0157

    invoke-virtual {v9, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method


# virtual methods
.method public closeMiniAppsPanel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2285
    const-string v0, "MiniModeAppsPanel"

    const-string v1, "closeMiniAppsPanel()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->isClosePanel:Z

    .line 2287
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->setCloseIconEnabled(Z)V

    .line 2288
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditPanelUIEnabled:Z

    if-eqz v0, :cond_0

    .line 2289
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 2291
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->refreshApplicationList()V

    .line 2292
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->setItemsAnimation(Z)V

    .line 2293
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->closeEditPanel()V

    .line 2294
    return-void
.end method

.method public getLauncherLargeIconDensity()I
    .locals 5

    .prologue
    const/16 v3, 0x140

    .line 924
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 925
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 926
    .local v0, density:I
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v2, v4, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 928
    .local v2, sw:I
    const/16 v4, 0x258

    if-ge v2, v4, :cond_0

    .line 949
    .end local v0           #density:I
    :goto_0
    return v0

    .line 933
    .restart local v0       #density:I
    :cond_0
    sparse-switch v0, :sswitch_data_0

    .line 949
    int-to-float v3, v0

    const/high16 v4, 0x3fc0

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f00

    add-float/2addr v3, v4

    float-to-int v0, v3

    goto :goto_0

    .line 935
    :sswitch_0
    const/16 v0, 0xa0

    goto :goto_0

    .line 937
    :sswitch_1
    const/16 v0, 0xf0

    goto :goto_0

    :sswitch_2
    move v0, v3

    .line 939
    goto :goto_0

    :sswitch_3
    move v0, v3

    .line 941
    goto :goto_0

    .line 943
    :sswitch_4
    const/16 v0, 0x1e0

    goto :goto_0

    .line 945
    :sswitch_5
    const/16 v0, 0x280

    goto :goto_0

    .line 933
    nop

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xd5 -> :sswitch_2
        0xf0 -> :sswitch_3
        0x140 -> :sswitch_4
        0x1e0 -> :sswitch_5
    .end sparse-switch
.end method

.method public isInContentArea(II)Z
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 831
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBackgroundProtector:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 832
    .local v1, l:I
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBackgroundProtector:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBackgroundProtector:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int v2, v4, v5

    .line 833
    .local v2, r:I
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBackgroundProtector:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 834
    .local v3, t:I
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBackgroundProtector:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBackgroundProtector:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int v0, v4, v5

    .line 835
    .local v0, b:I
    if-lt p1, v1, :cond_0

    if-ge p1, v2, :cond_0

    if-lt p2, v3, :cond_0

    if-ge p2, v0, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public loadDefaultWindowInfo()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1487
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105005c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mWindowDefWidth:I

    .line 1488
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105005d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mWindowDefHeight:I

    .line 1489
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x10102eb

    aput v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1490
    .local v0, ta:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mActionBarHeight:I

    .line 1491
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1492
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 16
    .parameter "view"

    .prologue
    .line 1861
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->isMiinAppsEditPanelShowing()Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_5

    .line 1864
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1865
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .line 1866
    .local v2, cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getPreview()Landroid/view/View;

    move-result-object v12

    const v13, 0x7f0d0068

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 1867
    .local v8, previewIcon:Landroid/widget/ImageView;
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getPreviewAnimation()Landroid/view/animation/AnimationSet;

    move-result-object v1

    .line 1868
    .local v1, anim:Landroid/view/animation/AnimationSet;
    if-nez v1, :cond_0

    .line 1869
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mPreviewAnimationSet:Landroid/view/animation/AnimationSet;

    .line 1872
    :cond_0
    if-eqz v1, :cond_1

    .line 1873
    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1876
    :cond_1
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->setChosen(Z)V

    .line 1879
    sget-boolean v12, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    if-eqz v12, :cond_4

    .line 1880
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getPreview()Landroid/view/View;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->addViewToEditPanel(Landroid/view/View;)V

    .line 1891
    :cond_2
    :goto_0
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->updatePreview()V

    .line 1893
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;

    const/high16 v13, 0x3f80

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setAlpha(F)V

    .line 1894
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1941
    .end local v1           #anim:Landroid/view/animation/AnimationSet;
    .end local v2           #cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    .end local v8           #previewIcon:Landroid/widget/ImageView;
    :cond_3
    :goto_1
    return-void

    .line 1883
    .restart local v1       #anim:Landroid/view/animation/AnimationSet;
    .restart local v2       #cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    .restart local v8       #previewIcon:Landroid/widget/ImageView;
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getPreview()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    .line 1884
    .local v5, i:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v9

    .line 1885
    .local v9, previewWidth:I
    mul-int v11, v5, v9

    .line 1886
    .local v11, xOffsetAtLeft:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/FrameLayout;

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v12

    sub-int/2addr v12, v9

    div-int/lit8 v3, v12, 0x2

    .line 1887
    .local v3, centerX:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/FrameLayout;

    instance-of v12, v12, Landroid/widget/HorizontalScrollView;

    if-eqz v12, :cond_2

    .line 1888
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/FrameLayout;

    check-cast v12, Landroid/widget/HorizontalScrollView;

    sub-int v13, v11, v3

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_0

    .line 1900
    .end local v1           #anim:Landroid/view/animation/AnimationSet;
    .end local v2           #cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    .end local v3           #centerX:I
    .end local v5           #i:I
    .end local v8           #previewIcon:Landroid/widget/ImageView;
    .end local v9           #previewWidth:I
    .end local v11           #xOffsetAtLeft:I
    :cond_5
    if-eqz p1, :cond_3

    .line 1902
    move-object/from16 v10, p1

    .line 1903
    .local v10, v:Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .line 1904
    .local v4, componentDescription:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->name:Landroid/content/ComponentName;
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->access$4400(Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;)Landroid/content/ComponentName;

    move-result-object v7

    .line 1909
    .local v7, name:Landroid/content/ComponentName;
    const/4 v6, 0x0

    .line 1910
    .local v6, intent:Landroid/content/Intent;
    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->ci:Landroid/content/pm/ComponentInfo;
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->access$4600(Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;)Landroid/content/pm/ComponentInfo;

    move-result-object v12

    instance-of v12, v12, Landroid/content/pm/ServiceInfo;

    if-eqz v12, :cond_8

    .line 1912
    new-instance v12, Landroid/content/Intent;

    const-string v13, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v6

    .line 1913
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12, v6}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1928
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    instance-of v12, v12, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    if-eqz v12, :cond_7

    .line 1929
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    check-cast v12, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->animateCollapse()V

    .line 1933
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;

    const/16 v13, 0x425

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 1935
    sget-boolean v12, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    if-eqz v12, :cond_9

    .line 1936
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;

    const/16 v13, 0x425

    const-wide/16 v14, 0x1388

    invoke-virtual {v12, v13, v14, v15}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 1914
    :cond_8
    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->ci:Landroid/content/pm/ComponentInfo;
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->access$4600(Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;)Landroid/content/pm/ComponentInfo;

    move-result-object v12

    instance-of v12, v12, Landroid/content/pm/ActivityInfo;

    if-eqz v12, :cond_6

    .line 1916
    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.intent.action.MAIN"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v6

    .line 1917
    const-string v12, "android.intent.category.LAUNCHER"

    invoke-virtual {v6, v12}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1918
    const/high16 v12, 0x1020

    invoke-virtual {v6, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1919
    sget-object v12, Lcom/android/systemui/multiwindow/MultiWindowReflector$Intent;->EXTRA_WINDOW_MODE:Ljava/lang/String;

    sget v13, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_FREESTYLE:I

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1920
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 1939
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;

    const/16 v13, 0x425

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1
.end method

.method protected onFinishInflate()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 956
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 960
    const v1, 0x7f0d005a

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsScroller:Landroid/view/ViewGroup;

    .line 961
    const v1, 0x7f0d005b

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    .line 962
    const v1, 0x7f0d002e

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBackgroundProtector:Landroid/view/View;

    .line 965
    sget-boolean v1, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    if-eqz v1, :cond_3

    .line 966
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f030017

    invoke-static {v1, v2, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    .line 974
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppBgHeight:I

    .line 977
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    iget v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppBgHeight:I

    const/16 v5, 0x7e8

    const v6, 0x800028

    const/4 v7, -0x3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 987
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x53

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 988
    const-string v1, "MiniModeAppsEditPanel"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 989
    const v1, 0x7f0f0015

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 990
    const-string v1, "com.android.systemui"

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 992
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 995
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    const v2, 0x7f0d0065

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/FrameLayout;

    .line 998
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    const v2, 0x7f0d0066

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    .line 1000
    const v1, 0x7f0d0059

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsBG:Landroid/widget/LinearLayout;

    .line 1002
    const v1, 0x7f0d0060

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    .line 1004
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 1005
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    move v1, v8

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditPanelUIEnabled:Z

    .line 1006
    const-string v1, "MiniModeAppsPanel"

    const-string v2, "EditPanel UI is Enabled."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/systemui/statusbar/MiniModeAppsPanel$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$4;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1015
    :cond_0
    const v1, 0x7f0d005d

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    .line 1016
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 1017
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    new-instance v2, Lcom/android/systemui/statusbar/MiniModeAppsPanel$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$5;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1025
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    const v2, 0x7f0d0064

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;

    .line 1026
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/systemui/statusbar/MiniModeAppsPanel$6;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$6;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1034
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;

    const/high16 v2, 0x3f00

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setAlpha(F)V

    .line 1035
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1037
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    const v2, 0x7f0d0063

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCancelButton:Landroid/widget/Button;

    .line 1038
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCancelButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/systemui/statusbar/MiniModeAppsPanel$7;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$7;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1047
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->createPreviewAnimation()Landroid/view/animation/AnimationSet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mPreviewAnimationSet:Landroid/view/animation/AnimationSet;

    .line 1057
    const v1, 0x7f0d005f

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    .line 1058
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/systemui/statusbar/MiniModeAppsPanel$8;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$8;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1072
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    .line 1073
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/systemui/statusbar/MiniModeAppsPanel$9;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$9;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1091
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsScroller:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTrayContainerDragListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 1092
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mPanelEditContainerDragListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 1094
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsBG:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTrayBGDragListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayBGDragListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 1096
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->refreshApplicationList()V

    .line 1098
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->setEmptyBtnVisibility()Z

    .line 1109
    new-instance v1, Lcom/sec/minimode/manager/MiniModeAppManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/minimode/manager/MiniModeAppManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniModeAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    .line 1110
    new-instance v1, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniModeAppCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    .line 1111
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniModeAppCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mOnMiniAppCloseCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnFocusChangedCallback;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->setOnFocusChangedCallback(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnFocusChangedCallback;)V

    .line 1115
    sget-boolean v1, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    if-eqz v1, :cond_2

    .line 1116
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0142

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1118
    const v1, 0x7f0d0070

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCascadeModeButton:Landroid/widget/LinearLayout;

    .line 1119
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCascadeModeButton:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/systemui/statusbar/MiniModeAppsPanel$10;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$10;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1135
    const v1, 0x7f0d006d

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDualModeButton:Landroid/widget/LinearLayout;

    .line 1136
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDualModeButton:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/systemui/statusbar/MiniModeAppsPanel$11;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$11;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1152
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCascadeModeButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setHoverPopupType(I)V

    .line 1153
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDualModeButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setHoverPopupType(I)V

    .line 1155
    const v1, 0x7f0d006a

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHelpButton:Landroid/widget/LinearLayout;

    .line 1156
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHelpButton:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/systemui/statusbar/MiniModeAppsPanel$12;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$12;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1170
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIsCascadeMode:Z

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->updateModeButtonsState(Z)V

    .line 1172
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsScroller:Landroid/view/ViewGroup;

    new-instance v2, Lcom/android/systemui/statusbar/MiniModeAppsPanel$13;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$13;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1192
    :cond_2
    return-void

    .line 970
    .end local v0           #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f030013

    invoke-static {v1, v2, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    goto/16 :goto_0

    .restart local v0       #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_4
    move v1, v3

    .line 1005
    goto/16 :goto_1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 8
    .parameter "view"

    .prologue
    const/4 v4, 0x1

    const/16 v7, 0x425

    .line 1944
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/View;

    if-eqz v3, :cond_2

    .line 1945
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1946
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .line 1947
    .local v0, componentDescription:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->name:Landroid/content/ComponentName;
    invoke-static {v0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->access$4400(Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1951
    .local v1, name:Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniModeAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;

    iget v5, v5, Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;->x:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;

    iget v6, v6, Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;->y:F

    float-to-int v6, v6

    invoke-virtual {v3, v1, v5, v6}, Lcom/sec/minimode/manager/MiniModeAppManager;->startWithPosition(Landroid/content/ComponentName;II)V

    .line 1952
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mOnDragging:Z

    .line 1954
    iget-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    instance-of v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    if-eqz v3, :cond_0

    .line 1955
    iget-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    check-cast v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->animateCollapse()V

    .line 1959
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1961
    sget-boolean v3, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    if-eqz v3, :cond_1

    .line 1962
    iget-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x1388

    invoke-virtual {v3, v7, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    move v3, v4

    .line 1969
    .end local v0           #componentDescription:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    .end local v1           #name:Landroid/content/ComponentName;
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return v3

    .line 1965
    .restart local v0       #componentDescription:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    .restart local v1       #name:Landroid/content/ComponentName;
    .restart local v2       #v:Landroid/view/View;
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1969
    .end local v0           #componentDescription:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    .end local v1           #name:Landroid/content/ComponentName;
    .end local v2           #v:Landroid/view/View;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 3108
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 3109
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->adjustTrayPadding()V

    .line 3110
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "view"
    .parameter "event"

    .prologue
    const/16 v7, 0x425

    const/4 v6, 0x2

    const/4 v8, 0x0

    .line 1996
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->isMiinAppsEditPanelShowing()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 2000
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 2077
    :cond_0
    :goto_0
    return v8

    .line 2004
    :pswitch_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 2005
    .local v2, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 2006
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0xfa

    invoke-virtual {v4, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 2012
    .end local v2           #msg:Landroid/os/Message;
    :pswitch_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 2022
    :cond_1
    if-eqz p1, :cond_0

    .line 2024
    move-object v3, p1

    .line 2025
    .local v3, v:Landroid/view/View;
    const v4, 0x7f0d0057

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2027
    .local v0, appIcon:Landroid/widget/ImageView;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    goto :goto_0

    .line 2031
    :pswitch_2
    const/16 v4, 0x66

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 2033
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;

    invoke-virtual {v4, p2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;->calculatePosition(Landroid/view/MotionEvent;)V

    .line 2035
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mOnDragging:Z

    .line 2038
    sget-boolean v4, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    if-eqz v4, :cond_0

    .line 2039
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 2046
    :pswitch_3
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mOnDragging:Z

    if-eqz v4, :cond_0

    .line 2048
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .line 2050
    .local v1, componentDescription:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;

    invoke-virtual {v4, p2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;->calculatePosition(Landroid/view/MotionEvent;)V

    .line 2053
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniModeAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->name:Landroid/content/ComponentName;
    invoke-static {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->access$4400(Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;)Landroid/content/ComponentName;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;

    iget v6, v6, Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;->x:F

    float-to-int v6, v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;

    iget v7, v7, Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;->y:F

    float-to-int v7, v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/minimode/manager/MiniModeAppManager;->move(Landroid/content/ComponentName;II)V

    goto :goto_0

    .line 2061
    .end local v1           #componentDescription:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    :pswitch_4
    const/16 v4, 0xff

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 2063
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mOnDragging:Z

    .line 2066
    sget-boolean v4, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    if-eqz v4, :cond_0

    .line 2067
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 2068
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x1388

    invoke-virtual {v4, v7, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 2000
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 2027
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public openMiniAppsPanel()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2274
    const-string v0, "MiniModeAppsPanel"

    const-string v1, "openMiniAppsPanel()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2275
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->isClosePanel:Z

    .line 2276
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->setCloseIconEnabled(Z)V

    .line 2277
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditPanelUIEnabled:Z

    if-eqz v0, :cond_0

    .line 2278
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 2280
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->setItemsAnimation(Z)V

    .line 2282
    return-void
.end method

.method public setBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0
    .parameter "bar"

    .prologue
    .line 839
    iput-object p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    .line 840
    return-void
.end method

.method public setItemsAnimation(Z)V
    .locals 24
    .parameter "isShowAnim"

    .prologue
    .line 2085
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v10

    .line 2086
    .local v10, count:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0c00ad

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    .line 2087
    .local v14, miniAppItemHeight:I
    add-int/lit8 v20, v10, -0x1

    mul-int/lit8 v15, v20, 0x28

    .line 2090
    .local v15, miniAppItemHideAnimDelay:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0c00bd

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 2091
    .local v16, miniAppItemWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsScroller:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v18

    .line 2092
    .local v18, scrollerWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsScroller:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v20

    div-int v19, v20, v16

    .line 2093
    .local v19, startPos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsScroller:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v20

    add-int v20, v20, v18

    div-int v12, v20, v16

    .line 2094
    .local v12, endPos:I
    sget-boolean v20, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    if-eqz v20, :cond_0

    .line 2095
    sub-int v20, v12, v19

    add-int/lit8 v20, v20, -0x1

    mul-int/lit8 v15, v20, 0x28

    .line 2099
    :cond_0
    if-eqz p1, :cond_6

    .line 2100
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    if-ge v13, v10, :cond_3

    .line 2101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2102
    .local v9, child:Landroid/view/View;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2103
    new-instance v17, Landroid/view/animation/TranslateAnimation;

    const/16 v20, 0x0

    const/16 v21, 0x0

    int-to-float v0, v14

    move/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2104
    .local v17, rotateItem:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v20, 0x10e

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 2107
    sget-boolean v20, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    if-eqz v20, :cond_2

    .line 2108
    move/from16 v0, v19

    if-lt v13, v0, :cond_1

    if-gt v13, v12, :cond_1

    .line 2109
    sub-int v20, v13, v19

    mul-int/lit8 v20, v20, 0x28

    add-int/lit8 v20, v20, 0x3c

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 2110
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2117
    :cond_1
    :goto_1
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 2100
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 2114
    :cond_2
    mul-int/lit8 v20, v13, 0x28

    add-int/lit8 v20, v20, 0x3c

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 2115
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 2119
    .end local v9           #child:Landroid/view/View;
    .end local v17           #rotateItem:Landroid/view/animation/TranslateAnimation;
    :cond_3
    const v20, 0x7f0d0059

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 2120
    .local v8, bg:Landroid/view/View;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2121
    new-instance v7, Landroid/view/animation/TranslateAnimation;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppBgHeight:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/16 v23, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2122
    .local v7, animation:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v20, 0x10e

    move-wide/from16 v0, v20

    invoke-virtual {v7, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 2123
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/16 v20, 0x0

    const/high16 v21, 0x3f80

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v5, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2124
    .local v5, alphaAni:Landroid/view/animation/AlphaAnimation;
    add-int/lit16 v0, v15, 0x14a

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 2125
    new-instance v6, Landroid/view/animation/AnimationSet;

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-direct {v6, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2126
    .local v6, aniSet:Landroid/view/animation/AnimationSet;
    invoke-virtual {v6, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2127
    invoke-virtual {v6, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2128
    invoke-virtual {v8, v6}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2129
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 2132
    const v20, 0x7f0d005c

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 2133
    .local v11, emptyBtnContainer:Landroid/view/View;
    if-eqz v11, :cond_4

    .line 2134
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2135
    invoke-virtual {v11, v6}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2136
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 2139
    :cond_4
    new-instance v20, Lcom/android/systemui/statusbar/MiniModeAppsPanel$17;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$17;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2271
    :cond_5
    :goto_2
    return-void

    .line 2175
    .end local v5           #alphaAni:Landroid/view/animation/AlphaAnimation;
    .end local v6           #aniSet:Landroid/view/animation/AnimationSet;
    .end local v7           #animation:Landroid/view/animation/TranslateAnimation;
    .end local v8           #bg:Landroid/view/View;
    .end local v11           #emptyBtnContainer:Landroid/view/View;
    .end local v13           #i:I
    :cond_6
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_3
    if-ge v13, v10, :cond_9

    .line 2176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2177
    .restart local v9       #child:Landroid/view/View;
    const/16 v20, 0x4

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2178
    new-instance v17, Landroid/view/animation/TranslateAnimation;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    int-to-float v0, v14

    move/from16 v23, v0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2179
    .restart local v17       #rotateItem:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v20, 0x10e

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 2182
    sget-boolean v20, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    if-eqz v20, :cond_8

    .line 2183
    move/from16 v0, v19

    if-lt v13, v0, :cond_7

    if-gt v13, v12, :cond_7

    .line 2184
    sub-int v20, v12, v13

    mul-int/lit8 v20, v20, 0x28

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 2185
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2231
    :cond_7
    :goto_4
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 2175
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 2208
    :cond_8
    sub-int v20, v10, v13

    add-int/lit8 v20, v20, -0x1

    mul-int/lit8 v20, v20, 0x28

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 2209
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_4

    .line 2233
    .end local v9           #child:Landroid/view/View;
    .end local v17           #rotateItem:Landroid/view/animation/TranslateAnimation;
    :cond_9
    const v20, 0x7f0d0059

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 2234
    .restart local v8       #bg:Landroid/view/View;
    const/16 v20, 0x4

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2235
    new-instance v7, Landroid/view/animation/TranslateAnimation;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2236
    .restart local v7       #animation:Landroid/view/animation/TranslateAnimation;
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/high16 v20, 0x3f80

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v5, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2237
    .restart local v5       #alphaAni:Landroid/view/animation/AlphaAnimation;
    new-instance v6, Landroid/view/animation/AnimationSet;

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-direct {v6, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2238
    .restart local v6       #aniSet:Landroid/view/animation/AnimationSet;
    invoke-virtual {v6, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2239
    invoke-virtual {v6, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2241
    const-wide/16 v20, 0x10e

    move-wide/from16 v0, v20

    invoke-virtual {v6, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 2242
    int-to-long v0, v15

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v6, v0, v1}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 2244
    new-instance v20, Lcom/android/systemui/statusbar/MiniModeAppsPanel$20;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$20;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2260
    invoke-virtual {v8, v6}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2261
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 2264
    const v20, 0x7f0d005c

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 2265
    .restart local v11       #emptyBtnContainer:Landroid/view/View;
    if-eqz v11, :cond_5

    .line 2266
    const/16 v20, 0x4

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2267
    invoke-virtual {v11, v6}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2268
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_2
.end method

.method public setStatusBarHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 2081
    iput-object p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;

    .line 2082
    return-void
.end method
