.class final Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnLongClickDelegate;
.super Ljava/lang/Object;
.source "SmartSwitcherRecentsPanelView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnLongClickDelegate"
.end annotation


# instance fields
.field mOtherView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter "other"

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnLongClickDelegate;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput-object p2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnLongClickDelegate;->mOtherView:Landroid/view/View;

    .line 189
    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnLongClickDelegate;->mOtherView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performLongClick()Z

    move-result v0

    return v0
.end method
