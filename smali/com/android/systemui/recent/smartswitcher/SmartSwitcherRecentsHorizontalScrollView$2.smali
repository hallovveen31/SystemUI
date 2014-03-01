.class Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsHorizontalScrollView$2;
.super Ljava/lang/Object;
.source "SmartSwitcherRecentsHorizontalScrollView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsHorizontalScrollView;->createBottomStackOutAnimation()Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsHorizontalScrollView;

.field final synthetic val$v:Landroid/view/View;

.field final synthetic val$ydiff:I


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsHorizontalScrollView;Landroid/view/View;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsHorizontalScrollView$2;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsHorizontalScrollView;

    iput-object p2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsHorizontalScrollView$2;->val$v:Landroid/view/View;

    iput p3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsHorizontalScrollView$2;->val$ydiff:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 178
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 175
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "animation"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsHorizontalScrollView$2;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsHorizontalScrollView;

    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsHorizontalScrollView$2;->val$v:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsHorizontalScrollView$2;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsHorizontalScrollView;

    iget-object v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsHorizontalScrollView$2;->val$v:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsHorizontalScrollView;->getScrollPosition(Landroid/view/View;)F

    move-result v2

    iget v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsHorizontalScrollView$2;->val$ydiff:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsHorizontalScrollView;->setScrollPosition(Landroid/view/View;F)V

    .line 172
    return-void
.end method
