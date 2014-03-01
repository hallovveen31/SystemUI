.class public Lcom/android/systemui/statusbar/tablet/NotificationPanel;
.super Landroid/widget/RelativeLayout;
.source "NotificationPanel.java"

# interfaces
.implements Lcom/android/systemui/statusbar/tablet/StatusBarPanel;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final NUMBER_OF_VISIBLE_QUICK_SETTING_BUTTON:I = 0x5

.field static final PANEL_FADE_DURATION:I = 0x96

.field static QUICK_SETTINGS_START_OFFSET:I = 0x0

.field static final TAG:Ljava/lang/String; = "Tablet/NotificationPanel"

.field private static final TOUCHEVENT_TO_NOTIFICATION:I = 0x2

.field private static final TOUCHEVENT_TO_ONGOING:I = 0x1

.field static sAccelerateInterpolator:Landroid/view/animation/Interpolator;

.field static sDecelerateInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private eventToWhere:I

.field private latestItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

.field mBar:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

.field mBrightness:Lcom/android/systemui/statusbar/policy/BrightnessController;

.field mChoreo:Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;

.field mClearButton:Landroid/view/View;

.field private mClearButtonListener:Landroid/view/View$OnClickListener;

.field private mClock:Landroid/view/View;

.field mContentArea:Landroid/graphics/Rect;

.field mContentFrame:Landroid/view/ViewGroup;

.field mContentFrameMissingTranslation:F

.field mContentParent:Landroid/view/ViewGroup;

.field public mContext:Landroid/content/Context;

.field private mExpandHelper:Lcom/android/systemui/ExpandHelper;

.field mHasClearableNotifications:Z

.field mLinkToSettings:Landroid/view/View;

.field mNetworkText:Landroid/widget/TextView;

.field mNotificationButton:Landroid/view/View;

.field mNotificationCount:I

.field private mNotificationExpandHelper:Lcom/android/systemui/ExpandHelper;

.field mNotificationScroller:Landroid/view/View;

.field private mOngoingExpandHelper:Lcom/android/systemui/ExpandHelper;

.field private mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field mQuickSettingScroller:Landroid/view/View;

.field mQuickSettingView:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

.field mSettingsButton:Landroid/view/View;

.field mSettingsView:Landroid/view/View;

.field mShowing:Z

.field mTitleArea:Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;

.field private notificationItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

.field private onGoingItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->sAccelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 92
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->sDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 103
    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->QUICK_SETTINGS_START_OFFSET:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 124
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mHasClearableNotifications:Z

    .line 80
    iput v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNotificationCount:I

    .line 86
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentArea:Landroid/graphics/Rect;

    .line 110
    new-instance v0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;-><init>(Lcom/android/systemui/statusbar/tablet/NotificationPanel;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mChoreo:Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;

    .line 224
    new-instance v0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel$2;-><init>(Lcom/android/systemui/statusbar/tablet/NotificationPanel;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mClearButtonListener:Landroid/view/View$OnClickListener;

    .line 265
    new-instance v0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel$3;-><init>(Lcom/android/systemui/statusbar/tablet/NotificationPanel;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 125
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContext:Landroid/content/Context;

    .line 126
    return-void
.end method


# virtual methods
.method addSettingsView()V
    .locals 4

    .prologue
    .line 464
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 465
    .local v0, infl:Landroid/view/LayoutInflater;
    const v1, 0x7f03002f

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentFrame:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsView:Landroid/view/View;

    .line 466
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 467
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentFrame:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 468
    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 317
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 318
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 319
    .local v1, y:I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_0

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 320
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 322
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 327
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 328
    .local v0, keyCode:I
    packed-switch v0, :pswitch_data_0

    .line 343
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :cond_1
    :goto_1
    return v1

    .line 331
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 332
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mBar:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->animateCollapse()V

    goto :goto_1

    .line 338
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 339
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mBar:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->animateCollapse()V

    goto :goto_0

    .line 328
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getClearButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mClearButton:Landroid/view/View;

    return-object v0
.end method

.method public isInContentArea(II)Z
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentArea:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentFrame:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentFrame:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 446
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentArea:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentFrame:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentFrame:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 448
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentArea:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentFrame:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentFrame:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 449
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentArea:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentFrame:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentFrame:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 451
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentArea:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 452
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentArea:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 285
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mShowing:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    const/16 v5, 0x50

    .line 194
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 195
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 198
    .local v1, minHeight:I
    sget-boolean v2, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v2, :cond_0

    .line 199
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 206
    .local v0, maxHeight:I
    sget-boolean v2, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v2, :cond_1

    .line 207
    const v2, 0x7f0d00f2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    iput-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->onGoingItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    .line 208
    const v2, 0x7f0d00f5

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    iput-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->notificationItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    .line 209
    new-instance v2, Lcom/android/systemui/ExpandHelper;

    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->onGoingItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-direct {v2, v3, v4, v1, v0}, Lcom/android/systemui/ExpandHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/ExpandHelper$Callback;II)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mOngoingExpandHelper:Lcom/android/systemui/ExpandHelper;

    .line 210
    new-instance v2, Lcom/android/systemui/ExpandHelper;

    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->notificationItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-direct {v2, v3, v4, v1, v0}, Lcom/android/systemui/ExpandHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/ExpandHelper$Callback;II)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNotificationExpandHelper:Lcom/android/systemui/ExpandHelper;

    .line 211
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mOngoingExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v2, p0}, Lcom/android/systemui/ExpandHelper;->setEventSource(Landroid/view/View;)V

    .line 212
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNotificationExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v2, p0}, Lcom/android/systemui/ExpandHelper;->setEventSource(Landroid/view/View;)V

    .line 213
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mOngoingExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v2, v5}, Lcom/android/systemui/ExpandHelper;->setGravity(I)V

    .line 214
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNotificationExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v2, v5}, Lcom/android/systemui/ExpandHelper;->setGravity(I)V

    .line 222
    :goto_0
    return-void

    .line 216
    :cond_1
    const v2, 0x7f0d0076

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    iput-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->latestItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    .line 217
    new-instance v2, Lcom/android/systemui/ExpandHelper;

    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->latestItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-direct {v2, v3, v4, v1, v0}, Lcom/android/systemui/ExpandHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/ExpandHelper$Callback;II)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    .line 218
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v2, p0}, Lcom/android/systemui/ExpandHelper;->setEventSource(Landroid/view/View;)V

    .line 219
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v2, v5}, Lcom/android/systemui/ExpandHelper;->setGravity(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 366
    sget-boolean v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mTitleArea:Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;

    if-ne p1, v0, :cond_1

    .line 367
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->swapPanels()V

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    sget-boolean v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mLinkToSettings:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 371
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v2, 0x10008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 376
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mBar:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->animateCollapse()V

    goto :goto_0

    .line 372
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onFinishInflate()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 134
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 136
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->setWillNotDraw(Z)V

    .line 138
    const v3, 0x7f0d00ac

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentParent:Landroid/view/ViewGroup;

    .line 139
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->bringToFront()V

    .line 140
    const v3, 0x7f0d00b0

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mTitleArea:Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;

    .line 141
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mTitleArea:Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;

    invoke-virtual {v3, p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;->setPanel(Lcom/android/systemui/statusbar/tablet/NotificationPanel;)V

    .line 145
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09000e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 150
    .local v2, useStatusBarWorldClock:Z
    :goto_0
    if-eqz v2, :cond_0

    .line 151
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mTitleArea:Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;

    const v4, 0x7f0d0047

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mClock:Landroid/view/View;

    .line 152
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mClock:Landroid/view/View;

    new-instance v4, Lcom/android/systemui/statusbar/tablet/NotificationPanel$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel$1;-><init>(Lcom/android/systemui/statusbar/tablet/NotificationPanel;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    :cond_0
    const v3, 0x7f0d0053

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsButton:Landroid/view/View;

    .line 162
    const v3, 0x7f0d00b7

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNotificationButton:Landroid/view/View;

    .line 164
    const v3, 0x7f0d00af

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNotificationScroller:Landroid/view/View;

    .line 165
    const v3, 0x7f0d00ae

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentFrame:Landroid/view/ViewGroup;

    .line 166
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentFrameMissingTranslation:F

    .line 169
    const v3, 0x7f0d0054

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mClearButton:Landroid/view/View;

    .line 170
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mClearButton:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mClearButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mShowing:Z

    .line 174
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 176
    .local v0, context:Landroid/content/Context;
    sget-boolean v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v3, :cond_1

    .line 177
    new-instance v4, Lcom/android/systemui/statusbar/policy/BrightnessController;

    const v3, 0x7f0d00c9

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/ToggleSlider;

    invoke-direct {v4, v0, v3}, Lcom/android/systemui/statusbar/policy/BrightnessController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ToggleSlider;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mBrightness:Lcom/android/systemui/statusbar/policy/BrightnessController;

    .line 179
    const v3, 0x7f0d00e9

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mQuickSettingScroller:Landroid/view/View;

    .line 183
    const v3, 0x7f0d00ea

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mQuickSettingView:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    .line 184
    const v3, 0x7f0d00cd

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mLinkToSettings:Landroid/view/View;

    .line 185
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mLinkToSettings:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    const v3, 0x7f0d00aa

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNetworkText:Landroid/widget/TextView;

    .line 190
    :cond_1
    return-void

    .line 147
    .end local v0           #context:Landroid/content/Context;
    .end local v2           #useStatusBarWorldClock:Z
    :catch_0
    move-exception v1

    .line 148
    .local v1, ex:Landroid/content/res/Resources$NotFoundException;
    const/4 v2, 0x0

    .restart local v2       #useStatusBarWorldClock:Z
    goto/16 :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 607
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 608
    .local v0, cancellation:Landroid/view/MotionEvent;
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 611
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v4, :cond_1

    .line 613
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mBar:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->isUnsecureKeyguardLocked()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 614
    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mBar:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->pokeWakelock()V

    .line 620
    :cond_1
    sget-boolean v5, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v5, :cond_6

    .line 621
    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mOngoingExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v5, p1}, Lcom/android/systemui/ExpandHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNotificationExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v5, p1}, Lcom/android/systemui/ExpandHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    move v1, v3

    .line 624
    .local v1, intercept:Z
    :cond_3
    if-eqz v1, :cond_4

    .line 625
    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mOngoingExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v5, p1}, Lcom/android/systemui/ExpandHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_5

    :goto_0
    iput v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->eventToWhere:I

    .line 628
    iget v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->eventToWhere:I

    packed-switch v3, :pswitch_data_0

    :cond_4
    :goto_1
    move v2, v1

    .line 643
    .end local v1           #intercept:Z
    .local v2, intercept:I
    :goto_2
    return v2

    .end local v2           #intercept:I
    .restart local v1       #intercept:Z
    :cond_5
    move v3, v4

    .line 625
    goto :goto_0

    .line 630
    :pswitch_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->onGoingItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 633
    :pswitch_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->notificationItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 639
    .end local v1           #intercept:Z
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v4, p1}, Lcom/android/systemui/ExpandHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    move v1, v3

    .line 640
    .restart local v1       #intercept:Z
    :cond_8
    if-eqz v1, :cond_9

    .line 641
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->latestItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_9
    move v2, v1

    .line 643
    .restart local v2       #intercept:I
    goto :goto_2

    .line 628
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 650
    const/4 v0, 0x0

    .line 652
    .local v0, handled:Z
    sget-boolean v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v3, :cond_4

    .line 653
    iget v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->eventToWhere:I

    packed-switch v3, :pswitch_data_0

    .line 668
    :goto_0
    return v0

    .line 655
    :pswitch_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mOngoingExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v3, p1}, Lcom/android/systemui/ExpandHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v0, v2

    .line 657
    :goto_1
    goto :goto_0

    :cond_1
    move v0, v1

    .line 655
    goto :goto_1

    .line 659
    :pswitch_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNotificationExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v3, p1}, Lcom/android/systemui/ExpandHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v0, v2

    :goto_2
    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2

    .line 664
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v3, p1}, Lcom/android/systemui/ExpandHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    move v0, v2

    :goto_3
    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_3

    .line 653
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 3
    .parameter "v"
    .parameter "vis"

    .prologue
    const/4 v2, 0x0

    .line 290
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 292
    if-eqz p2, :cond_1

    .line 293
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->removeSettingsView()V

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNotificationScroller:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNotificationScroller:Landroid/view/View;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 296
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNotificationScroller:Landroid/view/View;

    invoke-virtual {v0, v2, v2}, Landroid/view/View;->scrollTo(II)V

    .line 297
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->updatePanelModeButtons()V

    .line 301
    :cond_1
    sget-boolean v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v0, :cond_2

    .line 302
    if-nez p2, :cond_3

    .line 303
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNetworkText:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 310
    :cond_2
    :goto_0
    return-void

    .line 305
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNetworkText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 306
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mQuickSettingScroller:Landroid/view/View;

    invoke-virtual {v0, v2, v2}, Landroid/view/View;->scrollTo(II)V

    goto :goto_0
.end method

.method removeSettingsView()V
    .locals 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentFrame:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 458
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsView:Landroid/view/View;

    .line 460
    :cond_0
    return-void
.end method

.method public setBar(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V
    .locals 0
    .parameter "b"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mBar:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    .line 130
    return-void
.end method

.method public setClearable(Z)V
    .locals 0
    .parameter "clearable"

    .prologue
    .line 433
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mHasClearableNotifications:Z

    .line 434
    return-void
.end method

.method public setContentFrameVisible(ZZ)V
    .locals 0
    .parameter "showing"
    .parameter "animate"

    .prologue
    .line 385
    return-void
.end method

.method public setNotificationCount(I)V
    .locals 0
    .parameter "n"

    .prologue
    .line 381
    iput p1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNotificationCount:I

    .line 382
    return-void
.end method

.method public setQuickSettingsStartOffset()V
    .locals 3

    .prologue
    .line 598
    sget v0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->QUICK_SETTINGS_START_OFFSET:I

    if-nez v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mQuickSettingView:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mQuickSettingView:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    sput v0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->QUICK_SETTINGS_START_OFFSET:I

    .line 602
    :cond_0
    return-void
.end method

.method public setSettingsEnabled(Z)V
    .locals 2
    .parameter "settingsEnabled"

    .prologue
    .line 672
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 674
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsButton:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 676
    :cond_0
    return-void

    .line 674
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public show(ZZ)V
    .locals 4
    .parameter "show"
    .parameter "animate"

    .prologue
    const/4 v1, 0x0

    .line 235
    if-eqz p2, :cond_3

    .line 236
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mShowing:Z

    if-eq v2, p1, :cond_0

    .line 237
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mShowing:Z

    .line 238
    if-eqz p1, :cond_2

    .line 239
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->setVisibility(I)V

    .line 242
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentParent:Landroid/view/ViewGroup;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 243
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 254
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mBar:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->getMiniConPile()Landroid/view/ViewGroup;

    move-result-object v0

    .line 255
    .local v0, miniConPile:Landroid/view/ViewGroup;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 256
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setSelected(Z)V

    .line 259
    :cond_1
    return-void

    .line 245
    .end local v0           #miniConPile:Landroid/view/ViewGroup;
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mChoreo:Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->startAnimation(Z)V

    goto :goto_0

    .line 249
    :cond_3
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mShowing:Z

    .line 250
    if-eqz p1, :cond_4

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->setVisibility(I)V

    goto :goto_0

    :cond_4
    const/16 v1, 0x8

    goto :goto_1
.end method

.method public swapPanels()V
    .locals 6

    .prologue
    .line 389
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsView:Landroid/view/View;

    if-nez v3, :cond_0

    .line 390
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->addSettingsView()V

    .line 391
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsView:Landroid/view/View;

    .line 392
    .local v2, toShow:Landroid/view/View;
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNotificationScroller:Landroid/view/View;

    .line 397
    .local v1, toHide:Landroid/view/View;
    :goto_0
    const-string v3, "alpha"

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 399
    .local v0, a:Landroid/animation/Animator;
    new-instance v3, Lcom/android/systemui/statusbar/tablet/NotificationPanel$4;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/systemui/statusbar/tablet/NotificationPanel$4;-><init>(Lcom/android/systemui/statusbar/tablet/NotificationPanel;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 419
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 420
    return-void

    .line 394
    .end local v0           #a:Landroid/animation/Animator;
    .end local v1           #toHide:Landroid/view/View;
    .end local v2           #toShow:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNotificationScroller:Landroid/view/View;

    .line 395
    .restart local v2       #toShow:Landroid/view/View;
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsView:Landroid/view/View;

    .restart local v1       #toHide:Landroid/view/View;
    goto :goto_0

    .line 397
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public updateClearButton()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 423
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mBar:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    if-eqz v2, :cond_0

    .line 424
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mHasClearableNotifications:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNotificationScroller:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 428
    .local v0, showX:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->getClearButton()Landroid/view/View;

    move-result-object v2

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 430
    .end local v0           #showX:Z
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 424
    goto :goto_0

    .line 428
    .restart local v0       #showX:Z
    :cond_2
    const/4 v1, 0x4

    goto :goto_1
.end method

.method public updatePanelModeButtons()V
    .locals 5

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 437
    sget-boolean v2, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-nez v2, :cond_0

    .line 438
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsView:Landroid/view/View;

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 439
    .local v0, settingsVisible:Z
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsButton:Landroid/view/View;

    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    :goto_1
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 440
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNotificationButton:Landroid/view/View;

    if-eqz v0, :cond_3

    :goto_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 442
    .end local v0           #settingsVisible:Z
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 438
    goto :goto_0

    .restart local v0       #settingsVisible:Z
    :cond_2
    move v2, v3

    .line 439
    goto :goto_1

    :cond_3
    move v1, v3

    .line 440
    goto :goto_2
.end method
