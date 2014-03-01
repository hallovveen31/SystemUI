.class Lcom/android/systemui/ImageWallpaper$DrawableEngine;
.super Landroid/service/wallpaper/WallpaperService$Engine;
.source "ImageWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ImageWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DrawableEngine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/ImageWallpaper$DrawableEngine$WallpaperSimObserver;,
        Lcom/android/systemui/ImageWallpaper$DrawableEngine$WallpaperObserver;
    }
.end annotation


# static fields
.field static final EGL_CONTEXT_CLIENT_VERSION:I = 0x3098

.field static final EGL_OPENGL_ES2_BIT:I = 0x4

.field private static final FLOAT_SIZE_BYTES:I = 0x4

.field private static final TRIANGLE_VERTICES_DATA_POS_OFFSET:I = 0x0

.field private static final TRIANGLE_VERTICES_DATA_STRIDE_BYTES:I = 0x14

.field private static final TRIANGLE_VERTICES_DATA_UV_OFFSET:I = 0x3

.field private static final sSimpleFS:Ljava/lang/String; = "precision mediump float;\n\nvarying vec2 outTexCoords;\nuniform sampler2D texture;\n\nvoid main(void) {\n    gl_FragColor = texture2D(texture, outTexCoords);\n}\n\n"

.field private static final sSimpleVS:Ljava/lang/String; = "attribute vec4 position;\nattribute vec2 texCoords;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\n\nvoid main(void) {\n    outTexCoords = texCoords;\n    gl_Position = projection * position;\n}\n\n"


# instance fields
.field mBackground:Landroid/graphics/Bitmap;

.field mBackgroundHeight:I

.field mBackgroundWidth:I

.field private mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field private mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field private mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private mGL:Ljavax/microedition/khronos/opengles/GL;

.field mLastXTranslation:I

.field mLastYTranslation:I

.field private final mLock:Ljava/lang/Object;

.field mOffsetsChanged:Z

.field private mReceiver:Lcom/android/systemui/ImageWallpaper$DrawableEngine$WallpaperObserver;

.field mRedrawNeeded:Z

.field private mSimReceiver:Lcom/android/systemui/ImageWallpaper$DrawableEngine$WallpaperSimObserver;

.field mVisible:Z

.field mXOffset:F

.field mYOffset:F

.field final synthetic this$0:Lcom/android/systemui/ImageWallpaper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/ImageWallpaper;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 165
    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    .line 166
    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    .line 103
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLock:Ljava/lang/Object;

    .line 111
    iput v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    iput v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    .line 115
    iput-boolean v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVisible:Z

    .line 167
    invoke-virtual {p0, v2}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->setFixedSizeAllowed(Z)V

    .line 168
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/ImageWallpaper$DrawableEngine;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method private buildProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .parameter "vertex"
    .parameter "fragment"

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 545
    const v6, 0x8b31

    invoke-direct {p0, p1, v6}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->buildShader(Ljava/lang/String;I)I

    move-result v4

    .line 546
    .local v4, vertexShader:I
    if-nez v4, :cond_1

    move v2, v5

    .line 572
    :cond_0
    :goto_0
    return v2

    .line 548
    :cond_1
    const v6, 0x8b30

    invoke-direct {p0, p2, v6}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->buildShader(Ljava/lang/String;I)I

    move-result v1

    .line 549
    .local v1, fragmentShader:I
    if-nez v1, :cond_2

    move v2, v5

    goto :goto_0

    .line 551
    :cond_2
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .line 552
    .local v2, program:I
    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 553
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->checkGlError()V

    .line 555
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 556
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->checkGlError()V

    .line 558
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 559
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->checkGlError()V

    .line 561
    new-array v3, v7, [I

    .line 562
    .local v3, status:[I
    const v6, 0x8b82

    invoke-static {v2, v6, v3, v5}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 563
    aget v6, v3, v5

    if-eq v6, v7, :cond_0

    .line 564
    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v0

    .line 565
    .local v0, error:Ljava/lang/String;
    const-string v6, "ImageWallpaperGL"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error while linking program:\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    invoke-static {v4}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 567
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 568
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    move v2, v5

    .line 569
    goto :goto_0
.end method

.method private buildShader(Ljava/lang/String;I)I
    .locals 7
    .parameter "source"
    .parameter "type"

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 576
    invoke-static {p2}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 578
    .local v1, shader:I
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 579
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->checkGlError()V

    .line 581
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 582
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->checkGlError()V

    .line 584
    new-array v2, v5, [I

    .line 585
    .local v2, status:[I
    const v4, 0x8b81

    invoke-static {v1, v4, v2, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 586
    aget v4, v2, v3

    if-eq v4, v5, :cond_0

    .line 587
    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v0

    .line 588
    .local v0, error:Ljava/lang/String;
    const-string v4, "ImageWallpaperGL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error while compiling shader:\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    move v1, v3

    .line 593
    .end local v0           #error:Ljava/lang/String;
    .end local v1           #shader:I
    :cond_0
    return v1
.end method

.method private checkEglError()V
    .locals 4

    .prologue
    .line 597
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 598
    .local v0, error:I
    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    .line 599
    const-string v1, "ImageWallpaperGL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EGL error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :cond_0
    return-void
.end method

.method private checkGlError()V
    .locals 4

    .prologue
    .line 604
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .line 605
    .local v0, error:I
    if-eqz v0, :cond_0

    .line 606
    const-string v1, "ImageWallpaperGL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GL error = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 608
    :cond_0
    return-void
.end method

.method private chooseEglConfig()Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 667
    new-array v5, v4, [I

    .line 668
    .local v5, configsCount:[I
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 669
    .local v3, configs:[Ljavax/microedition/khronos/egl/EGLConfig;
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getConfig()[I

    move-result-object v2

    .line 670
    .local v2, configSpec:[I
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 671
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eglChooseConfig failed "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 673
    :cond_0
    aget v0, v5, v6

    if-lez v0, :cond_1

    .line 674
    aget-object v0, v3, v6

    .line 676
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createMesh(IIFF)Ljava/nio/FloatBuffer;
    .locals 8
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    .line 504
    const/16 v3, 0x14

    new-array v2, v3, [F

    int-to-float v3, p1

    aput v3, v2, v7

    const/4 v3, 0x1

    aput p4, v2, v3

    const/4 v3, 0x2

    aput v5, v2, v3

    const/4 v3, 0x3

    aput v5, v2, v3

    const/4 v3, 0x4

    aput v6, v2, v3

    const/4 v3, 0x5

    aput p3, v2, v3

    const/4 v3, 0x6

    aput p4, v2, v3

    const/4 v3, 0x7

    aput v5, v2, v3

    const/16 v3, 0x8

    aput v6, v2, v3

    const/16 v3, 0x9

    aput v6, v2, v3

    const/16 v3, 0xa

    int-to-float v4, p1

    aput v4, v2, v3

    const/16 v3, 0xb

    int-to-float v4, p2

    aput v4, v2, v3

    const/16 v3, 0xc

    aput v5, v2, v3

    const/16 v3, 0xd

    aput v5, v2, v3

    const/16 v3, 0xe

    aput v5, v2, v3

    const/16 v3, 0xf

    aput p3, v2, v3

    const/16 v3, 0x10

    int-to-float v4, p2

    aput v4, v2, v3

    const/16 v3, 0x11

    aput v5, v2, v3

    const/16 v3, 0x12

    aput v6, v2, v3

    const/16 v3, 0x13

    aput v5, v2, v3

    .line 512
    .local v2, verticesData:[F
    array-length v3, v2

    mul-int/lit8 v0, v3, 0x4

    .line 513
    .local v0, bytes:I
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 515
    .local v1, triangleVertices:Ljava/nio/FloatBuffer;
    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 516
    return-object v1
.end method

.method private drawWallpaperWithCanvas(Landroid/view/SurfaceHolder;IIII)V
    .locals 6
    .parameter "sh"
    .parameter "w"
    .parameter "h"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 420
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 421
    .local v0, c:Landroid/graphics/Canvas;
    if-eqz v0, :cond_3

    .line 427
    int-to-float v1, p4

    int-to-float v2, p5

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 428
    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    .line 429
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    .line 430
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 431
    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 432
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 434
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 435
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    :cond_2
    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 441
    :cond_3
    return-void

    .line 438
    :catchall_0
    move-exception v1

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    throw v1
.end method

.method private drawWallpaperWithOpenGL(Landroid/view/SurfaceHolder;IIII)Z
    .locals 25
    .parameter "sh"
    .parameter "w"
    .parameter "h"
    .parameter "left"
    .parameter "top"

    .prologue
    .line 444
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->initGL(Landroid/view/SurfaceHolder;)Z

    move-result v7

    if-nez v7, :cond_0

    const/4 v7, 0x0

    .line 500
    :goto_0
    return v7

    .line 446
    :cond_0
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    add-int v7, v7, p4

    int-to-float v0, v7

    move/from16 v21, v0

    .line 447
    .local v21, right:F
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    add-int v7, v7, p5

    int-to-float v0, v7

    move/from16 v18, v0

    .line 449
    .local v18, bottom:F
    invoke-interface/range {p1 .. p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v19

    .line 451
    .local v19, frame:Landroid/graphics/Rect;
    new-instance v5, Landroid/renderscript/Matrix4f;

    invoke-direct {v5}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 452
    .local v5, ortho:Landroid/renderscript/Matrix4f;
    const/4 v6, 0x0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    const/4 v9, 0x0

    const/high16 v10, -0x4080

    const/high16 v11, 0x3f80

    invoke-virtual/range {v5 .. v11}, Landroid/renderscript/Matrix4f;->loadOrtho(FFFFFF)V

    .line 454
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, v21

    move/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->createMesh(IIFF)Ljava/nio/FloatBuffer;

    move-result-object v11

    .line 456
    .local v11, triangleVertices:Ljava/nio/FloatBuffer;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->loadTexture(Landroid/graphics/Bitmap;)I

    move-result v22

    .line 457
    .local v22, texture:I
    const-string v7, "attribute vec4 position;\nattribute vec2 texCoords;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\n\nvoid main(void) {\n    outTexCoords = texCoords;\n    gl_Position = projection * position;\n}\n\n"

    const-string v8, "precision mediump float;\n\nvarying vec2 outTexCoords;\nuniform sampler2D texture;\n\nvoid main(void) {\n    gl_FragColor = texture2D(texture, outTexCoords);\n}\n\n"

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->buildProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v20

    .line 459
    .local v20, program:I
    const-string v7, "position"

    move/from16 v0, v20

    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v6

    .line 460
    .local v6, attribPosition:I
    const-string v7, "texCoords"

    move/from16 v0, v20

    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v12

    .line 461
    .local v12, attribTexCoords:I
    const-string v7, "texture"

    move/from16 v0, v20

    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v24

    .line 462
    .local v24, uniformTexture:I
    const-string v7, "projection"

    move/from16 v0, v20

    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v23

    .line 464
    .local v23, uniformProjection:I
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->checkGlError()V

    .line 466
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-static {v7, v8, v9, v10}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 467
    const/16 v7, 0xde1

    move/from16 v0, v22

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 469
    invoke-static/range {v20 .. v20}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 470
    invoke-static {v6}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 471
    invoke-static {v12}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 472
    const/4 v7, 0x0

    move/from16 v0, v24

    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 473
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v5}, Landroid/renderscript/Matrix4f;->getArray()[F

    move-result-object v9

    const/4 v10, 0x0

    move/from16 v0, v23

    invoke-static {v0, v7, v8, v9, v10}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 475
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->checkGlError()V

    .line 477
    if-ltz p2, :cond_1

    if-gez p3, :cond_2

    .line 478
    :cond_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 479
    const/16 v7, 0x4000

    invoke-static {v7}, Landroid/opengl/GLES20;->glClear(I)V

    .line 483
    :cond_2
    const/4 v7, 0x0

    invoke-virtual {v11, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 484
    const/4 v7, 0x3

    const/16 v8, 0x1406

    const/4 v9, 0x0

    const/16 v10, 0x14

    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 487
    const/4 v7, 0x3

    invoke-virtual {v11, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 488
    const/4 v13, 0x3

    const/16 v14, 0x1406

    const/4 v15, 0x0

    const/16 v16, 0x14

    move-object/from16 v17, v11

    invoke-static/range {v12 .. v17}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 491
    const/4 v7, 0x5

    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-static {v7, v8, v9}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 493
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v7, v8, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 494
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Cannot swap buffers"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 496
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->checkEglError()V

    .line 498
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->finishGL()V

    .line 500
    const/4 v7, 0x1

    goto/16 :goto_0
.end method

.method private finishGL()V
    .locals 5

    .prologue
    .line 611
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 612
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 613
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 614
    return-void
.end method

.method private getConfig()[I
    .locals 2

    .prologue
    const/16 v1, 0xf

    .line 680
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-boolean v0, v0, Lcom/android/systemui/ImageWallpaper;->USE_RGB_565:Z

    if-eqz v0, :cond_0

    .line 682
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 695
    :goto_0
    return-object v0

    :cond_0
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    goto :goto_0

    .line 682
    :array_0
    .array-data 0x4
        0x40t 0x30t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x24t 0x30t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x23t 0x30t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x22t 0x30t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x21t 0x30t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x25t 0x30t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x26t 0x30t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data

    .line 695
    :array_1
    .array-data 0x4
        0x40t 0x30t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x24t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x23t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x22t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x21t 0x30t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x25t 0x30t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x26t 0x30t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data
.end method

.method private initGL(Landroid/view/SurfaceHolder;)Z
    .locals 7
    .parameter "surfaceHolder"

    .prologue
    .line 617
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 619
    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 620
    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v2, v3, :cond_0

    .line 621
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eglGetDisplay failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 625
    :cond_0
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 626
    .local v1, version:[I
    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v3, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 627
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eglInitialize failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 631
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->chooseEglConfig()Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 632
    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v2, :cond_2

    .line 633
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "eglConfig not initialized"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 636
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 638
    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, p1, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 640
    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v2, v3, :cond_5

    .line 641
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 642
    .local v0, error:I
    const/16 v2, 0x300b

    if-ne v0, v2, :cond_4

    .line 643
    const-string v2, "ImageWallpaperGL"

    const-string v3, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    const/4 v2, 0x0

    .line 657
    .end local v0           #error:I
    :goto_0
    return v2

    .line 646
    .restart local v0       #error:I
    :cond_4
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createWindowSurface failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 650
    .end local v0           #error:I
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v2, v3, v4, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 651
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eglMakeCurrent failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 655
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v2}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mGL:Ljavax/microedition/khronos/opengles/GL;

    .line 657
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private loadTexture(Landroid/graphics/Bitmap;)I
    .locals 8
    .parameter "bitmap"

    .prologue
    const v5, 0x812f

    const/16 v4, 0x2601

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/16 v0, 0xde1

    .line 520
    new-array v7, v3, [I

    .line 522
    .local v7, textures:[I
    const v2, 0x84c0

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 523
    invoke-static {v3, v7, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 524
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->checkGlError()V

    .line 526
    aget v6, v7, v1

    .line 527
    .local v6, texture:I
    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 528
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->checkGlError()V

    .line 530
    const/16 v2, 0x2801

    invoke-static {v0, v2, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 531
    const/16 v2, 0x2800

    invoke-static {v0, v2, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 533
    const/16 v2, 0x2802

    invoke-static {v0, v2, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 534
    const/16 v2, 0x2803

    invoke-static {v0, v2, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 536
    const/16 v2, 0x1908

    const/16 v4, 0x1401

    move-object v3, p1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLUtils;->texImage2D(IIILandroid/graphics/Bitmap;II)V

    .line 537
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->checkGlError()V

    .line 539
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 541
    return v6
.end method


# virtual methods
.method createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 2
    .parameter "egl"
    .parameter "eglDisplay"
    .parameter "eglConfig"

    .prologue
    .line 662
    const/4 v1, 0x3

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 663
    .local v0, attrib_list:[I
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1, p2, p3, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    return-object v1

    .line 662
    nop

    :array_0
    .array-data 0x4
        0x98t 0x30t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data
.end method

.method drawFrameLocked()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/high16 v10, 0x3f00

    .line 313
    iget-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mRedrawNeeded:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOffsetsChanged:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVisible:Z

    if-nez v0, :cond_1

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->updateWallpaperLocked()V

    .line 336
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 343
    iget-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVisible:Z

    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    .line 352
    .local v1, sh:Landroid/view/SurfaceHolder;
    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v8

    .line 353
    .local v8, frame:Landroid/graphics/Rect;
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 354
    .local v7, dw:I
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 355
    .local v6, dh:I
    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    sub-int v2, v7, v0

    .line 356
    .local v2, availw:I
    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    sub-int v3, v6, v0

    .line 357
    .local v3, availh:I
    if-gez v2, :cond_4

    int-to-float v0, v2

    iget v9, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mXOffset:F

    mul-float/2addr v0, v9

    add-float/2addr v0, v10

    float-to-int v4, v0

    .line 358
    .local v4, xPixels:I
    :goto_1
    if-gez v3, :cond_5

    int-to-float v0, v3

    iget v9, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mYOffset:F

    mul-float/2addr v0, v9

    add-float/2addr v0, v10

    float-to-int v5, v0

    .line 360
    .local v5, yPixels:I
    :goto_2
    iput-boolean v11, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOffsetsChanged:Z

    .line 361
    iget-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mRedrawNeeded:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastXTranslation:I

    if-ne v4, v0, :cond_2

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastYTranslation:I

    if-eq v5, v0, :cond_0

    .line 368
    :cond_2
    iput-boolean v11, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mRedrawNeeded:Z

    .line 369
    iput v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastXTranslation:I

    .line 370
    iput v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastYTranslation:I

    .line 373
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-boolean v0, v0, Lcom/android/systemui/ImageWallpaper;->mIsHwAccelerated:Z

    if-eqz v0, :cond_6

    move-object v0, p0

    .line 374
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->drawWallpaperWithOpenGL(Landroid/view/SurfaceHolder;IIII)Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, p0

    .line 375
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->drawWallpaperWithCanvas(Landroid/view/SurfaceHolder;IIII)V

    .line 386
    :cond_3
    :goto_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    .line 387
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->forgetLoadedWallpaper()V

    goto :goto_0

    .line 357
    .end local v4           #xPixels:I
    .end local v5           #yPixels:I
    :cond_4
    div-int/lit8 v4, v2, 0x2

    goto :goto_1

    .line 358
    .restart local v4       #xPixels:I
    :cond_5
    div-int/lit8 v5, v3, 0x2

    goto :goto_2

    .restart local v5       #yPixels:I
    :cond_6
    move-object v0, p0

    .line 378
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->drawWallpaperWithCanvas(Landroid/view/SurfaceHolder;IIII)V

    goto :goto_3
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "surfaceHolder"

    .prologue
    .line 190
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 192
    const-string v1, "ro.board.platform"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, sl:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "msm8660"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/systemui/ImageWallpaper;->USE_RGB_565:Z

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-boolean v1, v1, Lcom/android/systemui/ImageWallpaper;->USE_RGB_565:Z

    if-eqz v1, :cond_1

    .line 200
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 219
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->updateSurfaceSize(Landroid/view/SurfaceHolder;)V

    .line 221
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->setOffsetNotificationsEnabled(Z)V

    .line 222
    return-void
.end method

.method public onDesiredSizeChanged(II)V
    .locals 1
    .parameter "desiredWidth"
    .parameter "desiredHeight"

    .prologue
    .line 234
    invoke-super {p0, p1, p2}, Landroid/service/wallpaper/WallpaperService$Engine;->onDesiredSizeChanged(II)V

    .line 235
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 236
    .local v0, surfaceHolder:Landroid/view/SurfaceHolder;
    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {p0, v0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->updateSurfaceSize(Landroid/view/SurfaceHolder;)V

    .line 239
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 226
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    .line 227
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mReceiver:Lcom/android/systemui/ImageWallpaper$DrawableEngine$WallpaperObserver;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mReceiver:Lcom/android/systemui/ImageWallpaper$DrawableEngine$WallpaperObserver;

    invoke-virtual {v0, v1}, Lcom/android/systemui/ImageWallpaper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 230
    :cond_0
    return-void
.end method

.method public onOffsetsChanged(FFFFII)V
    .locals 2
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "xOffsetStep"
    .parameter "yOffsetStep"
    .parameter "xPixels"
    .parameter "yPixels"

    .prologue
    .line 284
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 285
    :try_start_0
    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mXOffset:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mYOffset:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    .line 289
    :cond_0
    iput p1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mXOffset:F

    .line 290
    iput p2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mYOffset:F

    .line 291
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOffsetsChanged:Z

    .line 293
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->drawFrameLocked()V

    .line 294
    monitor-exit v1

    .line 295
    return-void

    .line 294
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 303
    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 305
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 306
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mRedrawNeeded:Z

    .line 307
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->drawFrameLocked()V

    .line 308
    monitor-exit v1

    .line 309
    return-void

    .line 308
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 271
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 272
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 258
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 259
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVisible:Z

    if-eq v0, p1, :cond_0

    .line 263
    iput-boolean p1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVisible:Z

    .line 264
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->drawFrameLocked()V

    .line 266
    :cond_0
    monitor-exit v1

    .line 267
    return-void

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method updateSurfaceSize(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "surfaceHolder"

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getDesiredMinimumWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getDesiredMinimumHeight()I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 250
    return-void
.end method

.method updateWallpaperLocked()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 392
    const/4 v2, 0x0

    .line 394
    .local v2, exception:Ljava/lang/Throwable;
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-object v3, v3, Lcom/android/systemui/ImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 401
    :goto_0
    if-eqz v2, :cond_0

    .line 402
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    .line 406
    const-string v3, "ImageWallpaper"

    const-string v5, "Unable to load wallpaper!"

    invoke-static {v3, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 408
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-object v3, v3, Lcom/android/systemui/ImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v3}, Landroid/app/WallpaperManager;->clear()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 415
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    :goto_2
    iput v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    .line 416
    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    :cond_1
    iput v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    .line 417
    return-void

    .line 395
    :catch_0
    move-exception v0

    .line 396
    .local v0, e:Ljava/lang/RuntimeException;
    move-object v2, v0

    .line 399
    goto :goto_0

    .line 397
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 398
    .local v0, e:Ljava/lang/OutOfMemoryError;
    move-object v2, v0

    goto :goto_0

    .line 409
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v1

    .line 411
    .local v1, ex:Ljava/io/IOException;
    const-string v3, "ImageWallpaper"

    const-string v5, "Unable reset to default wallpaper!"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v1           #ex:Ljava/io/IOException;
    :cond_2
    move v3, v4

    .line 415
    goto :goto_2
.end method
