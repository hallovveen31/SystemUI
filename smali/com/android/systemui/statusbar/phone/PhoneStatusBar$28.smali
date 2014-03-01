.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;
.super Landroid/content/BroadcastReceiver;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .parameter

    .prologue
    .line 3574
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

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

    .line 3576
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3577
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3578
    const/4 v2, 0x0

    .line 3579
    .local v2, flags:I
    const-string v4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3580
    const-string v4, "reason"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3581
    .local v3, reason:Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v4, "recentapps"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3582
    or-int/lit8 v2, v2, 0x2

    .line 3585
    .end local v3           #reason:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapse(I)V

    .line 3643
    .end local v2           #flags:I
    :cond_1
    :goto_0
    return-void

    .line 3587
    :cond_2
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3589
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->performCollapse()V

    .line 3592
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUseStatusBarMarquee:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3593
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->marqueeStatusBar()V

    .line 3594
    const-string v4, "STATUSBAR-PhoneStatusBar"

    const-string v5, "marqueeStatusBar()"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3595
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 3596
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->marqueeNavigationBar()V

    .line 3597
    const-string v4, "STATUSBAR-PhoneStatusBar"

    const-string v5, "marqueeNavigationBar()"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3602
    :cond_3
    const-string v4, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3603
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateResources()V

    .line 3604
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->repositionNavigationBar()V
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 3605
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/16 v5, -0x2710

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    goto :goto_0

    .line 3609
    :cond_4
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 3610
    const-string v4, "STATUSBAR-PhoneStatusBar"

    const-string v5, "ACTION_BATTERY_CHANGED"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3612
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v6, 0x7f0d00eb

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->brightnessController:Landroid/view/View;

    .line 3613
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->brightnessController:Landroid/view/View;

    if-eqz v4, :cond_1

    sget-boolean v4, Lcom/android/systemui/statusbar/BaseStatusBar;->showBrightController:Z

    if-eqz v4, :cond_1

    .line 3614
    const-string v4, "level"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x5

    if-gt v4, v5, :cond_6

    .line 3615
    const-string v4, "status"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 3616
    .local v1, battStatus:I
    const/4 v4, 0x2

    if-ne v1, v4, :cond_5

    .line 3617
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebyBattery:Z
    invoke-static {v4, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5202(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 3618
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebySettings:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3619
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->brightnessController:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 3622
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->brightnessController:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3623
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebyBattery:Z
    invoke-static {v4, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5202(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 3624
    const-string v4, "STATUSBAR-PhoneStatusBar"

    const-string v5, "LOW_BATTERY"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3627
    .end local v1           #battStatus:I
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebyBattery:Z
    invoke-static {v4, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5202(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 3628
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebySettings:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3629
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->brightnessController:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3631
    :cond_7
    const-string v4, "STATUSBAR-PhoneStatusBar"

    const-string v5, "NORMAL_BATTERY"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3638
    :cond_8
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-boolean v4, Lcom/android/systemui/statusbar/BaseStatusBar;->useAttPlmnDisplay:Z

    if-ne v4, v8, :cond_1

    .line 3639
    const-string v4, "STATUSBAR-PhoneStatusBar"

    const-string v5, "ACTION_SCREEN_ON"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3640
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showPlmnString()V

    goto/16 :goto_0
.end method
