.class Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRestoreRotationRunnable;
.super Ljava/lang/Object;
.source "BaseContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/smartswitcher/BaseContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyRestoreRotationRunnable"
.end annotation


# instance fields
.field global_timeout:I

.field final synthetic this$0:Lcom/android/systemui/recent/smartswitcher/BaseContainer;

.field timeout:I


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/smartswitcher/BaseContainer;)V
    .locals 1
    .parameter

    .prologue
    .line 341
    iput-object p1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRestoreRotationRunnable;->this$0:Lcom/android/systemui/recent/smartswitcher/BaseContainer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 338
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRestoreRotationRunnable;->timeout:I

    .line 339
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRestoreRotationRunnable;->global_timeout:I

    .line 342
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRestoreRotationRunnable;->init()Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRestoreRotationRunnable;

    .line 343
    return-void
.end method


# virtual methods
.method init()Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRestoreRotationRunnable;
    .locals 1

    .prologue
    .line 346
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRestoreRotationRunnable;->global_timeout:I

    .line 347
    return-object p0
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 351
    iget v3, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRestoreRotationRunnable;->global_timeout:I

    iget v4, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRestoreRotationRunnable;->timeout:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRestoreRotationRunnable;->global_timeout:I

    .line 352
    iget-object v3, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRestoreRotationRunnable;->this$0:Lcom/android/systemui/recent/smartswitcher/BaseContainer;

    iget v3, v3, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->rotated_angle:F

    iget v4, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRestoreRotationRunnable;->global_timeout:I

    iget v5, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRestoreRotationRunnable;->timeout:I

    div-int/2addr v4, v5

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 353
    .local v0, dpm:F
    iget-object v3, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRestoreRotationRunnable;->this$0:Lcom/android/systemui/recent/smartswitcher/BaseContainer;

    iget v4, v3, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->rotated_angle:F

    sub-float/2addr v4, v0

    iput v4, v3, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->rotated_angle:F

    .line 355
    iget-object v3, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRestoreRotationRunnable;->this$0:Lcom/android/systemui/recent/smartswitcher/BaseContainer;

    iget v3, v3, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->rotated_angle:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    .line 356
    iget-object v3, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRestoreRotationRunnable;->this$0:Lcom/android/systemui/recent/smartswitcher/BaseContainer;

    iput v6, v3, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->rotated_angle:F

    .line 358
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRestoreRotationRunnable;->this$0:Lcom/android/systemui/recent/smartswitcher/BaseContainer;

    iget v3, v3, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    add-int/lit8 v1, v3, 0x1

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRestoreRotationRunnable;->this$0:Lcom/android/systemui/recent/smartswitcher/BaseContainer;

    iget v3, v3, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    if-ge v1, v3, :cond_1

    .line 359
    iget-object v3, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRestoreRotationRunnable;->this$0:Lcom/android/systemui/recent/smartswitcher/BaseContainer;

    iget-object v3, v3, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 360
    .local v2, v:Landroid/view/View;
    iget-object v3, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRestoreRotationRunnable;->this$0:Lcom/android/systemui/recent/smartswitcher/BaseContainer;

    iget-object v4, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRestoreRotationRunnable;->this$0:Lcom/android/systemui/recent/smartswitcher/BaseContainer;

    iget v4, v4, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->rotated_angle:F

    invoke-virtual {v3, v2, v4}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->setRotation(Landroid/view/View;F)V

    .line 358
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 362
    .end local v2           #v:Landroid/view/View;
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRestoreRotationRunnable;->this$0:Lcom/android/systemui/recent/smartswitcher/BaseContainer;

    iget v3, v3, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->rotated_angle:F

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_2

    .line 363
    iget-object v3, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRestoreRotationRunnable;->this$0:Lcom/android/systemui/recent/smartswitcher/BaseContainer;

    iget v4, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRestoreRotationRunnable;->timeout:I

    int-to-long v4, v4

    invoke-virtual {v3, p0, v4, v5}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 365
    :cond_2
    return-void
.end method
