.class Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsVerticalScrollView$1;
.super Ljava/lang/Object;
.source "SmartSwitcherRecentsVerticalScrollView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsVerticalScrollView;->createTopStackOutAnimation()Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsVerticalScrollView;

.field final synthetic val$scaleTo:F

.field final synthetic val$scroll_diff:I

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsVerticalScrollView;Landroid/view/View;IF)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsVerticalScrollView$1;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsVerticalScrollView;

    iput-object p2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsVerticalScrollView$1;->val$v:Landroid/view/View;

    iput p3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsVerticalScrollView$1;->val$scroll_diff:I

    iput p4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsVerticalScrollView$1;->val$scaleTo:F

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 130
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 127
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "animation"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsVerticalScrollView$1;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsVerticalScrollView;

    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsVerticalScrollView$1;->val$v:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsVerticalScrollView$1;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsVerticalScrollView;

    iget-object v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsVerticalScrollView$1;->val$v:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsVerticalScrollView;->getScrollPosition(Landroid/view/View;)F

    move-result v2

    iget v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsVerticalScrollView$1;->val$scroll_diff:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsVerticalScrollView;->setScrollPosition(Landroid/view/View;F)V

    .line 122
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsVerticalScrollView$1;->val$v:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsVerticalScrollView$1;->val$scaleTo:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 123
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsVerticalScrollView$1;->val$v:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsVerticalScrollView$1;->val$scaleTo:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 124
    return-void
.end method
