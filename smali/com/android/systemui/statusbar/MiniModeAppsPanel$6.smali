.class Lcom/android/systemui/statusbar/MiniModeAppsPanel$6;
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
    .line 1026
    iput-object p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$6;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 1028
    const-string v0, "MiniModeAppsPanel"

    const-string v1, "mDoneButton : OnClickListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$6;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #calls: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->save()Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3200(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Z

    .line 1030
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$6;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #calls: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->closeEditPanel()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$2400(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    .line 1031
    return-void
.end method
