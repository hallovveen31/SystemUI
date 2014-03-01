.class Lcom/android/systemui/recent/smartswitcher/BaseContainer$6;
.super Ljava/lang/Object;
.source "BaseContainer.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 811
    iput-object p1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$6;->this$0:Lcom/android/systemui/recent/smartswitcher/BaseContainer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .parameter "view"
    .parameter "focus"

    .prologue
    .line 813
    if-eqz p2, :cond_0

    .line 814
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 818
    :goto_0
    return-void

    .line 816
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0
.end method
