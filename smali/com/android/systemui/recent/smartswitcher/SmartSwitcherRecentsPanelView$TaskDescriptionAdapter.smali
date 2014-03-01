.class final Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$TaskDescriptionAdapter;
.super Landroid/widget/BaseAdapter;
.source "SmartSwitcherRecentsPanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TaskDescriptionAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 210
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$TaskDescriptionAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 211
    return-void
.end method


# virtual methods
.method public createView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 226
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$TaskDescriptionAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;

    #getter for: Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentItemLayoutId:I
    invoke-static {v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->access$100(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;)I

    move-result v3

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 227
    .local v0, convertView:Landroid/view/View;
    new-instance v1, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;

    invoke-direct {v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;-><init>()V

    .line 228
    .local v1, holder:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;
    const v2, 0x7f0d0083

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;->shadowViewImage:Landroid/widget/ImageView;

    .line 229
    const v2, 0x7f0d007b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    .line 233
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;

    #getter for: Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;
    invoke-static {v2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->access$200(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;)Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 234
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;

    iget-object v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;

    #getter for: Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;
    invoke-static {v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->access$200(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;)Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->getDefaultThumbnail()Landroid/graphics/Bitmap;

    move-result-object v3

    #calls: Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->updateThumbnail(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;Landroid/graphics/Bitmap;ZZ)V
    invoke-static {v2, v1, v3, v4, v4}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->access$300(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;Landroid/graphics/Bitmap;ZZ)V

    .line 236
    :cond_0
    const v2, 0x7f0d0057

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    .line 237
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;

    #getter for: Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;
    invoke-static {v2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->access$200(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;)Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 238
    iget-object v2, v1, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;

    #getter for: Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;
    invoke-static {v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->access$200(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;)Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 240
    :cond_1
    const v2, 0x7f0d0058

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;->labelView:Landroid/widget/TextView;

    .line 241
    const v2, 0x7f0d0085

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;->deleteView:Landroid/widget/ImageView;

    .line 243
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 244
    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;

    #getter for: Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->access$000(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;

    #getter for: Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->access$000(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 218
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 222
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 248
    const-string v3, "MIK"

    const-string v4, "getView"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    if-eqz p2, :cond_0

    .line 250
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$TaskDescriptionAdapter;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 251
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 252
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Recycled child has parent"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 259
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;

    .line 262
    .local v0, holder:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;
    move v1, p1

    .line 264
    .local v1, index:I
    iget-object v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;

    #getter for: Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->access$000(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recent/TaskDescription;

    .line 266
    .local v2, td:Lcom/android/systemui/recent/TaskDescription;
    iget-object v3, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;->labelView:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/android/systemui/recent/TaskDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    invoke-virtual {v2}, Lcom/android/systemui/recent/TaskDescription;->isLoaded()Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;->loadedThumbnailAndIcon:Z

    .line 268
    invoke-virtual {v2}, Lcom/android/systemui/recent/TaskDescription;->isLoaded()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 269
    iget-object v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/recent/TaskDescription;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v4

    #calls: Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->updateThumbnail(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;Landroid/graphics/Bitmap;ZZ)V
    invoke-static {v3, v0, v4, v6, v5}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->access$300(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;Landroid/graphics/Bitmap;ZZ)V

    .line 270
    iget-object v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/recent/TaskDescription;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    #calls: Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->updateIcon(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;Landroid/graphics/drawable/Drawable;ZZ)V
    invoke-static {v3, v0, v4, v6, v5}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->access$400(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;Landroid/graphics/drawable/Drawable;ZZ)V

    .line 271
    iget-object v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$TaskDescriptionAdapter;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;

    invoke-static {v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->access$510(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;)I

    .line 274
    :cond_2
    iget-object v3, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 275
    iget-object v3, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    const/high16 v4, -0x100

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 277
    iput-object v2, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;->taskDescription:Lcom/android/systemui/recent/TaskDescription;

    .line 278
    return-object p2
.end method

.method public recycleView(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 282
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 301
    return-void
.end method
