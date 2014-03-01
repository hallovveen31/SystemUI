.class Lcom/android/systemui/recent/smartswitcher/BaseContainer$5;
.super Ljava/lang/Object;
.source "BaseContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/smartswitcher/BaseContainer;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/smartswitcher/BaseContainer;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/smartswitcher/BaseContainer;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 783
    iput-object p1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$5;->this$0:Lcom/android/systemui/recent/smartswitcher/BaseContainer;

    iput-object p2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$5;->val$view:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 785
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$5;->this$0:Lcom/android/systemui/recent/smartswitcher/BaseContainer;

    iget-object v1, v1, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$5;->val$view:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 786
    .local v0, index:I
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$5;->this$0:Lcom/android/systemui/recent/smartswitcher/BaseContainer;

    iget v1, v1, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    if-le v0, v1, :cond_0

    .line 787
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$5;->this$0:Lcom/android/systemui/recent/smartswitcher/BaseContainer;

    #getter for: Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mCallback:Lcom/android/systemui/recent/RecentsCallback;
    invoke-static {v1}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->access$000(Lcom/android/systemui/recent/smartswitcher/BaseContainer;)Lcom/android/systemui/recent/RecentsCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$5;->val$view:Landroid/view/View;

    invoke-interface {v1, v2}, Lcom/android/systemui/recent/RecentsCallback;->handleOnClick(Landroid/view/View;)V

    .line 789
    :cond_0
    return-void
.end method
