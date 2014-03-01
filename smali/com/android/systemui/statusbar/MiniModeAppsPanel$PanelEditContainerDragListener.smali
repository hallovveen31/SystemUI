.class Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;
.super Ljava/lang/Object;
.source "MiniModeAppsPanel.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/MiniModeAppsPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PanelEditContainerDragListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 2888
    iput-object p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2888
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 12
    .parameter "targetView"
    .parameter "event"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2893
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 2896
    .local v0, action:I
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #calls: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->isAcceptableDragEvent(Landroid/view/DragEvent;)Z
    invoke-static {v8, p2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$6000(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Landroid/view/DragEvent;)Z

    move-result v8

    if-nez v8, :cond_0

    move v8, v9

    .line 2970
    :goto_0
    return v8

    .line 2902
    :cond_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentDraggingView:Landroid/view/View;
    invoke-static {v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5600(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v6

    .line 2903
    .local v6, sourceView:Landroid/view/View;
    if-nez v6, :cond_1

    move v8, v9

    .line 2905
    goto :goto_0

    .line 2907
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    if-nez v8, :cond_3

    :cond_2
    move v8, v9

    .line 2910
    goto :goto_0

    .line 2912
    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .line 2914
    .local v1, cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    packed-switch v0, :pswitch_data_0

    move v8, v9

    .line 2970
    goto :goto_0

    .line 2916
    :pswitch_0
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    iget-object v11, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5000(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v11

    if-ne v8, v11, :cond_4

    move v8, v10

    .line 2921
    goto :goto_0

    :cond_4
    move v8, v9

    .line 2923
    goto :goto_0

    :pswitch_1
    move v8, v10

    .line 2929
    goto :goto_0

    .line 2932
    :pswitch_2
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->isChosen()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 2934
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5000(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getIconView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 2937
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v8, v8, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mPreviewAnimationSet:Landroid/view/animation/AnimationSet;

    if-eqz v8, :cond_5

    .line 2938
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getPreview()Landroid/view/View;

    move-result-object v8

    const v11, 0x7f0d0068

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 2939
    .local v4, previewIcon:Landroid/widget/ImageView;
    invoke-virtual {v4}, Landroid/widget/ImageView;->clearAnimation()V

    .line 2940
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v8, v8, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mPreviewAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2941
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v8, v8, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mPreviewAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2944
    .end local v4           #previewIcon:Landroid/widget/ImageView;
    :cond_5
    invoke-virtual {v1, v9}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->setChosen(Z)V

    .line 2948
    invoke-static {}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$1100()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 2949
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getPreview()Landroid/view/View;

    move-result-object v9

    #calls: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->addViewToEditPanel(Landroid/view/View;)V
    invoke-static {v8, v9}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$6500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Landroid/view/View;)V

    .line 2960
    :cond_6
    :goto_1
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->updatePreview()V

    .line 2962
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;
    invoke-static {v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5400(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/Button;

    move-result-object v8

    const/high16 v9, 0x3f80

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setAlpha(F)V

    .line 2963
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;
    invoke-static {v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5400(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/Button;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setEnabled(Z)V

    move v8, v10

    .line 2965
    goto/16 :goto_0

    .line 2952
    :cond_7
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;
    invoke-static {v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$6100(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/ViewGroup;

    move-result-object v8

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getPreview()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 2953
    .local v3, i:I
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;
    invoke-static {v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$6100(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/ViewGroup;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 2954
    .local v5, previewWidth:I
    mul-int v7, v3, v5

    .line 2955
    .local v7, xOffsetAtLeft:I
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/FrameLayout;
    invoke-static {v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4100(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/FrameLayout;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v8

    sub-int/2addr v8, v5

    div-int/lit8 v2, v8, 0x2

    .line 2956
    .local v2, centerX:I
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/FrameLayout;
    invoke-static {v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4100(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/FrameLayout;

    move-result-object v8

    instance-of v8, v8, Landroid/widget/HorizontalScrollView;

    if-eqz v8, :cond_6

    .line 2957
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/FrameLayout;
    invoke-static {v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4100(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/FrameLayout;

    move-result-object v8

    check-cast v8, Landroid/widget/HorizontalScrollView;

    sub-int v11, v7, v2

    invoke-virtual {v8, v11, v9}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_1

    .end local v2           #centerX:I
    .end local v3           #i:I
    .end local v5           #previewWidth:I
    .end local v7           #xOffsetAtLeft:I
    :cond_8
    move v8, v9

    .line 2967
    goto/16 :goto_0

    .line 2914
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
