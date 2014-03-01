.class Lcom/android/systemui/statusbar/MiniModeAppsPanel$16;
.super Ljava/lang/Object;
.source "MiniModeAppsPanel.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/MiniModeAppsPanel;->refreshApplicationList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 1715
    iput-object p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$16;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 18
    .parameter "v"
    .parameter "event"

    .prologue
    .line 1718
    const-string v12, "MiniModeAppsPanel"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mGuidelineView:onDrag() : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getAction()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getAction()I

    move-result v12

    packed-switch v12, :pswitch_data_0

    .line 1817
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v12, 0x1

    return v12

    .line 1723
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$16;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v12, v12, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTopGuideLine:Landroid/view/View;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 1724
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$16;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v12, v12, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBottomGuideLine:Landroid/view/View;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 1726
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$16;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v12, v12, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mGuideLineViewParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v13, 0x0

    iput v13, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1727
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$16;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v12, v12, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mGuideLineViewParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v13, 0x0

    iput v13, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1728
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$16;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v13, v13, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mGuideLineView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$16;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v14, v14, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mGuideLineViewParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v12, v13, v14}, Landroid/view/WindowManagerImpl;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1729
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$16;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    const/4 v13, 0x0

    iput-object v13, v12, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDragItemDescription:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    goto :goto_0

    .line 1733
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$16;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget v12, v12, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentLaunchMode:I

    sget v13, Lcom/android/systemui/multiwindow/MultiWindowReflector$Configuration;->ARRANGE_CASCADE:I

    if-ne v12, v13, :cond_1

    .line 1734
    new-instance v7, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$16;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v12, v12, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentAppRect:Landroid/graphics/Rect;

    invoke-direct {v7, v12}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1735
    .local v7, offsetRect:Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getX()F

    move-result v12

    float-to-int v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$16;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v13, v13, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentAppRect:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    sub-int/2addr v12, v13

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getY()F

    move-result v13

    float-to-int v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$16;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget v14, v14, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mActionBarHeight:I

    div-int/lit8 v14, v14, 0x2

    sub-int/2addr v13, v14

    invoke-virtual {v7, v12, v13}, Landroid/graphics/Rect;->offset(II)V

    .line 1736
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$16;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v12, v12, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTopGuideLine:Landroid/view/View;

    iget v13, v7, Landroid/graphics/Rect;->left:I

    iget v14, v7, Landroid/graphics/Rect;->top:I

    iget v15, v7, Landroid/graphics/Rect;->right:I

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Landroid/view/View;->layout(IIII)V

    .line 1737
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$16;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v12, v12, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTopGuideLine:Landroid/view/View;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1739
    .end local v7           #offsetRect:Landroid/graphics/Rect;
    :cond_1
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 1740
    .local v4, displaySize:Landroid/graphics/Point;
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v12

    invoke-virtual {v12, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1741
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$16;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v8, v12, Landroid/content/res/Configuration;->orientation:I

    .line 1744
    .local v8, orientation:I
    invoke-static {}, Lcom/android/systemui/multiwindow/MultiWindowReflector$MultiWindowManager;->getSplitRect()Landroid/graphics/Rect;

    move-result-object v10

    .line 1746
    .local v10, splitRect:Landroid/graphics/Rect;
    const/4 v12, 0x1

    if-eq v8, v12, :cond_3

    .line 1747
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$16;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4200(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    invoke-static {v12}, Lcom/android/systemui/multiwindow/MultiWindowReflector$Configuration;->getCenterBarRect(Landroid/content/res/Configuration;)Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 1748
    .local v2, centerBarWidth:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$16;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    new-instance v13, Landroid/graphics/Rect;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerX()I

    move-result v16

    div-int/lit8 v17, v2, 0x2

    sub-int v16, v16, v17

    iget v0, v4, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    invoke-direct/range {v13 .. v17}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v13, v12, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTopGuideLineRect:Landroid/graphics/Rect;

    .line 1749
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$16;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    new-instance v13, Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerX()I

    move-result v14

    div-int/lit8 v15, v2, 0x2

    add-int/2addr v14, v15

    const/4 v15, 0x0

    iget v0, v4, Landroid/graphics/Point;->x:I

    move/from16 v16, v0

    iget v0, v4, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    invoke-direct/range {v13 .. v17}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v13, v12, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBottomGuideLineRect:Landroid/graphics/Rect;

    .line 1761
    .end local v2           #centerBarWidth:I
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$16;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v12, v12, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTopGuideLine:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$16;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v13, v13, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTopGuideLineRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$16;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v14, v14, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTopGuideLineRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$16;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v15, v15, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTopGuideLineRect:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$16;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTopGuideLineRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Landroid/view/View;->layout(IIII)V

    .line 1762
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$16;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v12, v12, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBottomGuideLine:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$16;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v13, v13, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBottomGuideLineRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$16;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v14, v14, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBottomGuideLineRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$16;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v15, v15, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBottomGuideLineRect:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$16;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBottomGuideLineRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Landroid/view/View;->layout(IIII)V

    .line 1764
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$16;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v12, v12, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTopGuideLineRect:Landroid/graphics/Rect;

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getX()F

    move-result v13

    float-to-int v13, v13

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getY()F

    move-result v14

    float-to-int v14, v14

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Rect;->contains(II)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1765
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$16;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v12, v12, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTopGuideLine:Landroid/view/View;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 1766
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$16;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v12, v12, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBottomGuideLine:Landroid/view/View;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1751
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$16;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    new-instance v13, Landroid/graphics/Rect;

    const/4 v14, 0x0

    const/4 v15, 0x0

    iget v0, v4, Landroid/graphics/Point;->x:I

    move/from16 v16, v0

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v17

    invoke-direct/range {v13 .. v17}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v13, v12, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTopGuideLineRect:Landroid/graphics/Rect;

    .line 1752
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$16;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    new-instance v13, Landroid/graphics/Rect;

    const/4 v14, 0x0

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v15

    iget v0, v4, Landroid/graphics/Point;->x:I

    move/from16 v16, v0

    iget v0, v4, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    invoke-direct/range {v13 .. v17}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v13, v12, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBottomGuideLineRect:Landroid/graphics/Rect;

    .line 1754
    invoke-static {}, Lcom/android/systemui/multiwindow/MultiWindowReflector$MultiWindowManager;->getCurrentStatusBarVisibility()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1755
    invoke-static {}, Lcom/android/systemui/multiwindow/MultiWindowReflector$MultiWindowManager;->getStatusBarHeight()I

    move-result v11

    .line 1756
    .local v11, statusBarHeight:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$16;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4300(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    invoke-static {v12}, Lcom/android/systemui/multiwindow/MultiWindowReflector$Configuration;->getCenterBarRect(Landroid/content/res/Configuration;)Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 1757
    .local v1, centerBarHeight:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$16;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v12, v12, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTopGuideLineRect:Landroid/graphics/Rect;

    iget v13, v12, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v14, v1, 0x2

    add-int/2addr v14, v11

    sub-int/2addr v13, v14

    iput v13, v12, Landroid/graphics/Rect;->bottom:I

    .line 1758
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$16;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v12, v12, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBottomGuideLineRect:Landroid/graphics/Rect;

    iget v13, v12, Landroid/graphics/Rect;->top:I

    div-int/lit8 v14, v1, 0x2

    sub-int v14, v11, v14

    sub-int/2addr v13, v14

    iput v13, v12, Landroid/graphics/Rect;->top:I

    goto/16 :goto_1

    .line 1768
    .end local v1           #centerBarHeight:I
    .end local v11           #statusBarHeight:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$16;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v12, v12, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTopGuideLine:Landroid/view/View;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 1769
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$16;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v12, v12, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBottomGuideLine:Landroid/view/View;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1774
    .end local v4           #displaySize:Landroid/graphics/Point;
    .end local v8           #orientation:I
    .end local v10           #splitRect:Landroid/graphics/Rect;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$16;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v12, v12, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTopGuideLine:Landroid/view/View;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 1775
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$16;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v12, v12, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBottomGuideLine:Landroid/view/View;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1778
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$16;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v12, v12, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDragItemDescription:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    if-eqz v12, :cond_0

    .line 1779
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$16;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v3, v12, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDragItemDescription:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .line 1780
    .local v3, d:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$16;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    const/4 v13, 0x0

    iput-object v13, v12, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDragItemDescription:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .line 1782
    const/4 v6, 0x0

    .line 1783
    .local v6, launchZone:I
    const/4 v9, 0x0

    .line 1784
    .local v9, position:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$16;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget v12, v12, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentLaunchMode:I

    sget v13, Lcom/android/systemui/multiwindow/MultiWindowReflector$Configuration;->ARRANGE_CASCADE:I

    if-ne v12, v13, :cond_7

    .line 1785
    new-instance v9, Landroid/graphics/Rect;

    .end local v9           #position:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$16;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v12, v12, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentAppRect:Landroid/graphics/Rect;

    invoke-direct {v9, v12}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1786
    .restart local v9       #position:Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getX()F

    move-result v12

    float-to-int v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$16;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v13, v13, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentAppRect:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    sub-int/2addr v12, v13

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getY()F

    move-result v13

    float-to-int v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$16;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget v14, v14, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mActionBarHeight:I

    div-int/lit8 v14, v14, 0x2

    sub-int/2addr v13, v14

    invoke-virtual {v9, v12, v13}, Landroid/graphics/Rect;->offset(II)V

    .line 1796
    :goto_2
    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.intent.action.MAIN"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->name:Landroid/content/ComponentName;
    invoke-static {v3}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->access$4400(Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;)Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    .line 1797
    .local v5, intent:Landroid/content/Intent;
    const-string v12, "android.intent.category.LAUNCHER"

    invoke-virtual {v5, v12}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1798
    const/high16 v12, 0x1020

    invoke-virtual {v5, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1799
    sget-object v12, Lcom/android/systemui/multiwindow/MultiWindowReflector$Intent;->EXTRA_WINDOW_MODE:Ljava/lang/String;

    sget v13, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_FREESTYLE:I

    or-int/2addr v13, v6

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1800
    if-eqz v9, :cond_5

    .line 1801
    sget-object v12, Lcom/android/systemui/multiwindow/MultiWindowReflector$Intent;->EXTRA_WINDOW_POSITION:Ljava/lang/String;

    invoke-virtual {v5, v12, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1805
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$16;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW_MULTIINSTANCE:Z
    invoke-static {v12}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1806
    const/high16 v12, 0x800

    invoke-virtual {v5, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1809
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$16;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1811
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$16;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3300(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/os/Handler;

    move-result-object v12

    const/16 v13, 0x425

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 1812
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$16;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3300(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/os/Handler;

    move-result-object v12

    const/16 v13, 0x425

    const-wide/16 v14, 0x1388

    invoke-virtual {v12, v13, v14, v15}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1788
    .end local v5           #intent:Landroid/content/Intent;
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$16;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v12, v12, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTopGuideLineRect:Landroid/graphics/Rect;

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getX()F

    move-result v13

    float-to-int v13, v13

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getY()F

    move-result v14

    float-to-int v14, v14

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Rect;->contains(II)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1789
    sget v6, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_A:I

    goto :goto_2

    .line 1791
    :cond_8
    sget v6, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_B:I

    goto :goto_2

    .line 1719
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
