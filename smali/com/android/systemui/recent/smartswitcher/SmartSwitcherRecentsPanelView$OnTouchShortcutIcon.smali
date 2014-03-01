.class final Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnTouchShortcutIcon;
.super Ljava/lang/Object;
.source "SmartSwitcherRecentsPanelView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnTouchShortcutIcon"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;)V
    .locals 0
    .parameter

    .prologue
    .line 801
    iput-object p1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnTouchShortcutIcon;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 801
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnTouchShortcutIcon;-><init>(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    .line 804
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    .line 806
    .local v0, iv:Landroid/widget/ImageView;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 807
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 810
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 811
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 814
    :cond_1
    const/4 v1, 0x0

    return v1
.end method
