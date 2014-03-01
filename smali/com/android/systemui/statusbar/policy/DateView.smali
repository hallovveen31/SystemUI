.class public final Lcom/android/systemui/statusbar/policy/DateView;
.super Landroid/widget/TextView;
.source "DateView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/DateView$FormatChangeObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DateView"


# instance fields
.field private mAttachedToWindow:Z

.field private mFormatChangeObserver:Landroid/database/ContentObserver;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mUpdateText:Z

.field private mUpdating:Z

.field private mWindowVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/DateView;->mUpdateText:Z

    .line 54
    new-instance v0, Lcom/android/systemui/statusbar/policy/DateView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/DateView$1;-><init>(Lcom/android/systemui/statusbar/policy/DateView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/DateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 72
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/DateView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mUpdateText:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/DateView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/DateView;->updateClock()V

    return-void
.end method

.method private static formatTimeStampStringDate(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 190
    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/DateView;->getCurrent_DATE_FORMAT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, value:Ljava/lang/String;
    const-string v1, "yyyy-MM-dd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 193
    const v1, 0x7f0a0061

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 199
    :cond_0
    :goto_0
    return-object v0

    .line 194
    :cond_1
    const-string v1, "dd-MM-yyyy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 195
    const v1, 0x7f0a0060

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 196
    :cond_2
    const-string v1, "MM-dd-yyyy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    const v1, 0x7f0a005f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getCurrent_DATE_FORMAT(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .parameter "context"

    .prologue
    .line 203
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    .local v5, result:Ljava/lang/StringBuilder;
    const-string v6, "yyyy"

    .line 205
    .local v6, year:Ljava/lang/String;
    const-string v4, "MM"

    .line 206
    .local v4, month:Ljava/lang/String;
    const-string v0, "dd"

    .line 207
    .local v0, day:Ljava/lang/String;
    const-string v1, "-"

    .line 209
    .local v1, divider:Ljava/lang/String;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v2

    .line 211
    .local v2, formatArray:[C
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v7, v2

    if-ge v3, v7, :cond_4

    .line 213
    aget-char v7, v2, v3

    const/16 v8, 0x79

    if-ne v7, v8, :cond_0

    .line 214
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    :cond_0
    aget-char v7, v2, v3

    const/16 v8, 0x4d

    if-ne v7, v8, :cond_1

    .line 218
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    :cond_1
    aget-char v7, v2, v3

    const/16 v8, 0x64

    if-ne v7, v8, :cond_2

    .line 222
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    :cond_2
    array-length v7, v2

    add-int/lit8 v7, v7, -0x1

    if-eq v3, v7, :cond_3

    .line 226
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 229
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private isVisible()Z
    .locals 3

    .prologue
    .line 135
    move-object v1, p0

    .line 137
    .local v1, v:Landroid/view/View;
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    const/4 v2, 0x0

    .line 144
    :goto_1
    return v2

    .line 140
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 141
    .local v0, parent:Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 142
    check-cast v1, Landroid/view/View;

    goto :goto_0

    .line 144
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private setUpdates()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 150
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/DateView;->mAttachedToWindow:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/DateView;->mWindowVisible:Z

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/DateView;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    .line 151
    .local v1, update:Z
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/DateView;->mUpdating:Z

    if-eq v1, v3, :cond_0

    .line 152
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mUpdating:Z

    .line 153
    if-eqz v1, :cond_2

    .line 155
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 156
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    const-string v3, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/DateView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/DateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0, v5, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 162
    new-instance v3, Lcom/android/systemui/statusbar/policy/DateView$FormatChangeObserver;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/DateView$FormatChangeObserver;-><init>(Lcom/android/systemui/statusbar/policy/DateView;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/DateView;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 163
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/DateView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/DateView;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 166
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/DateView;->updateClock()V

    .line 174
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    :goto_1
    return-void

    .line 150
    .end local v1           #update:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 168
    .restart local v1       #update:Z
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DateView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/DateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 170
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DateView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/DateView;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_1
.end method

.method private final updateClock()V
    .locals 12

    .prologue
    const v11, 0x7f0a0059

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 108
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 109
    .local v0, context:Landroid/content/Context;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 110
    .local v3, now:Ljava/util/Date;
    const-string v5, "EEEE"

    invoke-static {v5, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 111
    .local v2, dow:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/format/DateFormat;->getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, date:Ljava/lang/CharSequence;
    const-string v5, "DateView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dow = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " date = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " current Format : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/DateView;->getCurrent_DATE_FORMAT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->useTouchWizGUI:Z

    if-eqz v5, :cond_0

    .line 116
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/DateView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/DateView;->formatTimeStampStringDate(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 117
    .local v4, value:Ljava/lang/String;
    invoke-static {v4, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 122
    .end local v4           #value:Ljava/lang/String;
    :cond_0
    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->useTouchWizGUI:Z

    if-eqz v5, :cond_2

    .line 123
    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->canStatusBarHide:Z

    if-eqz v5, :cond_1

    .line 124
    new-array v5, v10, [Ljava/lang/Object;

    aput-object v2, v5, v8

    aput-object v1, v5, v9

    invoke-virtual {v0, v11, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/DateView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    :goto_0
    return-void

    .line 126
    :cond_1
    const v5, 0x7f0a005a

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v2, v6, v8

    aput-object v1, v6, v9

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/DateView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 129
    :cond_2
    new-array v5, v10, [Ljava/lang/Object;

    aput-object v2, v5, v8

    aput-object v1, v5, v9

    invoke-virtual {v0, v11, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/DateView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected getSuggestedMinimumWidth()I
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/DateView;->mAttachedToWindow:Z

    .line 78
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/DateView;->setUpdates()V

    .line 79
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/DateView;->mAttachedToWindow:Z

    .line 85
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/DateView;->setUpdates()V

    .line 86
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 97
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 98
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/DateView;->setUpdates()V

    .line 99
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/widget/TextView;->onWindowVisibilityChanged(I)V

    .line 91
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/DateView;->mWindowVisible:Z

    .line 92
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/DateView;->setUpdates()V

    .line 93
    return-void

    .line 91
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateText()V
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/DateView;->mUpdateText:Z

    if-eqz v0, :cond_0

    .line 236
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/DateView;->updateClock()V

    .line 238
    :cond_0
    return-void
.end method
