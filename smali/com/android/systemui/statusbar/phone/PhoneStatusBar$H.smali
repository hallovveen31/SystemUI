.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;
.super Lcom/android/systemui/statusbar/BaseStatusBar$H;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .parameter

    .prologue
    .line 1842
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/phone/PhoneStatusBar$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1842
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "m"

    .prologue
    const-wide/16 v12, 0x1a4

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 1844
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->handleMessage(Landroid/os/Message;)V

    .line 1846
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isPwdChangeEnforced()Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1990
    :cond_0
    :goto_0
    return-void

    .line 1850
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 1852
    :sswitch_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateExpand()V

    goto :goto_0

    .line 1855
    :sswitch_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapse()V

    goto :goto_0

    .line 1858
    :sswitch_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v3, 0x1

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setIntruderAlertVisibility(Z)V
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    goto :goto_0

    .line 1861
    :sswitch_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setIntruderAlertVisibility(Z)V
    invoke-static {v2, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    .line 1862
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v3, 0x0

    #setter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentlyIntrudingNotification:Lcom/android/internal/statusbar/StatusBarNotification;
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1302(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/internal/statusbar/StatusBarNotification;)Lcom/android/internal/statusbar/StatusBarNotification;

    goto :goto_0

    .line 1866
    :sswitch_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniModeTrayEnabled:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsMiniAppPanelLoadedProperly:Z

    if-eqz v2, :cond_0

    .line 1867
    const-string v2, "PhoneStatusBar"

    const-string v3, "opening mini mode apps panel"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1868
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 1870
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v2

    const/16 v3, 0x425

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1871
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1873
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniModeTrayClass:Ljava/lang/Class;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1879
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOpenMiniAppsPanel:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/ViewGroup;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1886
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniModeAppsPanelInAnim:Landroid/view/animation/Animation;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/animation/Animation;->reset()V

    .line 1887
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarOutAnim:Landroid/view/animation/Animation;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/animation/Animation;->reset()V

    .line 1889
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarContainerView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarOutAnim:Landroid/view/animation/Animation;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1890
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniModeTrayView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniModeAppsPanelInAnim:Landroid/view/animation/Animation;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1891
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->invalidate()V

    goto/16 :goto_0

    .line 1901
    :sswitch_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniModeTrayEnabled:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsMiniAppPanelLoadedProperly:Z

    if-eqz v2, :cond_0

    .line 1902
    const-string v2, "PhoneStatusBar"

    const-string v3, "closing mini mode apps panel"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1904
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1905
    .local v0, now:J
    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1906
    .local v8, ev:Landroid/view/MotionEvent;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1908
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 1910
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniModeTrayClass:Ljava/lang/Class;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1916
    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCloseMiniAppsPanel:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/ViewGroup;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1925
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMultiWindowEnabled:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1926
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniModeAppsPanelOutAnim:Landroid/view/animation/Animation;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 1927
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarInAnim:Landroid/view/animation/Animation;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 1972
    :goto_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniModeAppsPanelOutAnim:Landroid/view/animation/Animation;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/animation/Animation;->reset()V

    .line 1973
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarInAnim:Landroid/view/animation/Animation;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/animation/Animation;->reset()V

    .line 1976
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarContainerView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarInAnim:Landroid/view/animation/Animation;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1977
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniModeTrayView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniModeAppsPanelOutAnim:Landroid/view/animation/Animation;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1978
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->invalidate()V

    goto/16 :goto_0

    .line 1929
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/ViewGroup;

    move-result-object v2

    const v3, 0x7f0d005b

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    .line 1930
    .local v11, miniAppPanelContainer:Landroid/view/ViewGroup;
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    .line 1931
    .local v9, miniAppItemCount:I
    add-int/lit8 v2, v9, -0x1

    mul-int/lit8 v10, v2, 0x28

    .line 1933
    .local v10, miniAppItemHideAnimDelay:I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniModeAppsPanelOutAnim:Landroid/view/animation/Animation;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/animation/Animation;

    move-result-object v2

    int-to-long v3, v10

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 1934
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarInAnim:Landroid/view/animation/Animation;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/animation/Animation;

    move-result-object v2

    int-to-long v3, v10

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setStartOffset(J)V

    goto :goto_3

    .line 1986
    .end local v0           #now:J
    .end local v8           #ev:Landroid/view/MotionEvent;
    .end local v9           #miniAppItemCount:I
    .end local v10           #miniAppItemHideAnimDelay:I
    .end local v11           #miniAppPanelContainer:Landroid/view/ViewGroup;
    :sswitch_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSplitPanel:Lcom/android/systemui/multiwindow/SplitPanelView;

    invoke-virtual {v2, v4}, Lcom/android/systemui/multiwindow/SplitPanelView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1918
    .restart local v0       #now:J
    .restart local v8       #ev:Landroid/view/MotionEvent;
    :catch_0
    move-exception v2

    goto/16 :goto_2

    .line 1917
    :catch_1
    move-exception v2

    goto/16 :goto_2

    .line 1881
    .end local v0           #now:J
    .end local v8           #ev:Landroid/view/MotionEvent;
    :catch_2
    move-exception v2

    goto/16 :goto_1

    .line 1880
    :catch_3
    move-exception v2

    goto/16 :goto_1

    .line 1850
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_1
        0x402 -> :sswitch_2
        0x403 -> :sswitch_3
        0x424 -> :sswitch_4
        0x425 -> :sswitch_5
        0x442 -> :sswitch_6
    .end sparse-switch
.end method
