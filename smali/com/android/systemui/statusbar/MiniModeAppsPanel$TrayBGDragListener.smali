.class Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayBGDragListener;
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
    name = "TrayBGDragListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 2819
    iput-object p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayBGDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2819
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayBGDragListener;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 7
    .parameter "targetView"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2824
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 2827
    .local v0, action:I
    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayBGDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #calls: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->isAcceptableDragEvent(Landroid/view/DragEvent;)Z
    invoke-static {v5, p2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$6000(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Landroid/view/DragEvent;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2883
    :cond_0
    :goto_0
    return v3

    .line 2833
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayBGDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentDraggingView:Landroid/view/View;
    invoke-static {v5}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5600(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v2

    .line 2834
    .local v2, sourceView:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 2836
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    if-eqz v5, :cond_0

    .line 2840
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .line 2842
    .local v1, cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2845
    :pswitch_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayBGDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5000(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    .line 2846
    goto :goto_0

    :pswitch_1
    move v3, v4

    .line 2855
    goto :goto_0

    .line 2858
    :pswitch_2
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayBGDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$6100(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/ViewGroup;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$1100()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayBGDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$6100(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/ViewGroup;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2863
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayBGDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$6300(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 2864
    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->setChosen(Z)V

    .line 2865
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->updatePreview()V

    .line 2868
    invoke-static {}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$1100()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2869
    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayBGDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getPreview()Landroid/view/View;

    move-result-object v6

    #calls: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->removeViewFromEditPanel(Landroid/view/View;)V
    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4900(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Landroid/view/View;)V

    .line 2872
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayBGDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5000(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getIconView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 2874
    iget-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayBGDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5400(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/Button;

    move-result-object v3

    const/high16 v5, 0x3f80

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setAlpha(F)V

    .line 2875
    iget-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayBGDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5400(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    move v3, v4

    .line 2877
    goto/16 :goto_0

    .line 2842
    nop

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
