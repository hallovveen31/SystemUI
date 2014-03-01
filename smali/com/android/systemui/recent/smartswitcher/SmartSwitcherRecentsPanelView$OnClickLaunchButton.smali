.class final Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnClickLaunchButton;
.super Ljava/lang/Object;
.source "SmartSwitcherRecentsPanelView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnClickLaunchButton"
.end annotation


# instance fields
.field final CLASS_NAME:Ljava/lang/String;

.field final PACKAGE_NAME:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;)V
    .locals 1
    .parameter

    .prologue
    .line 1277
    iput-object p1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnClickLaunchButton;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1278
    const-string v0, "com.sec.android.app.controlpanel"

    iput-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnClickLaunchButton;->PACKAGE_NAME:Ljava/lang/String;

    .line 1279
    const-string v0, "com.sec.android.app.controlpanel.activity.JobManagerActivity"

    iput-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnClickLaunchButton;->CLASS_NAME:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1277
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnClickLaunchButton;-><init>(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 1284
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnClickLaunchButton;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->sendAccessibilityEvent(I)V

    .line 1286
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1287
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1288
    const v2, 0x10004000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1289
    const-string v2, "com.sec.android.app.controlpanel"

    const-string v3, "com.sec.android.app.controlpanel.activity.JobManagerActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1290
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnClickLaunchButton;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;

    #getter for: Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->access$1400(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1291
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnClickLaunchButton;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->hide(Z)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1295
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 1292
    :catch_0
    move-exception v0

    .line 1293
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "SmartSwitcherRecentsPanelView"

    const-string v3, "Activity Not Found"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
