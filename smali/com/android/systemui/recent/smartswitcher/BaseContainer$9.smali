.class Lcom/android/systemui/recent/smartswitcher/BaseContainer$9;
.super Ljava/lang/Object;
.source "BaseContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/smartswitcher/BaseContainer;->onVisibilityChanged(Landroid/view/View;I)V
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
    .line 1085
    iput-object p1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$9;->this$0:Lcom/android/systemui/recent/smartswitcher/BaseContainer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$9;->this$0:Lcom/android/systemui/recent/smartswitcher/BaseContainer;

    #calls: Lcom/android/systemui/recent/smartswitcher/BaseContainer;->update()V
    invoke-static {v0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->access$200(Lcom/android/systemui/recent/smartswitcher/BaseContainer;)V

    .line 1088
    return-void
.end method
