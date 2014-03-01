.class public abstract Lcom/android/systemui/recent/smartswitcher/BaseContainer;
.super Landroid/widget/RelativeLayout;
.source "BaseContainer.java"

# interfaces
.implements Lcom/android/systemui/SwipeHelper$Callback;
.implements Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$RecentsScrollView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRestoreRotationRunnable;,
        Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRemoverRunnable;
    }
.end annotation


# static fields
.field protected static BOTTOM_STACK_BORDER:F = 0.0f

.field protected static CLOSE_ANIMATION:I = 0x0

.field private static final DEBUG:Z = false

.field protected static MAX_STACK_APPS:I = 0x0

.field static final MAX_W:I = 0x2d0

.field static final MIN_W:I = 0x258

.field protected static ROTATE_SPEED:F = 0.0f

.field protected static SHADOW_ANIMATION_DURATION:I = 0x0

.field protected static STACK_ANIMATION_DURATION:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "MIK"

.field protected static TOP_STACK_START_POSITION:I = 0x0

.field protected static TOP_STACK_Z_DIFF:F = 0.0f

.field static final TYPE_SCROLL:I = 0x1

.field static final TYPE_SLIDE:I

.field protected static Z_DIFF:F

.field protected static mBeginRotateDownDistance:F

.field protected static mBeginRotateUpDistance:F

.field protected static mBottomStackVisiblePart:F

.field protected static mMaxRotateAngle:I

.field protected static mTopStackDistance:F


# instance fields
.field protected BOTTOM_STACK_RELEASE_DISTANCE:F

.field protected TOP_STACK_RELEASE_DISTANCE:F

.field private Z_ANIMATION_DURATION:J

.field animators:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field bottomStackIndex:I

.field doMove:Z

.field dx:F

.field dy:F

.field gd:Landroid/view/GestureDetector;

.field mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private mAdapter:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$TaskDescriptionAdapter;

.field private mCallback:Lcom/android/systemui/recent/RecentsCallback;

.field mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field protected mFingerOnDisplay:Z

.field protected mLastScrollPosition:I

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mNumItemsInOneScreenful:I

.field private mPagingTouchSlop:I

.field private mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

.field private mRecycledViews:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mScrollInterpolator:Landroid/view/animation/Interpolator;

.field protected mScrolling:Z

.field mShadowInterpolator:Landroid/view/animation/Interpolator;

.field protected mSwipe:Z

.field protected mSwipeHelper:Lcom/android/systemui/SwipeHelper;

.field mover:Ljava/lang/Runnable;

.field rotated_angle:F

.field rotation_restorer:Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRestoreRotationRunnable;

.field scroll_type:I

.field scroller:Landroid/widget/Scroller;

.field should_clean_rotation:Z

.field should_send_cancel:Z

.field protected target:Landroid/view/View;

.field topStackIndex:I

.field views:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xc8

    .line 48
    const v0, 0x3e99999a

    sput v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->ROTATE_SPEED:F

    .line 49
    sput v1, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->STACK_ANIMATION_DURATION:I

    .line 50
    const/16 v0, -0x11

    sput v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->TOP_STACK_START_POSITION:I

    .line 51
    sput v1, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->CLOSE_ANIMATION:I

    .line 52
    const/16 v0, 0xa

    sput v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->MAX_STACK_APPS:I

    .line 53
    const v0, 0x3ca3d70a

    sput v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->Z_DIFF:F

    .line 54
    const v0, 0x3ccccccd

    sput v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->TOP_STACK_Z_DIFF:F

    .line 55
    const/16 v0, 0x12c

    sput v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->SHADOW_ANIMATION_DURATION:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 114
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, -0x1

    const/high16 v4, 0x3fc0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 126
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->Z_ANIMATION_DURATION:J

    .line 57
    const/high16 v0, 0x435c

    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->TOP_STACK_RELEASE_DISTANCE:F

    .line 58
    const v0, 0x43fd8000

    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->BOTTOM_STACK_RELEASE_DISTANCE:F

    .line 78
    iput v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->dx:F

    .line 79
    iput v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->dy:F

    .line 80
    iput-boolean v3, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->doMove:Z

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    .line 87
    iput v5, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    .line 88
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->target:Landroid/view/View;

    .line 90
    iput v5, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->scroll_type:I

    .line 93
    iput-boolean v3, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->should_send_cancel:Z

    .line 94
    iput-boolean v3, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->should_clean_rotation:Z

    .line 95
    iput v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->rotated_angle:F

    .line 96
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v4}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 98
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->animators:Ljava/util/HashMap;

    .line 102
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    .line 103
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x4040

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mShadowInterpolator:Landroid/view/animation/Interpolator;

    .line 370
    new-instance v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRestoreRotationRunnable;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRestoreRotationRunnable;-><init>(Lcom/android/systemui/recent/smartswitcher/BaseContainer;)V

    iput-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->rotation_restorer:Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRestoreRotationRunnable;

    .line 608
    new-instance v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer$3;-><init>(Lcom/android/systemui/recent/smartswitcher/BaseContainer;)V

    iput-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mover:Ljava/lang/Runnable;

    .line 128
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0098

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mBottomStackVisiblePart:F

    .line 130
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mMaxRotateAngle:I

    .line 131
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c009d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mTopStackDistance:F

    .line 133
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c009e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mBeginRotateDownDistance:F

    .line 135
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c009f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mBeginRotateUpDistance:F

    .line 137
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mPagingTouchSlop:I

    .line 140
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recent/smartswitcher/BaseContainer$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer$1;-><init>(Lcom/android/systemui/recent/smartswitcher/BaseContainer;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->gd:Landroid/view/GestureDetector;

    .line 203
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->gd:Landroid/view/GestureDetector;

    invoke-virtual {v0, v3}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 204
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->scroller:Landroid/widget/Scroller;

    .line 206
    const/4 v0, 0x1

    invoke-static {p1, p2, p0, v0}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->create(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;Z)Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    .line 208
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mRecycledViews:Ljava/util/HashSet;

    .line 210
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recent/smartswitcher/BaseContainer;)Lcom/android/systemui/recent/RecentsCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/recent/smartswitcher/BaseContainer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mPagingTouchSlop:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/recent/smartswitcher/BaseContainer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->update()V

    return-void
.end method

.method private addToRecycledViews(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mRecycledViews:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 741
    return-void
.end method

.method private setOverScrollEffectPadding(II)V
    .locals 0
    .parameter "leftPadding"
    .parameter "i"

    .prologue
    .line 1048
    return-void
.end method

.method private shouldReleaseFromBottomStack()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 564
    iget v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    iget-object v3, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v0, v3, :cond_0

    move v0, v1

    .line 574
    :goto_0
    return v0

    .line 567
    :cond_0
    iget v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v0

    iget v3, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->BOTTOM_STACK_RELEASE_DISTANCE:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    move v0, v2

    .line 569
    goto :goto_0

    .line 571
    :cond_1
    iget v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    if-nez v0, :cond_2

    move v0, v2

    .line 572
    goto :goto_0

    :cond_2
    move v0, v1

    .line 574
    goto :goto_0
.end method

.method private update()V
    .locals 21

    .prologue
    .line 744
    const-string v19, "MIK"

    const-string v20, "update()"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getChildCount()I

    move-result v19

    move/from16 v0, v19

    if-ge v8, v0, :cond_0

    .line 746
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 747
    .local v17, v:Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->addToRecycledViews(Landroid/view/View;)V

    .line 748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mAdapter:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$TaskDescriptionAdapter;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$TaskDescriptionAdapter;->recycleView(Landroid/view/View;)V

    .line 745
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 750
    .end local v17           #v:Landroid/view/View;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v16

    .line 751
    .local v16, transitioner:Landroid/animation/LayoutTransition;
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 753
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->removeAllViews()V

    .line 755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 757
    .local v13, pm:Landroid/content/pm/PackageManager;
    new-instance v19, Landroid/content/Intent;

    const-string v20, "android.intent.action.MAIN"

    invoke-direct/range {v19 .. v20}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v20, "android.intent.category.HOME"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v13, v1}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    .line 763
    .local v7, homeInfo:Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mRecycledViews:Ljava/util/HashSet;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 764
    .local v14, recycledViews:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/view/View;>;"
    const/4 v8, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mAdapter:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$TaskDescriptionAdapter;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$TaskDescriptionAdapter;->getCount()I

    move-result v19

    move/from16 v0, v19

    if-ge v8, v0, :cond_6

    .line 765
    const/4 v12, 0x0

    .line 766
    .local v12, old:Landroid/view/View;
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 767
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .end local v12           #old:Landroid/view/View;
    check-cast v12, Landroid/view/View;

    .line 768
    .restart local v12       #old:Landroid/view/View;
    invoke-interface {v14}, Ljava/util/Iterator;->remove()V

    .line 769
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/view/View;->setVisibility(I)V

    .line 771
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mAdapter:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$TaskDescriptionAdapter;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v8, v12, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$TaskDescriptionAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    .line 773
    .local v18, view:Landroid/view/View;
    new-instance v11, Lcom/android/systemui/recent/smartswitcher/BaseContainer$4;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer$4;-><init>(Lcom/android/systemui/recent/smartswitcher/BaseContainer;)V

    .line 783
    .local v11, noOpListener:Landroid/view/View$OnTouchListener;
    new-instance v9, Lcom/android/systemui/recent/smartswitcher/BaseContainer$5;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v9, v0, v1}, Lcom/android/systemui/recent/smartswitcher/BaseContainer$5;-><init>(Lcom/android/systemui/recent/smartswitcher/BaseContainer;Landroid/view/View;)V

    .line 792
    .local v9, launchAppListener:Landroid/view/View$OnClickListener;
    const v19, 0x7f0d0084

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 795
    .local v4, big:Landroid/widget/RelativeLayout;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 796
    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 797
    invoke-virtual {v4, v11}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 801
    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 803
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;

    .line 805
    .local v6, holder:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;
    iget-object v15, v6, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    .line 806
    .local v15, thumbnailView:Landroid/view/View;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 810
    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setFocusable(Z)V

    .line 811
    new-instance v19, Lcom/android/systemui/recent/smartswitcher/BaseContainer$6;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/recent/smartswitcher/BaseContainer$6;-><init>(Lcom/android/systemui/recent/smartswitcher/BaseContainer;)V

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 821
    new-instance v19, Lcom/android/systemui/recent/smartswitcher/BaseContainer$7;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/recent/smartswitcher/BaseContainer$7;-><init>(Lcom/android/systemui/recent/smartswitcher/BaseContainer;)V

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 837
    const v19, 0x7f0d0058

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 838
    .local v3, appTitle:Landroid/view/View;
    if-eqz v3, :cond_2

    .line 839
    const-string v19, " "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 841
    :cond_2
    const v19, 0x7f0d0085

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 842
    .local v5, deleteView:Landroid/view/View;
    if-nez v8, :cond_4

    move-object/from16 v19, v18

    .line 843
    check-cast v19, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 844
    const v19, 0x7f020005

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 845
    iget-object v0, v6, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout$LayoutParams;

    .line 846
    .local v10, lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v19, 0xa

    move/from16 v0, v19

    iput v0, v10, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 847
    iget-object v0, v6, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 848
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-super {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 865
    .end local v10           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    .line 866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->addViewCallback(Landroid/view/View;)V

    .line 764
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 849
    :cond_4
    iget-object v0, v7, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    iget-object v0, v6, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;->taskDescription:Lcom/android/systemui/recent/TaskDescription;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/recent/TaskDescription;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    move-object/from16 v19, v18

    .line 850
    check-cast v19, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 851
    const v19, 0x7f020005

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 852
    iget-object v0, v6, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout$LayoutParams;

    .line 853
    .restart local v10       #lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v19, 0xa

    move/from16 v0, v19

    iput v0, v10, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 854
    iget-object v0, v6, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 855
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 857
    .end local v10           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_5
    new-instance v19, Lcom/android/systemui/recent/smartswitcher/BaseContainer$8;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/smartswitcher/BaseContainer$8;-><init>(Lcom/android/systemui/recent/smartswitcher/BaseContainer;Landroid/view/View;)V

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 862
    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setAlpha(F)V

    .line 863
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 869
    .end local v3           #appTitle:Landroid/view/View;
    .end local v4           #big:Landroid/widget/RelativeLayout;
    .end local v5           #deleteView:Landroid/view/View;
    .end local v6           #holder:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;
    .end local v9           #launchAppListener:Landroid/view/View$OnClickListener;
    .end local v11           #noOpListener:Landroid/view/View$OnTouchListener;
    .end local v12           #old:Landroid/view/View;
    .end local v15           #thumbnailView:Landroid/view/View;
    .end local v18           #view:Landroid/view/View;
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 870
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    iget v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    .line 121
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    .line 122
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 123
    return-void
.end method

.method public canChildBeDismissed(Landroid/view/View;)Z
    .locals 8
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 906
    iget-object v6, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 907
    .local v2, index:I
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;

    .line 908
    .local v0, h:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;
    iget-object v4, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;->taskDescription:Lcom/android/systemui/recent/TaskDescription;

    .line 909
    .local v4, td:Lcom/android/systemui/recent/TaskDescription;
    iget-object v6, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 911
    .local v3, pm:Landroid/content/pm/PackageManager;
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "android.intent.category.HOME"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6, v3, v5}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 913
    .local v1, homeInfo:Landroid/content/pm/ActivityInfo;
    iget v6, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    if-le v2, v6, :cond_1

    iget v6, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    if-ge v2, v6, :cond_1

    if-eqz v1, :cond_0

    iget-object v6, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/systemui/recent/TaskDescription;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    const/4 v5, 0x1

    :cond_1
    return v5
.end method

.method protected createBottomStackInAnimation()Landroid/view/animation/Animation;
    .locals 2

    .prologue
    const/high16 v1, 0x3f80

    .line 701
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    return-object v0
.end method

.method protected abstract createBottomStackInAnimationInternal(Landroid/view/View;)Landroid/view/animation/Animation;
.end method

.method protected createBottomStackOutAnimation()Landroid/view/animation/Animation;
    .locals 2

    .prologue
    const/high16 v1, 0x3f80

    .line 716
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    return-object v0
.end method

.method protected createDisappearAnimation(Landroid/view/View;)Landroid/view/animation/Animation;
    .locals 2
    .parameter "v"

    .prologue
    const/high16 v1, 0x3f80

    .line 723
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    return-object v0
.end method

.method protected createTopStackInAnimation()Landroid/view/animation/Animation;
    .locals 2

    .prologue
    const/high16 v1, 0x3f80

    .line 694
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    return-object v0
.end method

.method protected createTopStackOutAnimation()Landroid/view/animation/Animation;
    .locals 2

    .prologue
    const/high16 v1, 0x3f80

    .line 709
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    return-object v0
.end method

.method customDoScroll(FIZ)Z
    .locals 14
    .parameter "d"
    .parameter "top"
    .parameter "animate"

    .prologue
    .line 270
    iget v11, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->rotated_angle:F

    const/4 v12, 0x0

    cmpg-float v11, v11, v12

    if-gez v11, :cond_3

    iget-boolean v11, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->should_clean_rotation:Z

    if-eqz v11, :cond_3

    .line 271
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->should_clean_rotation:Z

    .line 272
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->restoreRotation()V

    .line 311
    :cond_0
    :goto_0
    iget v11, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    iget-object v12, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ne v11, v12, :cond_1

    iget-object v11, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_1

    .line 312
    iget-object v11, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 313
    .local v9, v:Landroid/view/View;
    invoke-virtual {p0, v9}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v11

    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getScrollSize()I

    move-result v12

    int-to-float v12, v12

    div-float v2, v11, v12

    .line 314
    .local v2, rpos:F
    const/high16 v11, 0x3f80

    const/high16 v12, 0x4020

    iget-object v13, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v13, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v13

    mul-float/2addr v12, v13

    add-float v0, v11, v12

    .line 315
    .local v0, g:F
    invoke-virtual {p0, v9}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v11

    mul-float v12, p1, v0

    add-float/2addr v11, v12

    sget v12, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mBeginRotateUpDistance:F

    const/high16 v13, 0x3f80

    sub-float/2addr v12, v13

    cmpg-float v11, v11, v12

    if-gez v11, :cond_1

    .line 316
    sget v11, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mBeginRotateUpDistance:F

    const/high16 v12, 0x3f80

    sub-float/2addr v11, v12

    invoke-virtual {p0, v9}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v12

    sub-float/2addr v11, v12

    div-float p1, v11, v0

    .line 320
    .end local v0           #g:F
    .end local v2           #rpos:F
    .end local v9           #v:Landroid/view/View;
    :cond_1
    add-int/lit8 v1, p2, 0x1

    .local v1, i:I
    :goto_1
    iget v11, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    if-ge v1, v11, :cond_8

    .line 321
    iget-object v11, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v1, v11, :cond_2

    .line 322
    iget-object v11, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 323
    .restart local v9       #v:Landroid/view/View;
    invoke-virtual {p0, v9}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v11

    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getScrollSize()I

    move-result v12

    int-to-float v12, v12

    div-float v2, v11, v12

    .line 324
    .restart local v2       #rpos:F
    const/high16 v11, 0x3f80

    const/high16 v12, 0x4020

    iget-object v13, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v13, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v13

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    mul-float/2addr v11, p1

    invoke-virtual {p0, v9, v11}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->setNewPosition(Landroid/view/View;F)Z

    .line 329
    const v11, 0x7f0d0083

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const/high16 v12, 0x3f80

    iget-object v13, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mShadowInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v13, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v13

    sub-float/2addr v12, v13

    const/high16 v13, 0x3fc0

    div-float/2addr v12, v13

    invoke-virtual {v11, v12}, Landroid/view/View;->setAlpha(F)V

    .line 320
    .end local v2           #rpos:F
    .end local v9           #v:Landroid/view/View;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 273
    .end local v1           #i:I
    :cond_3
    iget v11, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    iget-object v12, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ne v11, v12, :cond_4

    iget-object v11, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_4

    iget-object v11, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    invoke-virtual {p0, v11}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v11

    sget v12, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mBeginRotateUpDistance:F

    cmpg-float v11, v11, v12

    if-gez v11, :cond_4

    .line 277
    const/4 v11, 0x0

    .line 334
    :goto_2
    return v11

    .line 278
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->shouldReleaseFromBottomStack()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 281
    iget-object v11, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    iget v12, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 282
    .restart local v9       #v:Landroid/view/View;
    invoke-virtual {p0, v9}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->optShow(Landroid/view/View;)V

    .line 283
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->createBottomStackOutAnimation()Landroid/view/animation/Animation;

    move-result-object v7

    .line 284
    .local v7, set:Landroid/view/animation/Animation;
    iget v11, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    .line 285
    add-int/lit8 v1, p2, 0x1

    .restart local v1       #i:I
    :goto_3
    iget v11, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    if-ge v1, v11, :cond_6

    .line 286
    iget-object v11, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 287
    .local v10, v1:Landroid/view/View;
    const/high16 v11, 0x3f80

    iget v12, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    sub-int/2addr v12, v1

    add-int/lit8 v12, v12, -0x1

    int-to-float v12, v12

    sget v13, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->Z_DIFF:F

    mul-float/2addr v12, v13

    sub-float v3, v11, v12

    .line 289
    .local v3, scaleCurrent:F
    const/high16 v11, 0x3f80

    iget v12, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    sub-int/2addr v12, v1

    int-to-float v12, v12

    sget v13, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->Z_DIFF:F

    mul-float/2addr v12, v13

    sub-float v4, v11, v12

    .line 290
    .local v4, scaleNew:F
    if-eqz p3, :cond_5

    .line 291
    const-string v11, "scaleX"

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    aput v3, v12, v13

    const/4 v13, 0x1

    aput v4, v12, v13

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 293
    .local v5, scalex_anim:Landroid/animation/ObjectAnimator;
    const-string v11, "scaleY"

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    aput v3, v12, v13

    const/4 v13, 0x1

    aput v4, v12, v13

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 295
    .local v6, scaley_anim:Landroid/animation/ObjectAnimator;
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 296
    .local v8, set1:Landroid/animation/AnimatorSet;
    const/4 v11, 0x2

    new-array v11, v11, [Landroid/animation/Animator;

    const/4 v12, 0x0

    aput-object v5, v11, v12

    const/4 v12, 0x1

    aput-object v6, v11, v12

    invoke-virtual {v8, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 297
    iget-wide v11, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->Z_ANIMATION_DURATION:J

    invoke-virtual {v8, v11, v12}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 298
    invoke-virtual {p0, v10}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->stopAnimators(Landroid/view/View;)V

    .line 299
    iget-object v11, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->animators:Ljava/util/HashMap;

    invoke-virtual {v11, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    .line 285
    .end local v5           #scalex_anim:Landroid/animation/ObjectAnimator;
    .end local v6           #scaley_anim:Landroid/animation/ObjectAnimator;
    .end local v8           #set1:Landroid/animation/AnimatorSet;
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 302
    :cond_5
    invoke-virtual {v10, v4}, Landroid/view/View;->setScaleX(F)V

    .line 303
    invoke-virtual {v10, v4}, Landroid/view/View;->setScaleY(F)V

    goto :goto_4

    .line 306
    .end local v3           #scaleCurrent:F
    .end local v4           #scaleNew:F
    .end local v10           #v1:Landroid/view/View;
    :cond_6
    if-nez p3, :cond_7

    .line 307
    const-wide/16 v11, 0x0

    invoke-virtual {v7, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 309
    :cond_7
    invoke-virtual {v9, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 334
    .end local v7           #set:Landroid/view/animation/Animation;
    .end local v9           #v:Landroid/view/View;
    :cond_8
    const/4 v11, 0x1

    goto/16 :goto_2
.end method

.method public dismissChild(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 917
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/SwipeHelper;->dismissChild(Landroid/view/View;F)V

    .line 918
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 634
    const/4 v1, 0x0

    .line 635
    .local v1, res:Z
    iget-boolean v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mScrolling:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mSwipe:Z

    if-nez v2, :cond_4

    .line 636
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1

    .line 637
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 638
    .local v0, ev2:Landroid/view/MotionEvent;
    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 639
    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 640
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 679
    .end local v0           #ev2:Landroid/view/MotionEvent;
    :cond_0
    :goto_0
    return v3

    .line 643
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v2, p1}, Lcom/android/systemui/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 644
    if-eqz v1, :cond_2

    .line 645
    iput-boolean v3, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mSwipe:Z

    .line 647
    :cond_2
    if-nez v1, :cond_0

    .line 648
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->gd:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 649
    if-eqz v1, :cond_3

    .line 650
    iput-boolean v3, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mScrolling:Z

    goto :goto_0

    .line 652
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 656
    :cond_4
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 657
    .restart local v0       #ev2:Landroid/view/MotionEvent;
    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 658
    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 659
    iget-boolean v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mScrolling:Z

    if-eqz v2, :cond_6

    .line 660
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 662
    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_5

    .line 663
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 666
    :cond_5
    :pswitch_1
    iput-boolean v4, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mScrolling:Z

    .line 667
    iput-boolean v4, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mFingerOnDisplay:Z

    .line 668
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->restoreRotation()V

    .line 670
    :pswitch_2
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->gd:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 672
    :cond_6
    iget-boolean v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mSwipe:Z

    if-eqz v2, :cond_0

    .line 673
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_7

    .line 674
    iput-boolean v4, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mSwipe:Z

    .line 676
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v2, p1}, Lcom/android/systemui/SwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 660
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method doScroll(F)Z
    .locals 20
    .parameter "d"

    .prologue
    .line 378
    const/4 v2, 0x0

    .line 380
    .local v2, b:Z
    const/16 v16, 0x0

    cmpl-float v16, p1, v16

    if-lez v16, :cond_9

    .line 381
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->rotated_angle:F

    move/from16 v16, v0

    const/16 v17, 0x0

    cmpl-float v16, v16, v17

    if-lez v16, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->should_clean_rotation:Z

    move/from16 v16, v0

    if-eqz v16, :cond_3

    .line 382
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->should_clean_rotation:Z

    .line 383
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->restoreRotation()V

    .line 419
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    move/from16 v16, v0

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-lez v16, :cond_1

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    .line 421
    .local v13, v:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getScrollSize()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v6, v16, v17

    .line 422
    .local v6, rpos:F
    const/high16 v16, 0x3f80

    const/high16 v17, 0x4020

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v18

    mul-float v17, v17, v18

    add-float v3, v16, v17

    .line 423
    .local v3, g:F
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v16

    mul-float v17, p1, v3

    add-float v16, v16, v17

    sget v17, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mBeginRotateDownDistance:F

    const/high16 v18, 0x3f80

    add-float v17, v17, v18

    cmpl-float v16, v16, v17

    if-lez v16, :cond_1

    .line 424
    sget v16, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mBeginRotateDownDistance:F

    const/high16 v17, 0x3f80

    add-float v16, v16, v17

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v17

    sub-float v16, v16, v17

    div-float p1, v16, v3

    .line 487
    .end local v3           #g:F
    .end local v6           #rpos:F
    .end local v13           #v:Landroid/view/View;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    move/from16 v16, v0

    add-int/lit8 v4, v16, 0x1

    .local v4, i:I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v4, v0, :cond_13

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    .line 489
    .restart local v13       #v:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getScrollSize()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v6, v16, v17

    .line 490
    .restart local v6       #rpos:F
    const/high16 v16, 0x3f80

    const/high16 v17, 0x4020

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v18

    mul-float v17, v17, v18

    add-float v16, v16, v17

    mul-float v16, v16, p1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v13, v1}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->setNewPosition(Landroid/view/View;F)Z

    move-result v5

    .line 492
    .local v5, res:Z
    if-nez v2, :cond_2

    if-eqz v5, :cond_12

    :cond_2
    const/4 v2, 0x1

    .line 493
    :goto_3
    const v16, 0x7f0d0083

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    const/high16 v17, 0x3f80

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mShadowInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v18

    sub-float v17, v17, v18

    const/high16 v18, 0x3fc0

    div-float v17, v17, v18

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setAlpha(F)V

    .line 487
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 384
    .end local v4           #i:I
    .end local v5           #res:Z
    .end local v6           #rpos:F
    .end local v13           #v:Landroid/view/View;
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    move/from16 v16, v0

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-lez v16, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v16

    sget v17, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mBeginRotateDownDistance:F

    cmpl-float v16, v16, v17

    if-lez v16, :cond_7

    .line 388
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->rotated_angle:F

    move/from16 v16, v0

    sget v17, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->ROTATE_SPEED:F

    sub-float v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->rotated_angle:F

    .line 389
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->should_clean_rotation:Z

    .line 390
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mFingerOnDisplay:Z

    move/from16 v16, v0

    if-eqz v16, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->rotated_angle:F

    move/from16 v16, v0

    const/16 v17, 0x0

    cmpg-float v16, v16, v17

    if-gez v16, :cond_4

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->rotation_restorer:Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRestoreRotationRunnable;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 393
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->rotated_angle:F

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    sget v17, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mMaxRotateAngle:I

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpl-float v16, v16, v17

    if-lez v16, :cond_5

    .line 394
    sget v16, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mMaxRotateAngle:I

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->rotated_angle:F

    .line 395
    const/16 v16, 0x0

    .line 550
    :goto_4
    return v16

    .line 397
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    move/from16 v16, v0

    add-int/lit8 v4, v16, 0x1

    .restart local v4       #i:I
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v4, v0, :cond_6

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    .line 401
    .restart local v13       #v:Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->rotated_angle:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v13, v1}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->setRotation(Landroid/view/View;F)V

    .line 397
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 403
    .end local v13           #v:Landroid/view/View;
    :cond_6
    const/16 v16, 0x0

    goto :goto_4

    .line 404
    .end local v4           #i:I
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->shouldReleaseFromTopStack()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    .line 410
    .restart local v13       #v:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->createTopStackOutAnimation()Landroid/view/animation/Animation;

    move-result-object v11

    .line 411
    .local v11, set:Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    .line 412
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    move/from16 v16, v0

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_8

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    .line 414
    .local v15, v2:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->optShow(Landroid/view/View;)V

    .line 416
    .end local v15           #v2:Landroid/view/View;
    :cond_8
    const v16, 0x7f0d0085

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setEnabled(Z)V

    .line 417
    invoke-virtual {v13, v11}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 427
    .end local v11           #set:Landroid/view/animation/Animation;
    .end local v13           #v:Landroid/view/View;
    :cond_9
    const/16 v16, 0x0

    cmpg-float v16, p1, v16

    if-gez v16, :cond_11

    .line 428
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->rotated_angle:F

    move/from16 v16, v0

    const/16 v17, 0x0

    cmpg-float v16, v16, v17

    if-gez v16, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->should_clean_rotation:Z

    move/from16 v16, v0

    if-eqz v16, :cond_b

    .line 429
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->should_clean_rotation:Z

    .line 430
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->restoreRotation()V

    .line 475
    :cond_a
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-lez v16, :cond_1

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    .line 477
    .restart local v13       #v:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getScrollSize()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v6, v16, v17

    .line 478
    .restart local v6       #rpos:F
    const/high16 v16, 0x3f80

    const/high16 v17, 0x4020

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v18

    mul-float v17, v17, v18

    add-float v3, v16, v17

    .line 479
    .restart local v3       #g:F
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v16

    mul-float v17, p1, v3

    add-float v16, v16, v17

    sget v17, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mBeginRotateUpDistance:F

    const/high16 v18, 0x3f80

    sub-float v17, v17, v18

    cmpg-float v16, v16, v17

    if-gez v16, :cond_1

    .line 480
    sget v16, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mBeginRotateUpDistance:F

    const/high16 v17, 0x3f80

    sub-float v16, v16, v17

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v17

    sub-float v16, v16, v17

    div-float p1, v16, v3

    goto/16 :goto_1

    .line 431
    .end local v3           #g:F
    .end local v6           #rpos:F
    .end local v13           #v:Landroid/view/View;
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-lez v16, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v16

    sget v17, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mBeginRotateUpDistance:F

    cmpg-float v16, v16, v17

    if-gez v16, :cond_f

    .line 435
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->rotated_angle:F

    move/from16 v16, v0

    sget v17, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->ROTATE_SPEED:F

    add-float v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->rotated_angle:F

    .line 436
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->should_clean_rotation:Z

    .line 437
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mFingerOnDisplay:Z

    move/from16 v16, v0

    if-eqz v16, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->rotated_angle:F

    move/from16 v16, v0

    const/16 v17, 0x0

    cmpl-float v16, v16, v17

    if-lez v16, :cond_c

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->rotation_restorer:Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRestoreRotationRunnable;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 441
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->rotated_angle:F

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    sget v17, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mMaxRotateAngle:I

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpl-float v16, v16, v17

    if-lez v16, :cond_d

    .line 442
    sget v16, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mMaxRotateAngle:I

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->rotated_angle:F

    .line 443
    const/16 v16, 0x0

    goto/16 :goto_4

    .line 445
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    move/from16 v16, v0

    add-int/lit8 v4, v16, 0x1

    .restart local v4       #i:I
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v4, v0, :cond_e

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    .line 447
    .restart local v13       #v:Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->rotated_angle:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v13, v1}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->setRotation(Landroid/view/View;F)V

    .line 445
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 449
    .end local v13           #v:Landroid/view/View;
    :cond_e
    const/16 v16, 0x0

    goto/16 :goto_4

    .line 450
    .end local v4           #i:I
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->shouldReleaseFromBottomStack()Z

    move-result v16

    if-eqz v16, :cond_a

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    .line 454
    .restart local v13       #v:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->optShow(Landroid/view/View;)V

    .line 455
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->createBottomStackOutAnimation()Landroid/view/animation/Animation;

    move-result-object v11

    .line 456
    .restart local v11       #set:Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    .line 457
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    move/from16 v16, v0

    add-int/lit8 v4, v16, 0x1

    .restart local v4       #i:I
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v4, v0, :cond_10

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    .line 459
    .local v14, v1:Landroid/view/View;
    const/high16 v16, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    move/from16 v17, v0

    sub-int v17, v17, v4

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sget v18, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->Z_DIFF:F

    mul-float v17, v17, v18

    sub-float v7, v16, v17

    .line 461
    .local v7, scaleCurrent:F
    const/high16 v16, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    move/from16 v17, v0

    sub-int v17, v17, v4

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sget v18, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->Z_DIFF:F

    mul-float v17, v17, v18

    sub-float v8, v16, v17

    .line 462
    .local v8, scaleNew:F
    const-string v16, "scaleX"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v7, v17, v18

    const/16 v18, 0x1

    aput v8, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v14, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 464
    .local v9, scalex_anim:Landroid/animation/ObjectAnimator;
    const-string v16, "scaleY"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v7, v17, v18

    const/16 v18, 0x1

    aput v8, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v14, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 466
    .local v10, scaley_anim:Landroid/animation/ObjectAnimator;
    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    .line 467
    .local v12, set1:Landroid/animation/AnimatorSet;
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v9, v16, v17

    const/16 v17, 0x1

    aput-object v10, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 468
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->Z_ANIMATION_DURATION:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v12, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 469
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->stopAnimators(Landroid/view/View;)V

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->animators:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->start()V

    .line 457
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_8

    .line 473
    .end local v7           #scaleCurrent:F
    .end local v8           #scaleNew:F
    .end local v9           #scalex_anim:Landroid/animation/ObjectAnimator;
    .end local v10           #scaley_anim:Landroid/animation/ObjectAnimator;
    .end local v12           #set1:Landroid/animation/AnimatorSet;
    .end local v14           #v1:Landroid/view/View;
    :cond_10
    invoke-virtual {v13, v11}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_6

    .line 484
    .end local v4           #i:I
    .end local v11           #set:Landroid/view/animation/Animation;
    .end local v13           #v:Landroid/view/View;
    :cond_11
    const/16 v16, 0x1

    goto/16 :goto_4

    .line 492
    .restart local v4       #i:I
    .restart local v5       #res:Z
    .restart local v6       #rpos:F
    .restart local v13       #v:Landroid/view/View;
    :cond_12
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 497
    .end local v5           #res:Z
    .end local v6           #rpos:F
    .end local v13           #v:Landroid/view/View;
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v16

    sget v17, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->TOP_STACK_START_POSITION:I

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sget v19, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mTopStackDistance:F

    mul-float v18, v18, v19

    add-float v17, v17, v18

    cmpg-float v16, v16, v17

    if-gtz v16, :cond_15

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    .line 501
    .restart local v13       #v:Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    move/from16 v16, v0

    if-lez v16, :cond_14

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    .line 503
    .restart local v15       #v2:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->optHide(Landroid/view/View;)V

    .line 505
    .end local v15           #v2:Landroid/view/View;
    :cond_14
    const v16, 0x7f0d0085

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setEnabled(Z)V

    .line 506
    sget v16, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->TOP_STACK_START_POSITION:I

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sget v18, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mTopStackDistance:F

    mul-float v17, v17, v18

    add-float v16, v16, v17

    const/high16 v17, 0x3f80

    add-float v16, v16, v17

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v13, v1}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->setScrollPosition(Landroid/view/View;F)V

    .line 508
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->stopAnimators(Landroid/view/View;)V

    .line 509
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->createTopStackInAnimation()Landroid/view/animation/Animation;

    move-result-object v11

    .line 510
    .restart local v11       #set:Landroid/view/animation/Animation;
    invoke-virtual {v13, v11}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 512
    .end local v11           #set:Landroid/view/animation/Animation;
    .end local v13           #v:Landroid/view/View;
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    if-ltz v16, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getScrollSize()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sget v18, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->BOTTOM_STACK_BORDER:F

    sub-float v17, v17, v18

    cmpl-float v16, v16, v17

    if-lez v16, :cond_17

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    .line 516
    .restart local v13       #v:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getScrollSize()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sget v17, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->BOTTOM_STACK_BORDER:F

    sub-float v16, v16, v17

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v13, v1}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->setScrollPosition(Landroid/view/View;F)V

    .line 517
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->createBottomStackInAnimation()Landroid/view/animation/Animation;

    move-result-object v11

    .line 518
    .restart local v11       #set:Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    move/from16 v16, v0

    add-int/lit8 v4, v16, 0x1

    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v4, v0, :cond_16

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    .line 520
    .restart local v14       #v1:Landroid/view/View;
    const/high16 v16, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    move/from16 v17, v0

    sub-int v17, v17, v4

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sget v18, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->Z_DIFF:F

    mul-float v17, v17, v18

    sub-float v7, v16, v17

    .line 521
    .restart local v7       #scaleCurrent:F
    const/high16 v16, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    sub-int v17, v17, v4

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sget v18, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->Z_DIFF:F

    mul-float v17, v17, v18

    sub-float v8, v16, v17

    .line 522
    .restart local v8       #scaleNew:F
    const-string v16, "scaleX"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v7, v17, v18

    const/16 v18, 0x1

    aput v8, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v14, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 524
    .restart local v9       #scalex_anim:Landroid/animation/ObjectAnimator;
    const-string v16, "scaleY"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v7, v17, v18

    const/16 v18, 0x1

    aput v8, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v14, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 526
    .restart local v10       #scaley_anim:Landroid/animation/ObjectAnimator;
    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    .line 527
    .restart local v12       #set1:Landroid/animation/AnimatorSet;
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v9, v16, v17

    const/16 v17, 0x1

    aput-object v10, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 528
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->Z_ANIMATION_DURATION:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v12, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 529
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->stopAnimators(Landroid/view/View;)V

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->animators:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->start()V

    .line 518
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_9

    .line 533
    .end local v7           #scaleCurrent:F
    .end local v8           #scaleNew:F
    .end local v9           #scalex_anim:Landroid/animation/ObjectAnimator;
    .end local v10           #scaley_anim:Landroid/animation/ObjectAnimator;
    .end local v12           #set1:Landroid/animation/AnimatorSet;
    .end local v14           #v1:Landroid/view/View;
    :cond_16
    new-instance v16, Lcom/android/systemui/recent/smartswitcher/BaseContainer$2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13}, Lcom/android/systemui/recent/smartswitcher/BaseContainer$2;-><init>(Lcom/android/systemui/recent/smartswitcher/BaseContainer;Landroid/view/View;)V

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 548
    invoke-virtual {v13, v11}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .end local v11           #set:Landroid/view/animation/Animation;
    .end local v13           #v:Landroid/view/View;
    :cond_17
    move/from16 v16, v2

    .line 550
    goto/16 :goto_4
.end method

.method doSlideOut(Landroid/view/View;F)V
    .locals 3
    .parameter "v"
    .parameter "d"

    .prologue
    .line 259
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getSlidePosition(Landroid/view/View;)F

    move-result v0

    add-float/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->setSlidePosition(Landroid/view/View;F)V

    .line 260
    const/high16 v0, 0x3f80

    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getSlidePosition(Landroid/view/View;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x447a

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 261
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    const/4 v10, 0x0

    .line 975
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->draw(Landroid/graphics/Canvas;)V

    .line 977
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    if-eqz v0, :cond_2

    .line 978
    iget v13, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mPaddingLeft:I

    .line 979
    .local v13, paddingLeft:I
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->isPaddingOffsetRequired()Z

    move-result v12

    .line 980
    .local v12, offsetRequired:Z
    if-eqz v12, :cond_0

    .line 981
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getLeftPaddingOffset()I

    move-result v0

    add-int/2addr v13, v0

    .line 984
    :cond_0
    iget v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mScrollX:I

    add-int v2, v0, v13

    .line 985
    .local v2, left:I
    iget v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mRight:I

    add-int/2addr v0, v2

    iget v1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mPaddingRight:I

    sub-int/2addr v0, v1

    sub-int v3, v0, v13

    .line 986
    .local v3, right:I
    iget v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mScrollY:I

    invoke-virtual {p0, v12}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getFadeTop(Z)I

    move-result v1

    add-int v4, v0, v1

    .line 987
    .local v4, top:I
    invoke-virtual {p0, v12}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getFadeHeight(Z)I

    move-result v0

    add-int v5, v4, v0

    .line 989
    .local v5, bottom:I
    if-eqz v12, :cond_1

    .line 990
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getRightPaddingOffset()I

    move-result v0

    add-int/2addr v3, v0

    .line 991
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getBottomPaddingOffset()I

    move-result v0

    add-int/2addr v5, v0

    .line 993
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    iget v6, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mScrollX:I

    iget v7, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mScrollY:I

    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getTopFadingEdgeStrength()F

    move-result v8

    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getBottomFadingEdgeStrength()F

    move-result v9

    move-object v1, p1

    move v11, v10

    invoke-virtual/range {v0 .. v11}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->drawCallback(Landroid/graphics/Canvas;IIIIIIFFFF)V

    .line 997
    .end local v2           #left:I
    .end local v3           #right:I
    .end local v4           #top:I
    .end local v5           #bottom:I
    .end local v12           #offsetRequired:Z
    .end local v13           #paddingLeft:I
    :cond_2
    return-void
.end method

.method public getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 10
    .parameter "ev"

    .prologue
    const/high16 v9, 0x4240

    const/high16 v8, 0x4230

    const/high16 v7, 0x4228

    .line 950
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getScrollX()I

    move-result v6

    int-to-float v6, v6

    add-float v3, v5, v6

    .line 951
    .local v3, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getScrollY()I

    move-result v6

    int-to-float v6, v6

    add-float v4, v5, v6

    .line 952
    .local v4, y:F
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 953
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v5

    add-float/2addr v5, v9

    cmpl-float v5, v3, v5

    if-ltz v5, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    sub-float/2addr v5, v7

    cmpg-float v5, v3, v5

    if-gez v5, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v5

    add-float/2addr v5, v8

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    cmpg-float v5, v4, v5

    if-gez v5, :cond_0

    .line 966
    .end local v2           #v:Landroid/view/View;
    :goto_0
    return-object v2

    .line 958
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_2

    .line 959
    iget-object v5, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 960
    .local v1, item:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v5

    add-float/2addr v5, v9

    cmpl-float v5, v3, v5

    if-ltz v5, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    sub-float/2addr v5, v7

    cmpg-float v5, v3, v5

    if-gez v5, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v5

    add-float/2addr v5, v8

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    cmpg-float v5, v4, v5

    if-gez v5, :cond_1

    move-object v2, v1

    .line 963
    goto :goto_0

    .line 958
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 966
    .end local v1           #item:Landroid/view/View;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getChildContentView(Landroid/view/View;)Landroid/view/View;
    .locals 1
    .parameter "v"

    .prologue
    .line 970
    const v0, 0x7f0d0079

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getHorizontalFadingEdgeLength()I
    .locals 1

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    if-eqz v0, :cond_0

    .line 1011
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->getHorizontalFadingEdgeLengthCallback()I

    move-result v0

    .line 1013
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/RelativeLayout;->getHorizontalFadingEdgeLength()I

    move-result v0

    goto :goto_0
.end method

.method protected abstract getScrollDistance(FF)F
.end method

.method protected abstract getScrollPosition(Landroid/view/View;)F
.end method

.method protected abstract getScrollSize()I
.end method

.method protected abstract getScrollVelocity(FF)F
.end method

.method protected abstract getSlideDistance(FF)F
.end method

.method protected abstract getSlidePosition(Landroid/view/View;)F
.end method

.method protected abstract getSlideVelocity(FF)F
.end method

.method public getVerticalFadingEdgeLength()I
    .locals 1

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    if-eqz v0, :cond_0

    .line 1002
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->getVerticalFadingEdgeLengthCallback()I

    move-result v0

    .line 1004
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/RelativeLayout;->getVerticalFadingEdgeLength()I

    move-result v0

    goto :goto_0
.end method

.method public numItemsInOneScreenful()I
    .locals 1

    .prologue
    .line 1123
    iget v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mNumItemsInOneScreenful:I

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 4

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    if-eqz v0, :cond_0

    .line 1031
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->isHardwareAccelerated()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->onAttachedToWindowCallback(Lcom/android/systemui/recent/RecentsCallback;Landroid/widget/LinearLayout;Z)V

    .line 1034
    :cond_0
    return-void
.end method

.method public onBeginDrag(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    const/4 v0, 0x1

    .line 942
    iput-boolean v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mSwipe:Z

    .line 943
    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->requestDisallowInterceptTouchEvent(Z)V

    .line 944
    return-void
.end method

.method public onChildDismissed(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 921
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->addToRecycledViews(Landroid/view/View;)V

    .line 922
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 923
    .local v0, index:I
    iget v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    if-ge v0, v2, :cond_0

    .line 924
    iget v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    .line 925
    iget v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    if-gt v0, v2, :cond_0

    .line 926
    iget v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    .line 930
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v1

    .line 931
    .local v1, pos:F
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->removeView(Landroid/view/View;)V

    .line 932
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 933
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 934
    new-instance v2, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRemoverRunnable;

    const/16 v3, -0xe

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRemoverRunnable;-><init>(Lcom/android/systemui/recent/smartswitcher/BaseContainer;IFI)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->post(Ljava/lang/Runnable;)Z

    .line 936
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    invoke-interface {v2, p1}, Lcom/android/systemui/recent/RecentsCallback;->handleSwipe(Landroid/view/View;)V

    .line 937
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 1038
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1039
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 1040
    .local v0, densityScale:F
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v2, v0}, Lcom/android/systemui/SwipeHelper;->setDensityScale(F)V

    .line 1041
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    int-to-float v1, v2

    .line 1043
    .local v1, pagingTouchSlop:F
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v2, v1}, Lcom/android/systemui/SwipeHelper;->setPagingTouchSlop(F)V

    .line 1044
    return-void
.end method

.method public onDragCancelled(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 947
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 1019
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 1020
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->setScrollbarFadingEnabled(Z)V

    .line 1021
    const v1, 0x7f0d007f

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 1022
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0090

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 1025
    .local v0, leftPadding:I
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->setOverScrollEffectPadding(II)V

    .line 1026
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1052
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 1053
    const-string v0, "MIK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 1082
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 1084
    if-nez p2, :cond_0

    if-ne p1, p0, :cond_0

    .line 1085
    new-instance v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$9;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer$9;-><init>(Lcom/android/systemui/recent/smartswitcher/BaseContainer;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->post(Ljava/lang/Runnable;)Z

    .line 1091
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 10
    .parameter "hasWindowFocus"

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    .line 874
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    .line 875
    if-eqz p1, :cond_1

    iget-object v5, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 876
    invoke-virtual {p0, v7}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 877
    .local v4, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getScrollSize()I

    move-result v5

    int-to-float v5, v5

    sget v6, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->BOTTOM_STACK_BORDER:F

    sub-float/2addr v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->setScrollPosition(Landroid/view/View;F)V

    .line 878
    invoke-virtual {p0, v4}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->createBottomStackInAnimationInternal(Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 879
    .local v0, a:Landroid/view/animation/Animation;
    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 880
    invoke-virtual {v4}, Landroid/view/View;->bringToFront()V

    .line 881
    invoke-virtual {v4, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 882
    iget-object v5, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iput v5, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    .line 883
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 884
    iget-object v5, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 885
    .local v3, v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getScrollSize()I

    move-result v5

    int-to-float v5, v5

    sget v6, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->BOTTOM_STACK_BORDER:F

    sub-float/2addr v5, v6

    invoke-virtual {p0, v3, v5}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->setScrollPosition(Landroid/view/View;F)V

    .line 886
    invoke-virtual {p0, v3}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->createBottomStackInAnimationInternal(Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v1

    .line 887
    .local v1, aa:Landroid/view/animation/Animation;
    invoke-virtual {v1, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 888
    invoke-virtual {v3, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 889
    iget v5, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    .line 883
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 891
    .end local v1           #aa:Landroid/view/animation/Animation;
    .end local v3           #v:Landroid/view/View;
    :cond_0
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    .line 892
    new-instance v5, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRemoverRunnable;

    sget v6, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->TOP_STACK_START_POSITION:I

    add-int/lit8 v6, v6, 0xa

    int-to-float v6, v6

    invoke-direct {v5, p0, v7, v6, v7}, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRemoverRunnable;-><init>(Lcom/android/systemui/recent/smartswitcher/BaseContainer;IFI)V

    invoke-virtual {v5}, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRemoverRunnable;->run()V

    .line 893
    const/4 v2, 0x0

    :goto_1
    iget-object v5, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 894
    iget-object v5, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 895
    .restart local v3       #v:Landroid/view/View;
    const/high16 v5, 0x3f80

    invoke-virtual {v3, v5}, Landroid/view/View;->setAlpha(F)V

    .line 893
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 898
    .end local v0           #a:Landroid/view/animation/Animation;
    .end local v2           #i:I
    .end local v3           #v:Landroid/view/View;
    .end local v4           #view:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected abstract optHide(Landroid/view/View;)V
.end method

.method protected abstract optShow(Landroid/view/View;)V
.end method

.method public removeAllViews()V
    .locals 1

    .prologue
    .line 728
    invoke-super {p0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 729
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 730
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    .line 731
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    .line 732
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 902
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->dismissChild(Landroid/view/View;)V

    .line 903
    return-void
.end method

.method restoreRotation()V
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->rotation_restorer:Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRestoreRotationRunnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 374
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->rotation_restorer:Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRestoreRotationRunnable;

    invoke-virtual {v0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRestoreRotationRunnable;->init()Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRestoreRotationRunnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->post(Ljava/lang/Runnable;)Z

    .line 375
    return-void
.end method

.method public setAdapter(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$TaskDescriptionAdapter;)V
    .locals 3
    .parameter "adapter"

    .prologue
    .line 1094
    iput-object p1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mAdapter:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$TaskDescriptionAdapter;

    .line 1095
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mAdapter:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$TaskDescriptionAdapter;

    new-instance v2, Lcom/android/systemui/recent/smartswitcher/BaseContainer$10;

    invoke-direct {v2, p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer$10;-><init>(Lcom/android/systemui/recent/smartswitcher/BaseContainer;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$TaskDescriptionAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1115
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mNumItemsInOneScreenful:I

    .line 1117
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mNumItemsInOneScreenful:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 1118
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mAdapter:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v1, p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$TaskDescriptionAdapter;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->addToRecycledViews(Landroid/view/View;)V

    .line 1117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1120
    :cond_0
    return-void
.end method

.method public setCallback(Lcom/android/systemui/recent/RecentsCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 1133
    iput-object p1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    .line 1134
    return-void
.end method

.method public setLayoutTransition(Landroid/animation/LayoutTransition;)V
    .locals 0
    .parameter "transition"

    .prologue
    .line 1130
    return-void
.end method

.method public setMinSwipeAlpha(F)V
    .locals 1
    .parameter "minAlpha"

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/SwipeHelper;->setMinAlpha(F)V

    .line 737
    return-void
.end method

.method setNewPosition(Landroid/view/View;F)Z
    .locals 2
    .parameter "v"
    .parameter "d"

    .prologue
    .line 602
    const/4 v0, 0x1

    .line 603
    .local v0, ret:Z
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v1

    add-float/2addr p2, v1

    .line 604
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->setScrollPosition(Landroid/view/View;F)V

    .line 605
    return v0
.end method

.method protected abstract setRotation(Landroid/view/View;F)V
.end method

.method protected abstract setScrollPosition(Landroid/view/View;F)V
.end method

.method protected abstract setSlidePosition(Landroid/view/View;F)V
.end method

.method protected shouldReleaseFromTopStack()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 578
    iget v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    move v0, v1

    .line 596
    :goto_0
    return v0

    .line 581
    :cond_0
    iget v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v0

    iget v3, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->TOP_STACK_RELEASE_DISTANCE:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    move v0, v2

    .line 591
    goto :goto_0

    .line 592
    :cond_1
    iget v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    iget-object v3, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_2

    move v0, v2

    .line 594
    goto :goto_0

    :cond_2
    move v0, v1

    .line 596
    goto :goto_0
.end method

.method protected stopAnimators(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 554
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->animators:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 555
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->animators:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 556
    .local v0, a:Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 557
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 559
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->animators:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    .end local v0           #a:Landroid/animation/Animator;
    :cond_1
    return-void
.end method
