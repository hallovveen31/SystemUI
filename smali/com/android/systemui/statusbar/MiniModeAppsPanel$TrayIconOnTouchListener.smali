.class Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconOnTouchListener;
.super Ljava/lang/Object;
.source "MiniModeAppsPanel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/MiniModeAppsPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrayIconOnTouchListener"
.end annotation


# instance fields
.field private mPosX:I

.field private mPosY:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 2390
    iput-object p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconOnTouchListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2390
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconOnTouchListener;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "view"
    .parameter "event"

    .prologue
    const/16 v7, 0x425

    const/4 v6, 0x2

    const/4 v8, 0x0

    .line 2397
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconOnTouchListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #calls: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->isMiinAppsEditPanelShowing()Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4000(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Z

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    invoke-static {}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$1100()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2401
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 2419
    :goto_0
    :pswitch_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconOnTouchListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #calls: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->isMiinAppsEditPanelShowing()Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4000(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2481
    :cond_1
    :goto_1
    return v8

    .line 2404
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconOnTouchListener;->mPosX:I

    .line 2405
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconOnTouchListener;->mPosY:I

    .line 2406
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconOnTouchListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$1700(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v6, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 2407
    .local v2, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconOnTouchListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$1700(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 2408
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconOnTouchListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$1700(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v5, 0xfa

    invoke-virtual {v4, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 2413
    .end local v2           #msg:Landroid/os/Message;
    :pswitch_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconOnTouchListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$1700(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 2426
    :cond_2
    if-eqz p1, :cond_1

    .line 2428
    move-object v3, p1

    .line 2429
    .local v3, v:Landroid/view/View;
    const v4, 0x7f0d0057

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2431
    .local v0, appIcon:Landroid/widget/ImageView;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    goto :goto_1

    .line 2435
    :pswitch_3
    const/16 v4, 0x66

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 2437
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconOnTouchListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5700(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;->calculatePosition(Landroid/view/MotionEvent;)V

    .line 2439
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconOnTouchListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iput-boolean v8, v4, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mOnDragging:Z

    .line 2442
    invoke-static {}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$1100()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2443
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconOnTouchListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3300(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1

    .line 2450
    :pswitch_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconOnTouchListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mOnDragging:Z

    if-eqz v4, :cond_1

    .line 2452
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .line 2454
    .local v1, componentDescription:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconOnTouchListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5700(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;->calculatePosition(Landroid/view/MotionEvent;)V

    .line 2457
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconOnTouchListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniModeAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5800(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Lcom/sec/minimode/manager/MiniModeAppManager;

    move-result-object v4

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->name:Landroid/content/ComponentName;
    invoke-static {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->access$4400(Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;)Landroid/content/ComponentName;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconOnTouchListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;
    invoke-static {v6}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5700(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;

    move-result-object v6

    iget v6, v6, Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;->x:F

    float-to-int v6, v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconOnTouchListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;
    invoke-static {v7}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5700(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;

    move-result-object v7

    iget v7, v7, Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;->y:F

    float-to-int v7, v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/minimode/manager/MiniModeAppManager;->move(Landroid/content/ComponentName;II)V

    goto/16 :goto_1

    .line 2465
    .end local v1           #componentDescription:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    :pswitch_5
    const/16 v4, 0xff

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 2467
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconOnTouchListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iput-boolean v8, v4, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mOnDragging:Z

    .line 2470
    invoke-static {}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$1100()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2471
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconOnTouchListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3300(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 2472
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconOnTouchListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3300(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v5, 0x1388

    invoke-virtual {v4, v7, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 2401
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 2431
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
