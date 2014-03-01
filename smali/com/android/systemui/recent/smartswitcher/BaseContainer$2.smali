.class Lcom/android/systemui/recent/smartswitcher/BaseContainer$2;
.super Ljava/lang/Object;
.source "BaseContainer.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/smartswitcher/BaseContainer;->doScroll(F)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/smartswitcher/BaseContainer;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/smartswitcher/BaseContainer;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 533
    iput-object p1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$2;->this$0:Lcom/android/systemui/recent/smartswitcher/BaseContainer;

    iput-object p2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$2;->val$v:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$2;->this$0:Lcom/android/systemui/recent/smartswitcher/BaseContainer;

    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$2;->val$v:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->optHide(Landroid/view/View;)V

    .line 546
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 541
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 537
    return-void
.end method
