.class Lcom/android/systemui/statusbar/MiniModeAppsPanel$12;
.super Ljava/lang/Object;
.source "MiniModeAppsPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/MiniModeAppsPanel;->onFinishInflate()V
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
    .line 1156
    iput-object p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$12;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 1158
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$12;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;
    invoke-static {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3700(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/BaseStatusBar;

    move-result-object v1

    instance-of v1, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    if-eqz v1, :cond_0

    .line 1159
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$12;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;
    invoke-static {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3700(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/BaseStatusBar;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->animateCollapse()V

    .line 1163
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1164
    .local v0, helpIntent:Landroid/content/Intent;
    const/high16 v1, 0x1020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1165
    const-string v1, "category"

    const-string v2, "multiwindow"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1166
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$12;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1167
    return-void
.end method
