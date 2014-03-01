.class public Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsHorizontalScrollView;
.super Lcom/android/systemui/recent/smartswitcher/BaseContainer;
.source "SmartSwitcherRecentsHorizontalScrollView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v2}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsHorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 39
    .local v0, densityScale:F
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    int-to-float v1, v2

    .line 40
    .local v1, pagingTouchSlop:F
    new-instance v2, Lcom/android/systemui/SwipeHelper;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p0, v0, v1}, Lcom/android/systemui/SwipeHelper;-><init>(ILcom/android/systemui/SwipeHelper$Callback;FF)V

    iput-object v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    .line 41
    sget v2, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsHorizontalScrollView;->mBottomStackVisiblePart:F

    const/high16 v3, 0x41f0

    add-float/2addr v2, v3

    sput v2, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsHorizontalScrollView;->BOTTOM_STACK_BORDER:F

    .line 42
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 243
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 244
    const/high16 v0, 0x4348

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 245
    invoke-super {p0, p1}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->addView(Landroid/view/View;)V

    .line 246
    return-void
.end method

.method protected createBottomStackInAnimation()Landroid/view/animation/Animation;
    .locals 3

    .prologue
    .line 218
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 219
    .local v0, v:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsHorizontalScrollView;->createBottomStackInAnimationInternal(Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1
.end method

.method protected createBottomStackInAnimationInternal(Landroid/view/View;)Landroid/view/animation/Animation;
    .locals 10
    .parameter "v"

    .prologue
    const v2, 0x3f8ccccd

    const/high16 v1, 0x3f80

    const/4 v9, 0x0

    .line 224
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v5, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v6, v3

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 225
    .local v0, s:Landroid/view/animation/ScaleAnimation;
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v0, v2}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 226
    new-instance v8, Landroid/view/animation/TranslateAnimation;

    sget v2, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsHorizontalScrollView;->BOTTOM_STACK_BORDER:F

    sget v3, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsHorizontalScrollView;->mBottomStackVisiblePart:F

    sub-float/2addr v2, v3

    invoke-direct {v8, v9, v2, v9, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 227
    .local v8, t:Landroid/view/animation/TranslateAnimation;
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v8, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 229
    new-instance v7, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v7, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 230
    .local v7, set:Landroid/view/animation/AnimationSet;
    invoke-virtual {v7, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 231
    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 232
    sget v2, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsHorizontalScrollView;->STACK_ANIMATION_DURATION:I

    int-to-long v2, v2

    invoke-virtual {v7, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 233
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 234
    iput v9, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->rotated_angle:F

    .line 236
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 237
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 238
    return-object v7
.end method

.method protected createBottomStackOutAnimation()Landroid/view/animation/Animation;
    .locals 12

    .prologue
    const v1, 0x3f8ccccd

    const/high16 v2, 0x3f80

    const/4 v11, 0x0

    .line 159
    iget-object v3, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 160
    .local v9, v:Landroid/view/View;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v5, v3

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v6, v3

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 161
    .local v0, s:Landroid/view/animation/ScaleAnimation;
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 163
    iget v1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    if-nez v1, :cond_0

    .line 164
    new-instance v8, Landroid/view/animation/TranslateAnimation;

    sget v1, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsHorizontalScrollView;->BOTTOM_STACK_BORDER:F

    sget v2, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsHorizontalScrollView;->mBottomStackVisiblePart:F

    sub-float/2addr v1, v2

    invoke-direct {v8, v1, v11, v11, v11}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 181
    .local v8, t:Landroid/view/animation/TranslateAnimation;
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v8, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 183
    new-instance v7, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v7, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 184
    .local v7, set:Landroid/view/animation/AnimationSet;
    invoke-virtual {v7, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 185
    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 186
    sget v1, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsHorizontalScrollView;->STACK_ANIMATION_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v7, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 187
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 188
    return-object v7

    .line 166
    .end local v7           #set:Landroid/view/animation/AnimationSet;
    .end local v8           #t:Landroid/view/animation/TranslateAnimation;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsHorizontalScrollView;->getScrollPosition(Landroid/view/View;)F

    move-result v1

    iget v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->BOTTOM_STACK_RELEASE_DISTANCE:F

    sub-float/2addr v1, v2

    float-to-int v10, v1

    .line 168
    .local v10, ydiff:I
    new-instance v8, Landroid/view/animation/TranslateAnimation;

    sget v1, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsHorizontalScrollView;->BOTTOM_STACK_BORDER:F

    sget v2, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsHorizontalScrollView;->mBottomStackVisiblePart:F

    sub-float/2addr v1, v2

    int-to-float v2, v10

    add-float/2addr v1, v2

    invoke-direct {v8, v1, v11, v11, v11}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 169
    .restart local v8       #t:Landroid/view/animation/TranslateAnimation;
    new-instance v1, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsHorizontalScrollView$2;

    invoke-direct {v1, p0, v9, v10}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsHorizontalScrollView$2;-><init>(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsHorizontalScrollView;Landroid/view/View;I)V

    invoke-virtual {v8, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method protected createDisappearAnimation(Landroid/view/View;)Landroid/view/animation/Animation;
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 105
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 106
    .local v1, set:Landroid/view/animation/AnimationSet;
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsHorizontalScrollView;->getSlidePosition(Landroid/view/View;)F

    move-result v3

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_0

    .line 107
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsHorizontalScrollView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v2, v5, v5, v5, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 111
    .local v2, t:Landroid/view/animation/TranslateAnimation;
    :goto_0
    sget v3, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsHorizontalScrollView;->CLOSE_ANIMATION:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 112
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v3

    invoke-direct {v0, v3, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 113
    .local v0, a:Landroid/view/animation/AlphaAnimation;
    sget v3, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsHorizontalScrollView;->CLOSE_ANIMATION:I

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 114
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 115
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 116
    return-object v1

    .line 109
    .end local v0           #a:Landroid/view/animation/AlphaAnimation;
    .end local v2           #t:Landroid/view/animation/TranslateAnimation;
    :cond_0
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsHorizontalScrollView;->getHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-direct {v2, v5, v5, v5, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v2       #t:Landroid/view/animation/TranslateAnimation;
    goto :goto_0
.end method

.method protected createTopStackInAnimation()Landroid/view/animation/Animation;
    .locals 11

    .prologue
    const/high16 v10, 0x3f80

    const/4 v5, 0x0

    .line 193
    iget-object v3, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 194
    .local v9, v:Landroid/view/View;
    iget v3, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    iget v4, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsHorizontalScrollView;->Z_DIFF:F

    mul-float/2addr v3, v4

    sub-float v1, v10, v3

    .line 195
    .local v1, scaleFrom:F
    const v3, 0x3f733333

    iget v4, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    sget v6, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsHorizontalScrollView;->MAX_STACK_APPS:I

    sub-int/2addr v4, v6

    int-to-float v4, v4

    sget v6, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsHorizontalScrollView;->TOP_STACK_Z_DIFF:F

    mul-float/2addr v4, v6

    add-float v2, v3, v4

    .line 196
    .local v2, scaleTo:F
    const-string v3, "MIK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "In: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v6, v3

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 198
    .local v0, s:Landroid/view/animation/ScaleAnimation;
    iget-object v3, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v0, v3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 199
    new-instance v8, Landroid/view/animation/TranslateAnimation;

    const/high16 v3, -0x3ee0

    invoke-direct {v8, v5, v3, v5, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 200
    .local v8, t:Landroid/view/animation/TranslateAnimation;
    iget-object v3, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v8, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 202
    new-instance v7, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v7, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 203
    .local v7, set:Landroid/view/animation/AnimationSet;
    invoke-virtual {v7, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 204
    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 205
    sget v3, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsHorizontalScrollView;->STACK_ANIMATION_DURATION:I

    int-to-long v3, v3

    invoke-virtual {v7, v3, v4}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 206
    const/4 v3, 0x1

    invoke-virtual {v7, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 207
    iput v5, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->rotated_angle:F

    .line 209
    invoke-virtual {p0, v9}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsHorizontalScrollView;->stopAnimators(Landroid/view/View;)V

    .line 210
    invoke-virtual {v9, v10}, Landroid/view/View;->setScaleX(F)V

    .line 211
    invoke-virtual {v9, v10}, Landroid/view/View;->setScaleY(F)V

    .line 212
    return-object v7
.end method

.method protected createTopStackOutAnimation()Landroid/view/animation/Animation;
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/high16 v2, 0x3f80

    const/4 v5, 0x0

    .line 122
    const v1, 0x3f733333

    iget v3, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    sget v4, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsHorizontalScrollView;->MAX_STACK_APPS:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsHorizontalScrollView;->TOP_STACK_Z_DIFF:F

    mul-float/2addr v3, v4

    add-float v7, v1, v3

    .line 123
    .local v7, scaleFrom:F
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    .line 124
    .local v12, v:Landroid/view/View;
    iget v1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    iget v3, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    sget v3, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsHorizontalScrollView;->Z_DIFF:F

    mul-float/2addr v1, v3

    sub-float v8, v2, v1

    .line 126
    .local v8, scaleTo:F
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    div-float v1, v7, v8

    div-float v3, v7, v8

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v6, v4

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 128
    .local v0, s:Landroid/view/animation/ScaleAnimation;
    iget v1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    .line 129
    new-instance v11, Landroid/view/animation/TranslateAnimation;

    const/high16 v1, -0x3ee0

    invoke-direct {v11, v1, v5, v5, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 149
    .local v11, t:Landroid/view/animation/TranslateAnimation;
    :goto_0
    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v13}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 150
    .local v10, set:Landroid/view/animation/AnimationSet;
    invoke-virtual {v10, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 151
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 152
    invoke-virtual {v10, v13}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 153
    sget v1, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsHorizontalScrollView;->STACK_ANIMATION_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v10, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 154
    return-object v10

    .line 131
    .end local v10           #set:Landroid/view/animation/AnimationSet;
    .end local v11           #t:Landroid/view/animation/TranslateAnimation;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsHorizontalScrollView;->getScrollPosition(Landroid/view/View;)F

    move-result v1

    iget v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->TOP_STACK_RELEASE_DISTANCE:F

    sub-float/2addr v1, v2

    float-to-int v9, v1

    .line 132
    .local v9, scroll_diff:I
    new-instance v11, Landroid/view/animation/TranslateAnimation;

    rsub-int/lit8 v1, v9, -0xa

    int-to-float v1, v1

    invoke-direct {v11, v1, v5, v5, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 133
    .restart local v11       #t:Landroid/view/animation/TranslateAnimation;
    new-instance v1, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsHorizontalScrollView$1;

    invoke-direct {v1, p0, v12, v9, v8}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsHorizontalScrollView$1;-><init>(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsHorizontalScrollView;Landroid/view/View;IF)V

    invoke-virtual {v11, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method protected getScrollDistance(FF)F
    .locals 0
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 46
    return p1
.end method

.method protected getScrollPosition(Landroid/view/View;)F
    .locals 1
    .parameter "v"

    .prologue
    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    return v0
.end method

.method protected getScrollSize()I
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsHorizontalScrollView;->getWidth()I

    move-result v0

    return v0
.end method

.method protected getScrollVelocity(FF)F
    .locals 0
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 61
    return p1
.end method

.method protected getSlideDistance(FF)F
    .locals 0
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 51
    return p2
.end method

.method protected getSlidePosition(Landroid/view/View;)F
    .locals 1
    .parameter "v"

    .prologue
    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    return v0
.end method

.method protected getSlideVelocity(FF)F
    .locals 0
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 56
    return p2
.end method

.method protected optHide(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 251
    return-void
.end method

.method protected optShow(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 256
    return-void
.end method

.method protected setRotation(Landroid/view/View;F)V
    .locals 8
    .parameter "v"
    .parameter "angle"

    .prologue
    const/4 v6, 0x1

    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v7

    .line 67
    .local v7, curr:Landroid/view/animation/Animation;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    :goto_0
    return-void

    .line 70
    :cond_0
    new-instance v0, Lcom/android/systemui/recent/smartswitcher/Rotate3dAnimation;

    neg-float v1, p2

    neg-float v2, p2

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recent/smartswitcher/Rotate3dAnimation;-><init>(FFFFFZ)V

    .line 71
    .local v0, a:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 72
    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 73
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method protected setScrollPosition(Landroid/view/View;F)V
    .locals 0
    .parameter "v"
    .parameter "pos"

    .prologue
    .line 83
    invoke-virtual {p1, p2}, Landroid/view/View;->setX(F)V

    .line 84
    return-void
.end method

.method protected setSlidePosition(Landroid/view/View;F)V
    .locals 0
    .parameter "v"
    .parameter "pos"

    .prologue
    .line 88
    invoke-virtual {p1, p2}, Landroid/view/View;->setY(F)V

    .line 89
    return-void
.end method
