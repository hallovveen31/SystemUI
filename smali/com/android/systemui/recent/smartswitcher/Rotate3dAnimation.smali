.class public Lcom/android/systemui/recent/smartswitcher/Rotate3dAnimation;
.super Landroid/view/animation/Animation;
.source "Rotate3dAnimation.java"


# instance fields
.field private final mByX:Z

.field private mCamera:Landroid/graphics/Camera;

.field private final mCenterX:F

.field private final mCenterY:F

.field private final mDepthZ:F

.field private final mFromDegrees:F

.field private final mToDegrees:F


# direct methods
.method public constructor <init>(FFFFFZ)V
    .locals 0
    .parameter "fromDegrees"
    .parameter "toDegrees"
    .parameter "centerX"
    .parameter "centerY"
    .parameter "depthZ"
    .parameter "byX"

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 19
    iput p1, p0, Lcom/android/systemui/recent/smartswitcher/Rotate3dAnimation;->mFromDegrees:F

    .line 20
    iput p2, p0, Lcom/android/systemui/recent/smartswitcher/Rotate3dAnimation;->mToDegrees:F

    .line 21
    iput p3, p0, Lcom/android/systemui/recent/smartswitcher/Rotate3dAnimation;->mCenterX:F

    .line 22
    iput p4, p0, Lcom/android/systemui/recent/smartswitcher/Rotate3dAnimation;->mCenterY:F

    .line 23
    iput p5, p0, Lcom/android/systemui/recent/smartswitcher/Rotate3dAnimation;->mDepthZ:F

    .line 24
    iput-boolean p6, p0, Lcom/android/systemui/recent/smartswitcher/Rotate3dAnimation;->mByX:Z

    .line 25
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 8
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 35
    iget v4, p0, Lcom/android/systemui/recent/smartswitcher/Rotate3dAnimation;->mFromDegrees:F

    .line 36
    .local v4, fromDegrees:F
    iget v6, p0, Lcom/android/systemui/recent/smartswitcher/Rotate3dAnimation;->mToDegrees:F

    sub-float/2addr v6, v4

    mul-float/2addr v6, p1

    add-float v3, v4, v6

    .line 38
    .local v3, degrees:F
    iget v1, p0, Lcom/android/systemui/recent/smartswitcher/Rotate3dAnimation;->mCenterX:F

    .line 39
    .local v1, centerX:F
    iget v2, p0, Lcom/android/systemui/recent/smartswitcher/Rotate3dAnimation;->mCenterY:F

    .line 40
    .local v2, centerY:F
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/Rotate3dAnimation;->mCamera:Landroid/graphics/Camera;

    .line 42
    .local v0, camera:Landroid/graphics/Camera;
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    .line 44
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 46
    iget-boolean v6, p0, Lcom/android/systemui/recent/smartswitcher/Rotate3dAnimation;->mByX:Z

    if-eqz v6, :cond_0

    .line 47
    invoke-virtual {v0, v3}, Landroid/graphics/Camera;->rotateY(F)V

    .line 51
    :goto_0
    invoke-virtual {v0, v5}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 52
    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    .line 54
    neg-float v6, v1

    neg-float v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 55
    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 56
    return-void

    .line 49
    :cond_0
    invoke-virtual {v0, v3}, Landroid/graphics/Camera;->rotateX(F)V

    goto :goto_0
.end method

.method public initialize(IIII)V
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    .line 29
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 30
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recent/smartswitcher/Rotate3dAnimation;->mCamera:Landroid/graphics/Camera;

    .line 31
    return-void
.end method
