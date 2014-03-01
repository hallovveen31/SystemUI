.class Lcom/android/systemui/sapps/SAppsPanelUI$1;
.super Ljava/lang/Object;
.source "SAppsPanelUI.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/sapps/SAppsPanelUI;->initTray()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/sapps/SAppsPanelUI;


# direct methods
.method constructor <init>(Lcom/android/systemui/sapps/SAppsPanelUI;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/systemui/sapps/SAppsPanelUI$1;->this$0:Lcom/android/systemui/sapps/SAppsPanelUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 156
    invoke-static {}, Lcom/android/systemui/sapps/SAppsPanelUI;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SAppsPanelUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI$1;->this$0:Lcom/android/systemui/sapps/SAppsPanelUI;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/sapps/SAppsPanelUI;->closeSAppsPanel(Z)V

    .line 161
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
