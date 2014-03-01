.class Lcom/android/systemui/statusbar/tablet/TabletStatusBar$13;
.super Landroid/content/BroadcastReceiver;
.source "TabletStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/tablet/TabletStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V
    .locals 0
    .parameter

    .prologue
    .line 2756
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$13;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2758
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2759
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2761
    :cond_0
    const/4 v3, 0x0

    .line 2762
    .local v3, flags:I
    const-string v5, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2763
    const-string v5, "reason"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2764
    .local v4, reason:Ljava/lang/String;
    if-eqz v4, :cond_1

    const-string v5, "recentapps"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2765
    or-int/lit8 v3, v3, 0x2

    .line 2768
    .end local v4           #reason:Ljava/lang/String;
    :cond_1
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2773
    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$13;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;
    invoke-static {v5}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$5500(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/recent/RecentsPanelView;

    move-result-object v5

    invoke-virtual {v5, v7, v7}, Lcom/android/systemui/recent/RecentsPanelView;->show(ZZ)V

    .line 2774
    or-int/lit8 v3, v3, 0x2

    .line 2776
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$13;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->animateCollapse(I)V

    .line 2804
    .end local v3           #flags:I
    :cond_3
    :goto_0
    return-void

    .line 2778
    :cond_4
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2779
    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$13;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v5, v5, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v6, 0x7f0d00eb

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2780
    .local v2, brightnessController:Landroid/view/View;
    const-string v5, "level"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x5

    if-gt v5, v6, :cond_6

    .line 2781
    const-string v5, "status"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2782
    .local v1, battStatus:I
    const/4 v5, 0x2

    if-ne v1, v5, :cond_5

    .line 2783
    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$13;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #setter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBrightnessEnablebyBattery:Z
    invoke-static {v5, v8}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$5602(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Z)Z

    .line 2784
    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$13;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBrightnessEnablebySettings:Z
    invoke-static {v5}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$5700(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2785
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2788
    :cond_5
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2789
    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$13;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #setter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBrightnessEnablebyBattery:Z
    invoke-static {v5, v7}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$5602(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Z)Z

    goto :goto_0

    .line 2792
    .end local v1           #battStatus:I
    :cond_6
    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$13;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #setter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBrightnessEnablebyBattery:Z
    invoke-static {v5, v8}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$5602(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Z)Z

    .line 2793
    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$13;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBrightnessEnablebySettings:Z
    invoke-static {v5}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$5700(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2794
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2799
    .end local v2           #brightnessController:Landroid/view/View;
    :cond_7
    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->useAttPlmnDisplay:Z

    if-eqz v5, :cond_3

    .line 2800
    const-string v5, "TabletStatusBar"

    const-string v6, "ACTION_SCREEN_ON"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2801
    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$13;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->showPlmnString()V

    goto :goto_0
.end method
