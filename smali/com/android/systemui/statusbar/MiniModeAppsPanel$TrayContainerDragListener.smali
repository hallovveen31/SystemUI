.class Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;
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
    name = "TrayContainerDragListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 2719
    iput-object p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2719
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 9
    .parameter "targetView"
    .parameter "event"

    .prologue
    const/high16 v7, 0x3f80

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2724
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 2727
    .local v0, action:I
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #calls: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->isAcceptableDragEvent(Landroid/view/DragEvent;)Z
    invoke-static {v6, p2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$6000(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Landroid/view/DragEvent;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2814
    :cond_0
    :goto_0
    return v4

    .line 2733
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentDraggingView:Landroid/view/View;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5600(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v3

    .line 2734
    .local v3, sourceView:Landroid/view/View;
    if-eqz v3, :cond_0

    .line 2736
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    if-eqz v6, :cond_0

    .line 2740
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .line 2742
    .local v1, cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v4, v5

    .line 2744
    goto :goto_0

    :pswitch_1
    move v4, v5

    .line 2748
    goto :goto_0

    .line 2751
    :pswitch_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    const/4 v6, 0x0

    #setter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentDraggingView:Landroid/view/View;
    invoke-static {v4, v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5602(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Landroid/view/View;)Landroid/view/View;

    .line 2752
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContainerScrollerForDrag:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollForDragRunnable;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$6400(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollForDragRunnable;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->removeCallbacks(Ljava/lang/Runnable;)Z

    move v4, v5

    .line 2753
    goto :goto_0

    .line 2757
    :pswitch_3
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$6100(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/ViewGroup;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$1100()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$6100(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/ViewGroup;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2762
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$6300(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 2763
    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->setChosen(Z)V

    .line 2764
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->updatePreview()V

    .line 2767
    invoke-static {}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$1100()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2768
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getPreview()Landroid/view/View;

    move-result-object v6

    #calls: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->removeViewFromEditPanel(Landroid/view/View;)V
    invoke-static {v4, v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4900(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Landroid/view/View;)V

    .line 2771
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5000(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyView:Landroid/view/View;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$6200(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 2772
    .local v2, i:I
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5000(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyView:Landroid/view/View;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$6200(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 2773
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5000(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getIconView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v4, v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 2775
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5400(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setAlpha(F)V

    .line 2776
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5400(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2787
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContainerScrollerForDrag:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollForDragRunnable;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$6400(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollForDragRunnable;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->removeCallbacks(Ljava/lang/Runnable;)Z

    move v4, v5

    .line 2788
    goto/16 :goto_0

    .line 2778
    .end local v2           #i:I
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5000(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 2779
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5000(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyView:Landroid/view/View;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$6200(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 2780
    .restart local v2       #i:I
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5000(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyView:Landroid/view/View;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$6200(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 2781
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5000(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 2783
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5400(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setAlpha(F)V

    .line 2784
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5400(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 2792
    .end local v2           #i:I
    :pswitch_4
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5000(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-gtz v6, :cond_5

    move v4, v5

    .line 2793
    goto/16 :goto_0

    .line 2796
    :cond_5
    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v7}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5000(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_7

    .line 2797
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIsScrollDelayed:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5100(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 2798
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #setter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIsScrollDelayed:Z
    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5102(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Z)Z

    .line 2799
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #setter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIsScrollLeft:Z
    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5202(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Z)Z

    .line 2800
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContainerScrollerForDrag:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollForDragRunnable;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$6400(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollForDragRunnable;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->post(Ljava/lang/Runnable;)Z

    :cond_6
    :goto_2
    move v4, v5

    .line 2811
    goto/16 :goto_0

    .line 2802
    :cond_7
    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5000(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_8

    .line 2803
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIsScrollDelayed:Z
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5100(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 2804
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #setter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIsScrollDelayed:Z
    invoke-static {v6, v5}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5102(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Z)Z

    .line 2805
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #setter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIsScrollLeft:Z
    invoke-static {v6, v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5202(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Z)Z

    .line 2806
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContainerScrollerForDrag:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollForDragRunnable;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$6400(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollForDragRunnable;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 2809
    :cond_8
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContainerScrollerForDrag:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollForDragRunnable;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$6400(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollForDragRunnable;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 2742
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
