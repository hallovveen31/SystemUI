.class final Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;
.super Ljava/lang/Object;
.source "SmartSwitcherRecentsPanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ViewHolder"
.end annotation


# instance fields
.field deleteView:Landroid/widget/ImageView;

.field iconView:Landroid/widget/ImageView;

.field labelView:Landroid/widget/TextView;

.field loadedThumbnailAndIcon:Z

.field shadowViewImage:Landroid/widget/ImageView;

.field taskDescription:Lcom/android/systemui/recent/TaskDescription;

.field thumbnailImageView:Landroid/widget/ImageView;

.field thumbnailViewImageBitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 195
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
