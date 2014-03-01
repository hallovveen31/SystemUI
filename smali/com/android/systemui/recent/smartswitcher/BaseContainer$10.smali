.class Lcom/android/systemui/recent/smartswitcher/BaseContainer$10;
.super Landroid/database/DataSetObserver;
.source "BaseContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/smartswitcher/BaseContainer;->setAdapter(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$TaskDescriptionAdapter;)V
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
    .line 1095
    iput-object p1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$10;->this$0:Lcom/android/systemui/recent/smartswitcher/BaseContainer;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$10;->this$0:Lcom/android/systemui/recent/smartswitcher/BaseContainer;

    #calls: Lcom/android/systemui/recent/smartswitcher/BaseContainer;->update()V
    invoke-static {v0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->access$200(Lcom/android/systemui/recent/smartswitcher/BaseContainer;)V

    .line 1098
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$10;->this$0:Lcom/android/systemui/recent/smartswitcher/BaseContainer;

    #calls: Lcom/android/systemui/recent/smartswitcher/BaseContainer;->update()V
    invoke-static {v0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->access$200(Lcom/android/systemui/recent/smartswitcher/BaseContainer;)V

    .line 1102
    return-void
.end method
