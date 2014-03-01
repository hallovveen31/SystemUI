.class Lcom/android/systemui/statusbar/MiniModeAppsPanel$2;
.super Landroid/os/Handler;
.source "MiniModeAppsPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/MiniModeAppsPanel;
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
    .line 673
    iput-object p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$2;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 676
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 737
    :cond_0
    :goto_0
    return-void

    .line 680
    :pswitch_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$2;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 681
    .local v1, config:Landroid/content/res/Configuration;
    iget v6, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v3, :cond_1

    .line 683
    .local v3, isPortrait:Z
    :goto_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .line 685
    .local v0, cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    if-nez v0, :cond_2

    .line 686
    const-string v5, "MiniModeAppsPanel"

    const-string v6, "handleMessage : findComponentDescriptionByName return NULL"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    .end local v3           #isPortrait:Z
    :cond_1
    move v3, v5

    .line 681
    goto :goto_1

    .line 691
    .restart local v0       #cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    .restart local v3       #isPortrait:Z
    :cond_2
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->updateResources(Z)V

    goto :goto_0

    .line 696
    .end local v0           #cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    .end local v1           #config:Landroid/content/res/Configuration;
    .end local v3           #isPortrait:Z
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    .line 699
    .local v2, iconView:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 702
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$2;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTrayIconLongClickListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconLongClickListener;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$1800(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconLongClickListener;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconLongClickListener;->onLongClick(Landroid/view/View;)Z

    .line 705
    invoke-static {}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$1100()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 706
    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$2;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static {v5}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$2000(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/os/SystemVibrator;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$2;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIvt:[B
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$1900(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)[B

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$2;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static {v7}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$2000(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/os/SystemVibrator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V

    goto :goto_0

    .line 709
    :cond_3
    invoke-virtual {v2, v5}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_0

    .line 716
    .end local v2           #iconView:Landroid/view/View;
    :pswitch_2
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/view/View;

    .line 719
    .local v4, previewView:Landroid/view/View;
    if-eqz v4, :cond_0

    .line 722
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$2;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mPreviewItemLongClickListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemLongClickListener;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$2100(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemLongClickListener;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemLongClickListener;->onLongClick(Landroid/view/View;)Z

    .line 723
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .line 724
    .restart local v0       #cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->isChosen()Z

    move-result v6

    if-nez v6, :cond_0

    .line 727
    invoke-static {}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$1100()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 728
    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$2;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static {v5}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$2000(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/os/SystemVibrator;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$2;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIvt:[B
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$1900(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)[B

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$2;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static {v7}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$2000(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/os/SystemVibrator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V

    goto/16 :goto_0

    .line 731
    :cond_4
    invoke-virtual {v4, v5}, Landroid/view/View;->performHapticFeedback(I)Z

    goto/16 :goto_0

    .line 676
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
