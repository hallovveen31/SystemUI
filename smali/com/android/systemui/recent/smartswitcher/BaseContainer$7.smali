.class Lcom/android/systemui/recent/smartswitcher/BaseContainer$7;
.super Ljava/lang/Object;
.source "BaseContainer.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/smartswitcher/BaseContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 821
    iput-object p1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$7;->this$0:Lcom/android/systemui/recent/smartswitcher/BaseContainer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 823
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 824
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$7;->this$0:Lcom/android/systemui/recent/smartswitcher/BaseContainer;

    #getter for: Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mCallback:Lcom/android/systemui/recent/RecentsCallback;
    invoke-static {v0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->access$000(Lcom/android/systemui/recent/smartswitcher/BaseContainer;)Lcom/android/systemui/recent/RecentsCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/recent/RecentsCallback;->dismiss()V

    .line 825
    const/4 v0, 0x1

    .line 827
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
