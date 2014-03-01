.class Lcom/android/systemui/statusbar/tablet/TabletStatusBar$BrightnessEnableObserver;
.super Landroid/database/ContentObserver;
.source "TabletStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/tablet/TabletStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrightnessEnableObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V
    .locals 1
    .parameter

    .prologue
    .line 2987
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$BrightnessEnableObserver;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    .line 2988
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2989
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    const/4 v0, 0x1

    .line 2993
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2995
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$BrightnessEnableObserver;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$BrightnessEnableObserver;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$5800(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "notification_panel_brightness_adjustment"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    #setter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBrightnessEnablebySettings:Z
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$5702(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Z)Z

    .line 2996
    const-string v0, "TabletStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BrightnessEnableObserver.onChange() - DB = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$BrightnessEnableObserver;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBrightnessEnablebySettings:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$5700(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2998
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$BrightnessEnableObserver;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$BrightnessEnableObserver;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBrightnessEnablebySettings:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$5700(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Z

    move-result v1

    #calls: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->setBrightnessControllerVisivility(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$5900(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Z)V

    .line 2999
    return-void

    .line 2995
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
