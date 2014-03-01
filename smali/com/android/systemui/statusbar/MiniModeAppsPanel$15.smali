.class Lcom/android/systemui/statusbar/MiniModeAppsPanel$15;
.super Ljava/lang/Object;
.source "MiniModeAppsPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/MiniModeAppsPanel;->addViewToEditPanel(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

.field final synthetic val$centerY:I

.field final synthetic val$yOffsetAtTop:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1555
    iput-object p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$15;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iput p2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$15;->val$yOffsetAtTop:I

    iput p3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$15;->val$centerY:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1558
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$15;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4100(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/FrameLayout;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$15;->val$yOffsetAtTop:I

    iget v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$15;->val$centerY:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 1559
    return-void
.end method
