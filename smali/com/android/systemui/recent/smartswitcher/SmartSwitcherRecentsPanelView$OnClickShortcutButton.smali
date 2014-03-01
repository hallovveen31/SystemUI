.class final Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnClickShortcutButton;
.super Ljava/lang/Object;
.source "SmartSwitcherRecentsPanelView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnClickShortcutButton"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;)V
    .locals 0
    .parameter

    .prologue
    .line 818
    iput-object p1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnClickShortcutButton;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 818
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnClickShortcutButton;-><init>(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 822
    const/4 v2, 0x0

    .line 824
    .local v2, pos:I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 840
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnClickShortcutButton;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;

    #getter for: Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mShortcutComponentNames:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->access$1300(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 841
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 842
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnClickShortcutButton;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;

    #getter for: Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mShortcutComponentNames:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->access$1300(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 843
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 844
    const/high16 v3, 0x1020

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 845
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 847
    iget-object v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnClickShortcutButton;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;

    #getter for: Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->access$1400(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 848
    iget-object v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnClickShortcutButton;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->hide(Z)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 853
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    .line 826
    :sswitch_0
    const/4 v2, 0x0

    .line 827
    goto :goto_0

    .line 829
    :sswitch_1
    const/4 v2, 0x1

    .line 830
    goto :goto_0

    .line 832
    :sswitch_2
    const/4 v2, 0x2

    .line 833
    goto :goto_0

    .line 835
    :sswitch_3
    const/4 v2, 0x3

    goto :goto_0

    .line 850
    :catch_0
    move-exception v0

    .line 851
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v3, "SmartSwitcherRecentsPanelView"

    const-string v4, "Activity(ShortCut) Not Found"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 824
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d00fb -> :sswitch_0
        0x7f0d00fe -> :sswitch_1
        0x7f0d0101 -> :sswitch_2
        0x7f0d0104 -> :sswitch_3
    .end sparse-switch
.end method
