.class public Lcom/android/systemui/statusbar/policy/BatteryController;
.super Landroid/content/BroadcastReceiver;
.source "BatteryController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StatusBar.BatteryController"

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-BatteryController"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 42
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIconViews:Ljava/util/ArrayList;

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    .line 46
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    .line 48
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 49
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 51
    return-void
.end method


# virtual methods
.method public addIconView(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method

.method public addLabelView(Landroid/widget/TextView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, action:Ljava/lang/String;
    const-string v11, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 64
    const-string v11, "STATUSBAR-BatteryController"

    const-string v12, "onReceive() - ACTION_BATTERY_CHANGED"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const-string v11, "level"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 66
    .local v6, level:I
    const-string v11, "STATUSBAR-BatteryController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onReceive() - level:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const-string v11, "plugged"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 69
    .local v9, plugged:I
    const-string v11, "STATUSBAR-BatteryController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onReceive() - plugged:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    if-eqz v9, :cond_1

    const v5, 0x7f0200b0

    .line 75
    .local v5, icon:I
    :goto_0
    sget-boolean v11, Lcom/android/systemui/statusbar/BaseStatusBar;->useTouchWizGUI:Z

    if-eqz v11, :cond_0

    .line 76
    const-string v11, "status"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    packed-switch v11, :pswitch_data_0

    .line 125
    const-string v11, "STATUSBAR-BatteryController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onReceive() - : BatteryManager.EXTRA_STATUS  -  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "status"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0152

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 136
    .local v8, op:Ljava/lang/String;
    :goto_2
    const-string v11, "VZW"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "online"

    const/4 v12, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_0

    .line 137
    const-string v11, "STATUSBAR-BatteryController"

    const-string v12, "onReceive() - online == 0 && VZW"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const v5, 0x7f0200ba

    .line 143
    .end local v8           #op:Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 144
    .local v1, N:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    if-ge v4, v1, :cond_8

    .line 145
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 146
    .local v10, v:Landroid/widget/ImageView;
    invoke-virtual {v10, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 147
    invoke-virtual {v10, v6}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 148
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    const v12, 0x7f0a00c9

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 144
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 70
    .end local v1           #N:I
    .end local v4           #i:I
    .end local v5           #icon:I
    .end local v10           #v:Landroid/widget/ImageView;
    :cond_1
    const v5, 0x7f0200a7

    goto/16 :goto_0

    .line 78
    .restart local v5       #icon:I
    :pswitch_0
    const-string v11, "STATUSBAR-BatteryController"

    const-string v12, "onReceive() - BATTERY_STATUS_CHARGING:"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const v5, 0x7f0200b0

    .line 80
    goto :goto_1

    .line 82
    :pswitch_1
    sget-boolean v11, Lcom/android/systemui/statusbar/BaseStatusBar;->canStatusBarHide:Z

    if-eqz v11, :cond_2

    sget-boolean v11, Lcom/android/systemui/statusbar/BaseStatusBar;->canNavigationBarMove:Z

    if-nez v11, :cond_3

    :cond_2
    const/4 v11, 0x2

    if-ne v9, v11, :cond_3

    .line 84
    const v5, 0x7f020254

    .line 85
    const-string v11, "STATUSBAR-BatteryController"

    const-string v12, "onReceive() - BATTERY_STATUS_DISCHARGING: tw_stat_sys_battery_usb_not_charge"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 87
    :cond_3
    const v5, 0x7f0200a7

    .line 88
    const-string v11, "STATUSBAR-BatteryController"

    const-string v12, "onReceive() - BATTERY_STATUS_DISCHARGING: stat_sys_battery"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 92
    :pswitch_2
    const-string v11, "health"

    const/4 v12, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 93
    .local v7, mBatteryHealth:I
    const-string v11, "STATUSBAR-BatteryController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onReceive() - BATTERY_STATUS_NOT_CHARGING:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const-string v11, "KOR"

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 96
    const/4 v11, 0x3

    if-eq v7, v11, :cond_4

    const/4 v11, 0x7

    if-ne v7, v11, :cond_5

    .line 98
    :cond_4
    const v5, 0x7f020253

    goto/16 :goto_1

    .line 101
    :cond_5
    const v5, 0x7f0200a7

    .line 103
    goto/16 :goto_1

    .line 107
    :cond_6
    const/4 v11, 0x5

    if-ne v7, v11, :cond_7

    .line 108
    const v5, 0x7f0200a7

    goto/16 :goto_1

    .line 110
    :cond_7
    const v5, 0x7f020253

    .line 113
    goto/16 :goto_1

    .line 117
    .end local v7           #mBatteryHealth:I
    :pswitch_3
    const-string v11, "STATUSBAR-BatteryController"

    const-string v12, "onReceive() - BATTERY_STATUS_FULL:"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const v5, 0x7f0200a7

    .line 119
    goto/16 :goto_1

    .line 121
    :pswitch_4
    const-string v11, "STATUSBAR-BatteryController"

    const-string v12, "onReceive() - BATTERY_STATUS_UNKNOWN:"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const v5, 0x7f0200a7

    .line 123
    goto/16 :goto_1

    .line 133
    :catch_0
    move-exception v3

    .line 134
    .local v3, e:Landroid/content/res/Resources$NotFoundException;
    const-string v8, "open"

    .restart local v8       #op:Ljava/lang/String;
    goto/16 :goto_2

    .line 151
    .end local v3           #e:Landroid/content/res/Resources$NotFoundException;
    .end local v8           #op:Ljava/lang/String;
    .restart local v1       #N:I
    .restart local v4       #i:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 152
    const/4 v4, 0x0

    :goto_4
    if-ge v4, v1, :cond_9

    .line 153
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 154
    .local v10, v:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    const v12, 0x7f0a0079

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 158
    .end local v1           #N:I
    .end local v4           #i:I
    .end local v5           #icon:I
    .end local v6           #level:I
    .end local v9           #plugged:I
    .end local v10           #v:Landroid/widget/TextView;
    :cond_9
    return-void

    .line 76
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
