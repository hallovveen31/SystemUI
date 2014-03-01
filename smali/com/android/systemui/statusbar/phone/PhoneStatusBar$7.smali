.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 640
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 642
    const-string v3, "STATUSBAR-PhoneStatusBar"

    const-string v4, "onClick() : mClock clicked"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    const-string v3, "ro.build.characteristics"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 646
    .local v1, deviceType:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v3, "tablet"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 647
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SHOW_DATE_TIME_DIALOG"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 648
    .local v2, i:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v3, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 658
    :goto_0
    return-void

    .line 650
    .end local v2           #i:Landroid/content/Intent;
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SHOW_WORLDCLOCK_DIALOG"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 651
    .restart local v2       #i:Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.app.clockpackage"

    const-string v4, "com.sec.android.app.clockpackage.worldclock.ToWorldClockReceiver"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    .local v0, cn:Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 654
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->val$context:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
