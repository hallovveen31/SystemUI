.class Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$4;
.super Ljava/lang/Object;
.source "SmartSwitcherRecentsPanelView.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->handleLongPress(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;

.field final synthetic val$thumbnailView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1240
    iput-object p1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$4;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;

    iput-object p2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$4;->val$thumbnailView:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 1242
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$4;->val$thumbnailView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 1243
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$4;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;

    const/4 v1, 0x0

    #setter for: Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mPopup:Landroid/widget/PopupMenu;
    invoke-static {v0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->access$1902(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;Landroid/widget/PopupMenu;)Landroid/widget/PopupMenu;

    .line 1244
    return-void
.end method
