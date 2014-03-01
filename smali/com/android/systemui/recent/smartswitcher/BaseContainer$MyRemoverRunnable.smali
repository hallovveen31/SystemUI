.class Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRemoverRunnable;
.super Ljava/lang/Object;
.source "BaseContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/smartswitcher/BaseContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyRemoverRunnable"
.end annotation


# instance fields
.field animate:Z

.field index:I

.field next:Landroid/view/View;

.field scrollStep:F

.field scrollTo:F

.field final synthetic this$0:Lcom/android/systemui/recent/smartswitcher/BaseContainer;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/smartswitcher/BaseContainer;IFI)V
    .locals 2
    .parameter
    .parameter "index"
    .parameter "pos"
    .parameter "s"

    .prologue
    const/4 v1, 0x0

    .line 227
    iput-object p1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRemoverRunnable;->this$0:Lcom/android/systemui/recent/smartswitcher/BaseContainer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput v1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRemoverRunnable;->scrollStep:F

    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRemoverRunnable;->animate:Z

    .line 228
    int-to-float v0, p4

    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRemoverRunnable;->scrollStep:F

    .line 229
    iget v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRemoverRunnable;->scrollStep:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 230
    const/high16 v0, -0x3ea0

    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRemoverRunnable;->scrollStep:F

    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRemoverRunnable;->animate:Z

    .line 233
    :cond_0
    iput p2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRemoverRunnable;->index:I

    .line 234
    iput p3, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRemoverRunnable;->scrollTo:F

    .line 235
    iget-object v0, p1, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRemoverRunnable;->next:Landroid/view/View;

    .line 236
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 240
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRemoverRunnable;->this$0:Lcom/android/systemui/recent/smartswitcher/BaseContainer;

    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRemoverRunnable;->next:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRemoverRunnable;->scrollStep:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRemoverRunnable;->scrollTo:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 241
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRemoverRunnable;->this$0:Lcom/android/systemui/recent/smartswitcher/BaseContainer;

    iget v1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRemoverRunnable;->scrollStep:F

    iget v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRemoverRunnable;->index:I

    add-int/lit8 v2, v2, -0x1

    iget-boolean v3, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRemoverRunnable;->animate:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->customDoScroll(FIZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    iget-boolean v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRemoverRunnable;->animate:Z

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRemoverRunnable;->this$0:Lcom/android/systemui/recent/smartswitcher/BaseContainer;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 251
    :cond_1
    :goto_0
    return-void

    .line 249
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRemoverRunnable;->this$0:Lcom/android/systemui/recent/smartswitcher/BaseContainer;

    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRemoverRunnable;->next:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRemoverRunnable;->scrollStep:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRemoverRunnable;->scrollTo:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRemoverRunnable;->this$0:Lcom/android/systemui/recent/smartswitcher/BaseContainer;

    iget v1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRemoverRunnable;->scrollTo:F

    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRemoverRunnable;->this$0:Lcom/android/systemui/recent/smartswitcher/BaseContainer;

    iget-object v3, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRemoverRunnable;->next:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRemoverRunnable;->index:I

    add-int/lit8 v2, v2, -0x1

    iget-boolean v3, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRemoverRunnable;->animate:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->customDoScroll(FIZ)Z

    goto :goto_0
.end method
